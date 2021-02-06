.class public final Lcom/android/server/am/ActivityManagerService$LocalService;
.super Landroid/app/ActivityManagerInternal;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 20849
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/app/ActivityManagerInternal;-><init>()V

    return-void
.end method

.method private isSplitConfigurationChange(I)Z
    .locals 1
    .param p1, "configDiff"    # I

    .line 21532
    and-int/lit16 v0, p1, 0x1004

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public addPendingTopUid(II)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 21704
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2100(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PendingStartActivityUids;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/PendingStartActivityUids;->add(II)V

    .line 21705
    return-void
.end method

.method public broadcastCloseSystemDialogs(Ljava/lang/String;)V
    .locals 25
    .param p1, "reason"    # Ljava/lang/String;

    .line 21537
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21538
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21539
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v4, 0x50000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21541
    if-eqz v2, :cond_0

    .line 21542
    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21545
    :cond_0
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x3e8

    .line 21546
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    .line 21547
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v23

    const/16 v24, -0x1

    .line 21545
    move-object v9, v0

    invoke-virtual/range {v5 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 21548
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21549
    return-void

    .line 21548
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastGlobalConfigurationChanged(IZ)V
    .locals 26
    .param p1, "changes"    # I
    .param p2, "initLocale"    # Z

    .line 21480
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21481
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 21484
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 21485
    .local v3, "config":Landroid/content/res/Configuration;
    if-eqz v3, :cond_0

    .line 21486
    const-string v4, "font_scale"

    iget v5, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 21487
    const-string v4, "density_dpi"

    iget v5, v3, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 21490
    :cond_0
    const/high16 v4, 0x70200000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21494
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    sget v19, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v20, 0x3e8

    .line 21495
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    .line 21496
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    const/16 v23, -0x1

    .line 21494
    move-object v8, v0

    invoke-virtual/range {v4 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 21497
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_3

    .line 21498
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 21499
    const/high16 v4, 0x11200000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21502
    if-nez p2, :cond_1

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v4, :cond_2

    .line 21503
    :cond_1
    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21505
    :cond_2
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v22, 0x3e8

    .line 21506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 21507
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    const/16 v25, -0x1

    .line 21505
    move-object v10, v0

    invoke-virtual/range {v6 .. v25}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 21512
    :cond_3
    if-nez p2, :cond_4

    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityManagerService$LocalService;->isSplitConfigurationChange(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 21513
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SPLIT_CONFIGURATION_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    .line 21514
    const/high16 v4, 0x21000000

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21518
    const-string v4, "android.permission.INSTALL_PACKAGES"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v16

    .line 21520
    .local v16, "permissions":[Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    sget v21, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v22, 0x3e8

    .line 21522
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v24

    const/16 v25, -0x1

    .line 21520
    move-object v10, v0

    invoke-virtual/range {v6 .. v25}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIII)I

    .line 21524
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v16    # "permissions":[Ljava/lang/String;
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21525
    return-void

    .line 21524
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[I)I
    .locals 27
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p3, "requiredPermissions"    # [Ljava/lang/String;
    .param p4, "serialized"    # Z
    .param p5, "userId"    # I
    .param p6, "appIdWhitelist"    # [I

    .line 21362
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21363
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v3, p1

    :try_start_1
    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->verifyBroadcastLocked(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21365
    .end local p1    # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v18

    .line 21366
    .local v18, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    .line 21367
    .local v19, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide/from16 v25, v3

    .line 21369
    .local v25, "origId":J
    :try_start_3
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v23, 0x0

    move-object/from16 v9, p2

    move-object/from16 v13, p3

    move/from16 v16, p4

    move/from16 v20, v19

    move/from16 v21, v18

    move/from16 v22, p5

    move-object/from16 v24, p6

    invoke-virtual/range {v3 .. v24}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIIIIIZ[I)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21377
    :try_start_4
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 21369
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 21377
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-static/range {v25 .. v26}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21378
    nop

    .end local v7    # "intent":Landroid/content/Intent;
    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p2    # "resultTo":Landroid/content/IIntentReceiver;
    .end local p3    # "requiredPermissions":[Ljava/lang/String;
    .end local p4    # "serialized":Z
    .end local p5    # "userId":I
    .end local p6    # "appIdWhitelist":[I
    throw v0

    .line 21379
    .end local v18    # "callingPid":I
    .end local v19    # "callingUid":I
    .end local v25    # "origId":J
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "intent":Landroid/content/Intent;
    .restart local p2    # "resultTo":Landroid/content/IIntentReceiver;
    .restart local p3    # "requiredPermissions":[Ljava/lang/String;
    .restart local p4    # "serialized":Z
    .restart local p5    # "userId":I
    .restart local p6    # "appIdWhitelist":[I
    :catchall_1
    move-exception v0

    goto :goto_0

    :catchall_2
    move-exception v0

    move-object/from16 v3, p1

    :goto_0
    move-object v7, v3

    .end local p1    # "intent":Landroid/content/Intent;
    .restart local v7    # "intent":Landroid/content/Intent;
    :goto_1
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_1
.end method

.method public broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I
    .locals 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "featureId"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "realCallingUid"    # I
    .param p5, "realCallingPid"    # I
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "resolvedType"    # Ljava/lang/String;
    .param p8, "resultTo"    # Landroid/content/IIntentReceiver;
    .param p9, "resultCode"    # I
    .param p10, "resultData"    # Ljava/lang/String;
    .param p11, "resultExtras"    # Landroid/os/Bundle;
    .param p12, "requiredPermission"    # Ljava/lang/String;
    .param p13, "bOptions"    # Landroid/os/Bundle;
    .param p14, "serialized"    # Z
    .param p15, "sticky"    # Z
    .param p16, "userId"    # I
    .param p17, "allowBackgroundActivityStarts"    # Z

    .line 21349
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21350
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move/from16 v20, p17

    invoke-virtual/range {v3 .. v20}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    move-result v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 21354
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public canStartMoreUsers()Z
    .locals 1

    .line 21074
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->canStartMoreUsers()Z

    move-result v0

    return v0
.end method

.method public checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 20852
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->checkContentProviderAccess(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public checkContentProviderUriPermission(Landroid/net/Uri;III)I
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "userId"    # I
    .param p3, "callingUid"    # I
    .param p4, "modeFlags"    # I

    .line 20858
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkContentProviderUriPermission(Landroid/net/Uri;III)I

    move-result v0

    return v0
.end method

.method public cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "baseIntent"    # Landroid/content/Intent;

    .line 21419
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21420
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/am/ActiveServices;->cleanUpServices(ILandroid/content/ComponentName;Landroid/content/Intent;)V

    .line 21421
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21422
    return-void

    .line 21421
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearPendingBackup(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 21634
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1900(Lcom/android/server/am/ActivityManagerService;I)V

    .line 21635
    return-void
.end method

.method public clearPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "whitelistToken"    # Landroid/os/IBinder;

    .line 20949
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 20950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20952
    return-void

    .line 20954
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20955
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2}, Lcom/android/server/am/PendingIntentRecord;->clearAllowBgActivityStarts(Landroid/os/IBinder;)V

    .line 20956
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 20957
    return-void

    .line 20956
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public deletePendingTopUid(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 21709
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2100(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PendingStartActivityUids;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/PendingStartActivityUids;->delete(I)V

    .line 21710
    return-void
.end method

.method public disconnectActivityFromServices(Ljava/lang/Object;)V
    .locals 3
    .param p1, "connectionHolder"    # Ljava/lang/Object;

    .line 21410
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 21412
    .local v0, "holder":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21413
    new-instance v2, Lcom/android/server/am/-$$Lambda$ActivityManagerService$LocalService$2LeEPdXnhP_I5Tz5a2OSkhUL0oc;

    invoke-direct {v2, p0, v0}, Lcom/android/server/am/-$$Lambda$ActivityManagerService$LocalService$2LeEPdXnhP_I5Tz5a2OSkhUL0oc;-><init>(Lcom/android/server/am/ActivityManagerService$LocalService;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->forEachConnection(Ljava/util/function/Consumer;)V

    .line 21415
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21416
    return-void

    .line 21415
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "func"    # Ljava/lang/String;

    .line 21121
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 21122
    return-void
.end method

.method public ensureBootCompleted()V
    .locals 1

    .line 21431
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    .line 21432
    return-void
.end method

.method public ensureNotSpecialUser(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 21264
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->ensureNotSpecialUser(I)V

    .line 21265
    return-void
.end method

.method public finishBooting()V
    .locals 1

    .line 21331
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 21332
    return-void
.end method

.method public finishUserSwitch(Ljava/lang/Object;)V
    .locals 2
    .param p1, "uss"    # Ljava/lang/Object;

    .line 21279
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/UserState;

    invoke-virtual {v0, v1}, Lcom/android/server/am/UserController;->finishUserSwitch(Lcom/android/server/am/UserState;)V

    .line 21280
    return-void
.end method

.method public getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "userId"    # I

    .line 21426
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getActivityPresentationInfo(Landroid/os/IBinder;)Landroid/content/pm/ActivityPresentationInfo;
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 21298
    const/4 v0, -0x1

    .line 21300
    .local v0, "displayId":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getDisplayId(Landroid/os/IBinder;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 21302
    goto :goto_0

    .line 21301
    :catch_0
    move-exception v1

    .line 21304
    :goto_0
    new-instance v1, Landroid/content/pm/ActivityPresentationInfo;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 21306
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Landroid/content/pm/ActivityPresentationInfo;-><init>(IILandroid/content/ComponentName;)V

    .line 21304
    return-object v1
.end method

.method public getCurrentProfileIds()[I
    .locals 1

    .line 21254
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentProfileIds()[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 1

    .line 21259
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserId()I
    .locals 1

    .line 21126
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getMaxRunningUsers()I
    .locals 1

    .line 21089
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getMaxRunningUsers()I

    move-result v0

    return v0
.end method

.method public getMemoryStateForProcesses()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ProcessMemoryState;",
            ">;"
        }
    .end annotation

    .line 21101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21102
    .local v0, "processMemoryStates":Ljava/util/List;, "Ljava/util/List<Landroid/app/ProcessMemoryState;>;"
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1

    .line 21103
    const/4 v2, 0x0

    .local v2, "i":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 21104
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    .line 21105
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    new-instance v5, Landroid/app/ProcessMemoryState;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v9, v4, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/app/ProcessMemoryState;-><init>(IILjava/lang/String;I)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21103
    nop

    .end local v4    # "r":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21108
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_0
    monitor-exit v1

    .line 21109
    return-object v0

    .line 21108
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 20982
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->getProcessesWithPendingBindMounts(I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getStorageMountMode(II)I
    .locals 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 21613
    const/16 v0, 0x7d0

    if-eq p2, v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 21616
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 21617
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 21618
    .local v1, "pr":Lcom/android/server/am/ProcessRecord;
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->mountMode:I

    :goto_0
    monitor-exit v0

    return v2

    .line 21619
    .end local v1    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 21614
    :cond_2
    :goto_1
    const/4 v0, 0x6

    return v0
.end method

.method public getTaskIdForActivity(Landroid/os/IBinder;Z)I
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "onlyRoot"    # Z

    .line 21291
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21292
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getTaskForActivity(Landroid/os/IBinder;Z)I

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 21293
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getUidProcessState(I)I
    .locals 1
    .param p1, "uid"    # I

    .line 20977
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getUidState(I)I

    move-result v0

    return v0
.end method

.method public handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I
    .locals 10
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "userId"    # I
    .param p4, "allowAll"    # Z
    .param p5, "allowMode"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "callerPackage"    # Ljava/lang/String;

    .line 21115
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/UserController;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public hasRunningActivity(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 21177
    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 21179
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21180
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 21181
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 21182
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v4, p1, :cond_1

    .line 21183
    goto :goto_1

    .line 21185
    :cond_1
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/wm/WindowProcessController;->hasRunningActivity(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 21186
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    return v0

    .line 21180
    .end local v3    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21189
    .end local v2    # "i":I
    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21190
    return v0

    .line 21189
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public hasRunningForegroundService(II)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "foregroundServicetype"    # I

    .line 21648
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21649
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 21650
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 21651
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, p1, :cond_0

    .line 21652
    goto :goto_1

    .line 21655
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getForegroundServiceTypes()I

    move-result v3

    and-int/2addr v3, p2

    if-eqz v3, :cond_1

    .line 21656
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x1

    return v0

    .line 21649
    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21659
    .end local v1    # "i":I
    :cond_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21661
    const/4 v0, 0x0

    return v0

    .line 21659
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public hasStartedUserState(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 21274
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->hasStartedUserState(I)Z

    move-result v0

    return v0
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .locals 2
    .param p1, "pid"    # I
    .param p2, "aboveSystem"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .line 21465
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(IZLjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public inputDispatchingTimedOut(Ljava/lang/Object;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/Object;ZLjava/lang/String;)Z
    .locals 8
    .param p1, "proc"    # Ljava/lang/Object;
    .param p2, "activityShortComponentName"    # Ljava/lang/String;
    .param p3, "aInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "parentShortComponentName"    # Ljava/lang/String;
    .param p5, "parentProc"    # Ljava/lang/Object;
    .param p6, "aboveSystem"    # Z
    .param p7, "reason"    # Ljava/lang/String;

    .line 21472
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object v5, p5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isActivityStartsLoggingEnabled()Z
    .locals 1

    .line 21443
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagActivityStartsLoggingEnabled:Z

    return v0
.end method

.method public isAppBad(Landroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    .line 21629
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1800(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method

.method public isAppForeground(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 21624
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityManagerService;->access$1700(Lcom/android/server/am/ActivityManagerService;I)Z

    move-result v0

    return v0
.end method

.method public isBackgroundActivityStartsEnabled()Z
    .locals 1

    .line 21447
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mFlagBackgroundActivityStartsEnabled:Z

    return v0
.end method

.method public isBooted()Z
    .locals 1

    .line 21326
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    return v0
.end method

.method public isBooting()Z
    .locals 1

    .line 21316
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    return v0
.end method

.method public isCurrentProfile(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 21269
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->isCurrentProfile(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceOwner(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 21697
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21698
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerService;->access$2000(Lcom/android/server/am/ActivityManagerService;)I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 21699
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isPendingTopUid(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 21714
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$2100(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/PendingStartActivityUids;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/PendingStartActivityUids;->isPendingTopUid(I)Z

    move-result v0

    return v0
.end method

.method public isRuntimeRestarted()Z
    .locals 1

    .line 21069
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v0

    return v0
.end method

.method public isSystemReady()Z
    .locals 1

    .line 20988
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSystemReady:Z

    return v0
.end method

.method public isUidActive(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 21094
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21095
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->isUidActiveLocked(I)Z

    move-result v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 21096
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isUidCurrentlyInstrumented(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 21676
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21677
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 21678
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActiveInstrumentation:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActiveInstrumentation;

    .line 21679
    .local v3, "activeInst":Lcom/android/server/am/ActiveInstrumentation;
    iget-boolean v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mFinished:Z

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_0

    .line 21681
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 21677
    .end local v3    # "activeInst":Lcom/android/server/am/ActiveInstrumentation;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 21684
    .end local v1    # "i":I
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21685
    const/4 v0, 0x0

    return v0

    .line 21684
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isUserRunning(II)Z
    .locals 1
    .param p1, "userId"    # I
    .param p2, "flags"    # I

    .line 21132
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/UserController;->isUserRunning(II)Z

    move-result v0

    return v0
.end method

.method public killAllBackgroundProcessesExcept(II)V
    .locals 2
    .param p1, "minTargetSdk"    # I
    .param p2, "maxProcState"    # I

    .line 21553
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21554
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityManagerService;->killAllBackgroundProcessesExcept(II)V

    .line 21556
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21557
    return-void

    .line 21556
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killForegroundAppsForUser(I)V
    .locals 13
    .param p1, "userId"    # I

    .line 20890
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20891
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 20892
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 20893
    .local v2, "NP":I
    const/4 v3, 0x0

    .local v3, "ip":I
    :goto_0
    if-ge v3, v2, :cond_5

    .line 20894
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v4, v4, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 20895
    invoke-virtual {v4}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 20896
    .local v4, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 20897
    .local v5, "NA":I
    const/4 v6, 0x0

    .local v6, "ia":I
    :goto_1
    if-ge v6, v5, :cond_4

    .line 20898
    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 20901
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    const-string v8, "com.qualcomm.wfd.service:wfd_service"

    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 20902
    goto :goto_2

    .line 20905
    :cond_0
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 20907
    goto :goto_2

    .line 20909
    :cond_1
    iget-boolean v8, v7, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-nez v8, :cond_2

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v8, p1, :cond_3

    .line 20910
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasForegroundActivities()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 20911
    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20897
    .end local v7    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 20893
    .end local v4    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5    # "NA":I
    .end local v6    # "ia":I
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20916
    .end local v3    # "ip":I
    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 20917
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v3, :cond_6

    .line 20918
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/16 v10, 0xd

    const/16 v11, 0x9

    const-string/jumbo v12, "kill all fg"

    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 20917
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 20923
    .end local v1    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "NP":I
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 20924
    return-void

    .line 20923
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killProcess(Ljava/lang/String;ILjava/lang/String;)V
    .locals 8
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 21165
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21166
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 21168
    .local v1, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_0

    .line 21169
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0xd

    move-object v3, v1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z

    .line 21172
    .end local v1    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21173
    return-void

    .line 21172
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public killProcessesForRemovedTask(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 21141
    .local p1, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 21143
    nop

    .line 21144
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowProcessController;

    .line 21145
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, v2, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 21146
    .local v3, "pr":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    .line 21147
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 21148
    const-string/jumbo v4, "remove task"

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    goto :goto_1

    .line 21153
    :cond_0
    const-string/jumbo v4, "remove task"

    iput-object v4, v3, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    .line 21157
    :goto_1
    const/16 v4, 0x9

    iput v4, v3, Lcom/android/server/am/ProcessRecord;->killReason:I

    .line 21142
    .end local v2    # "wpc":Lcom/android/server/wm/WindowProcessController;
    .end local v3    # "pr":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 21160
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21161
    return-void

    .line 21160
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$disconnectActivityFromServices$0$ActivityManagerService$LocalService(Lcom/android/server/wm/ActivityServiceConnectionsHolder;Ljava/lang/Object;)V
    .locals 3
    .param p1, "holder"    # Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .param p2, "cr"    # Ljava/lang/Object;

    .line 21413
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    move-object v1, p2

    check-cast v1, Lcom/android/server/am/ConnectionRecord;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/am/ActiveServices;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/wm/ActivityServiceConnectionsHolder;)V

    return-void
.end method

.method public monitor()V
    .locals 1

    .line 21460
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->monitor()V

    .line 21461
    return-void
.end method

.method public notifyNetworkPolicyRulesUpdated(IJ)V
    .locals 6
    .param p1, "uid"    # I
    .param p2, "procStateSeq"    # J

    .line 21025
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_0

    .line 21026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got update from NPMS for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_Network"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21030
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21031
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLocked(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 21032
    .local v1, "record":Lcom/android/server/am/UidRecord;
    if-nez v1, :cond_2

    .line 21033
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v2, :cond_1

    .line 21034
    const-string v2, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No active uidRecord for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21037
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 21039
    :cond_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21040
    iget-object v2, v1, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v2

    .line 21041
    :try_start_2
    iget-wide v3, v1, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    cmp-long v0, v3, p2

    if-ltz v0, :cond_4

    .line 21042
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_3

    .line 21043
    const-string v0, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " has already been handled for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21046
    :cond_3
    monitor-exit v2

    return-void

    .line 21048
    :cond_4
    iput-wide p2, v1, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    .line 21049
    iget-wide v3, v1, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    cmp-long v0, v3, p2

    if-lez v0, :cond_6

    .line 21050
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_5

    .line 21051
    const-string v0, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No need to handle older seq no., Uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", curProcstateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21055
    :cond_5
    monitor-exit v2

    return-void

    .line 21057
    :cond_6
    iget-boolean v0, v1, Lcom/android/server/am/UidRecord;->waitingForNetwork:Z

    if-eqz v0, :cond_8

    .line 21058
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v0, :cond_7

    .line 21059
    const-string v0, "ActivityManager_Network"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying all blocking threads for uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", procStateSeq: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21062
    :cond_7
    iget-object v0, v1, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 21064
    :cond_8
    monitor-exit v2

    .line 21065
    return-void

    .line 21064
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 21039
    .end local v1    # "record":Lcom/android/server/am/UidRecord;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onUserRemoved(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 20877
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUserStopped(I)V

    .line 20879
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/BatteryStatsService;->onUserRemoved(I)V

    .line 20880
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->onUserRemoved(I)V

    .line 20881
    return-void
.end method

.method public onWakefulnessChanged(I)V
    .locals 1
    .param p1, "wakefulness"    # I

    .line 20864
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->onWakefulnessChanged(I)V

    .line 20865
    return-void
.end method

.method public prepareForPossibleShutdown()V
    .locals 1

    .line 21643
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->prepareForPossibleShutdown()V

    .line 21644
    return-void
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 1
    .param p1, "processObserver"    # Landroid/app/IProcessObserver;

    .line 21666
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 21667
    return-void
.end method

.method public reportCurKeyguardUsageEvent(Z)V
    .locals 3
    .param p1, "keyguardShowing"    # Z

    .line 21451
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21452
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    if-eqz p1, :cond_0

    .line 21453
    const/16 v2, 0x11

    goto :goto_0

    .line 21454
    :cond_0
    const/16 v2, 0x12

    .line 21452
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->reportGlobalUsageEventLocked(I)V

    .line 21455
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21456
    return-void

    .line 21455
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public scheduleAppGcs()V
    .locals 2

    .line 21284
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21285
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 21286
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21287
    return-void

    .line 21286
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public sendForegroundProfileChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 21244
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->sendForegroundProfileChanged(I)V

    .line 21245
    return-void
.end method

.method public setBooted(Z)V
    .locals 1
    .param p1, "booted"    # Z

    .line 21321
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 21322
    return-void
.end method

.method public setBooting(Z)V
    .locals 1
    .param p1, "booting"    # Z

    .line 21311
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean p1, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 21312
    return-void
.end method

.method public setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;
    .param p2, "startFlags"    # I
    .param p3, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p4, "wmLock"    # Ljava/lang/Object;

    .line 21584
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21590
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21591
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_0

    .line 21592
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    goto :goto_0

    .line 21607
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 21595
    :cond_0
    :goto_0
    and-int/lit8 v1, p2, 0x8

    if-eqz v1, :cond_1

    .line 21596
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setNativeDebuggingAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 21599
    :cond_1
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    .line 21600
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->setTrackAllocationApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V

    .line 21603
    :cond_2
    if-eqz p3, :cond_3

    .line 21604
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, p3}, Lcom/android/server/am/ActivityManagerService;->setProfileApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Landroid/app/ProfilerInfo;)V

    .line 21606
    :cond_3
    invoke-virtual {p4}, Ljava/lang/Object;->notify()V

    .line 21607
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21608
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21609
    return-void

    .line 21607
    :goto_1
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local p2    # "startFlags":I
    .end local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p4    # "wmLock":Ljava/lang/Object;
    :try_start_4
    throw v1

    .line 21608
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local p2    # "startFlags":I
    .restart local p3    # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p4    # "wmLock":Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDeviceIdleWhitelist([I[I)V
    .locals 2
    .param p1, "allAppids"    # [I
    .param p2, "exceptIdleAppids"    # [I

    .line 20961
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20962
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleWhitelist:[I

    .line 20963
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleExceptIdleWhitelist:[I

    .line 20964
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 20965
    return-void

    .line 20964
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setDeviceOwnerUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 21690
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21691
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, p1}, Lcom/android/server/am/ActivityManagerService;->access$2002(Lcom/android/server/am/ActivityManagerService;I)I

    .line 21692
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21693
    return-void

    .line 21692
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setHasOverlayUi(IZ)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "hasOverlayUi"    # Z

    .line 21000
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21002
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21003
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 21004
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    if-nez v2, :cond_0

    .line 21005
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setHasOverlayUi called on unknown pid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 21006
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 21008
    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 21009
    :try_start_4
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasOverlayUi()Z

    move-result v1

    if-ne v1, p2, :cond_1

    .line 21010
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 21012
    :cond_1
    :try_start_5
    invoke-virtual {v2, p2}, Lcom/android/server/am/ProcessRecord;->setHasOverlayUi(Z)V

    .line 21014
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    const-string/jumbo v4, "updateOomAdj_uiVisibility"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)Z

    .line 21015
    nop

    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21016
    return-void

    .line 21008
    :catchall_0
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "pid":I
    .end local p2    # "hasOverlayUi":Z
    :try_start_7
    throw v2

    .line 21015
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "pid":I
    .restart local p2    # "hasOverlayUi":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPendingIntentAllowBgActivityStarts(Landroid/content/IIntentSender;Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "whitelistToken"    # Landroid/os/IBinder;
    .param p3, "flags"    # I

    .line 20936
    instance-of v0, p1, Lcom/android/server/am/PendingIntentRecord;

    if-nez v0, :cond_0

    .line 20937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPendingIntentAllowBgActivityStarts(): not a PendingIntentRecord: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20939
    return-void

    .line 20941
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20942
    move-object v1, p1

    check-cast v1, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/PendingIntentRecord;->setAllowBgActivityStarts(Landroid/os/IBinder;I)V

    .line 20943
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 20944
    return-void

    .line 20943
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V
    .locals 1
    .param p1, "target"    # Landroid/content/IIntentSender;
    .param p2, "whitelistToken"    # Landroid/os/IBinder;
    .param p3, "duration"    # J

    .line 20929
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/PendingIntentController;->setPendingIntentWhitelistDuration(Landroid/content/IIntentSender;Landroid/os/IBinder;J)V

    .line 20931
    return-void
.end method

.method public setSwitchingFromSystemUserMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "switchingFromSystemUserMessage"    # Ljava/lang/String;

    .line 21079
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->setSwitchingFromSystemUserMessage(Ljava/lang/String;)V

    .line 21080
    return-void
.end method

.method public setSwitchingToSystemUserMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "switchingToSystemUserMessage"    # Ljava/lang/String;

    .line 21084
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->setSwitchingToSystemUserMessage(Ljava/lang/String;)V

    .line 21085
    return-void
.end method

.method public shouldConfirmCredentials(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 21249
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0, p1}, Lcom/android/server/am/UserController;->shouldConfirmCredentials(I)Z

    move-result v0

    return v0
.end method

.method public startActivityAsUserEmpty(Landroid/os/Bundle;)I
    .locals 1
    .param p1, "options"    # Landroid/os/Bundle;

    .line 20885
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->startActivityAsUserEmpty(Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z
    .locals 7
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "abiOverride"    # Ljava/lang/String;
    .param p5, "uid"    # I
    .param p6, "crashHandler"    # Ljava/lang/Runnable;

    .line 20870
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ActivityManagerService;->startIsolatedProcess(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public startProcess(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZZLjava/lang/String;Landroid/content/ComponentName;)V
    .locals 18
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "isTop"    # Z
    .param p5, "hostingType"    # Ljava/lang/String;
    .param p6, "hostingName"    # Landroid/content/ComponentName;

    move-object/from16 v1, p0

    .line 21563
    const-wide/16 v2, 0x40

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcess:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v4, p1

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_0

    .line 21563
    :cond_0
    move-object/from16 v4, p1

    .line 21567
    :goto_0
    iget-object v15, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21571
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    new-instance v10, Lcom/android/server/am/HostingRecord;

    move/from16 v14, p4

    move-object/from16 v13, p5

    move-object/from16 v12, p6

    invoke-direct {v10, v13, v12, v14}, Lcom/android/server/am/HostingRecord;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Z)V

    const/4 v11, 0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    move v12, v0

    move/from16 v13, v16

    move/from16 v14, v17

    invoke-virtual/range {v5 .. v14}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZZ)Lcom/android/server/am/ProcessRecord;

    .line 21575
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21577
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 21578
    nop

    .line 21579
    return-void

    .line 21575
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "processName":Ljava/lang/String;
    .end local p2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local p3    # "knownToBeDead":Z
    .end local p4    # "isTop":Z
    .end local p5    # "hostingType":Ljava/lang/String;
    .end local p6    # "hostingName":Landroid/content/ComponentName;
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 21577
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "processName":Ljava/lang/String;
    .restart local p2    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local p3    # "knownToBeDead":Z
    .restart local p4    # "isTop":Z
    .restart local p5    # "hostingType":Ljava/lang/String;
    .restart local p6    # "hostingName":Landroid/content/ComponentName;
    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v4, p1

    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 21578
    throw v0
.end method

.method public startServiceInPackage(ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)Landroid/content/ComponentName;
    .locals 18
    .param p1, "uid"    # I
    .param p2, "service"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "fgRequired"    # Z
    .param p5, "callingPackage"    # Ljava/lang/String;
    .param p6, "callingFeatureId"    # Ljava/lang/String;
    .param p7, "userId"    # I
    .param p8, "allowBackgroundActivityStarts"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/TransactionTooLargeException;
        }
    .end annotation

    .line 21388
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21389
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_SERVICE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startServiceInPackage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v4, p2

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v15, p3

    :try_start_3
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 21401
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v4, p2

    :goto_0
    move-object/from16 v15, p3

    goto :goto_2

    .line 21389
    :cond_0
    move-object/from16 v4, p2

    move-object/from16 v15, p3

    .line 21391
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-wide/from16 v16, v5

    .line 21394
    .local v16, "origId":J
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    const/4 v6, 0x0

    const/4 v9, -0x1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v10, p1

    move/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    invoke-virtual/range {v5 .. v15}, Lcom/android/server/am/ActiveServices;->startServiceLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;IZ)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 21398
    .local v0, "res":Landroid/content/ComponentName;
    :try_start_5
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21399
    nop

    .line 21400
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 21398
    .end local v0    # "res":Landroid/content/ComponentName;
    :catchall_2
    move-exception v0

    :try_start_6
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 21399
    nop

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "uid":I
    .end local p2    # "service":Landroid/content/Intent;
    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p4    # "fgRequired":Z
    .end local p5    # "callingPackage":Ljava/lang/String;
    .end local p6    # "callingFeatureId":Ljava/lang/String;
    .end local p7    # "userId":I
    .end local p8    # "allowBackgroundActivityStarts":Z
    throw v0

    .line 21401
    .end local v16    # "origId":J
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "uid":I
    .restart local p2    # "service":Landroid/content/Intent;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p4    # "fgRequired":Z
    .restart local p5    # "callingPackage":Ljava/lang/String;
    .restart local p6    # "callingFeatureId":Ljava/lang/String;
    .restart local p7    # "userId":I
    .restart local p8    # "allowBackgroundActivityStarts":Z
    :catchall_3
    move-exception v0

    move-object/from16 v4, p2

    :goto_2
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_2
.end method

.method public tempWhitelistForPendingIntent(IIIJLjava/lang/String;)V
    .locals 8
    .param p1, "callerPid"    # I
    .param p2, "callerUid"    # I
    .param p3, "targetUid"    # I
    .param p4, "duration"    # J
    .param p6, "tag"    # Ljava/lang/String;

    .line 21337
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21338
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ActivityManagerService;->tempWhitelistForPendingIntentLocked(IIIJLjava/lang/String;)V

    .line 21340
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21341
    return-void

    .line 21340
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public trimApplications()V
    .locals 2

    .line 21137
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v1, "updateOomAdj_activityChange"

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->trimApplications(Ljava/lang/String;)V

    .line 21138
    return-void
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 1
    .param p1, "processObserver"    # Landroid/app/IProcessObserver;

    .line 21671
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 21672
    return-void
.end method

.method public updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "event"    # I
    .param p4, "appToken"    # Landroid/os/IBinder;
    .param p5, "taskRoot"    # Landroid/content/ComponentName;

    .line 21218
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21219
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->updateActivityUsageStats(Landroid/content/ComponentName;IILandroid/os/IBinder;Landroid/content/ComponentName;)V

    .line 21221
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21222
    return-void

    .line 21221
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateBatteryStats(Landroid/content/ComponentName;IIZ)V
    .locals 2
    .param p1, "activity"    # Landroid/content/ComponentName;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "resumed"    # Z

    .line 21210
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21211
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->updateBatteryStats(Landroid/content/ComponentName;IIZ)V

    .line 21212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21213
    return-void

    .line 21212
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateCpuStats()V
    .locals 2

    .line 21202
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21203
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 21204
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21205
    return-void

    .line 21204
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateDeviceIdleTempWhitelist([IIZ)V
    .locals 2
    .param p1, "appids"    # [I
    .param p2, "changingAppId"    # I
    .param p3, "adding"    # Z

    .line 20969
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 20970
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempWhitelist:[I

    .line 20971
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->setAppIdTempWhitelistStateLocked(IZ)V

    .line 20972
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 20973
    return-void

    .line 20972
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateForegroundTimeIfOnBattery(Ljava/lang/String;IJ)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "cpuTimeDiff"    # J

    .line 21227
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21228
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v1

    if-nez v1, :cond_0

    .line 21229
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 21231
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v1

    .line 21232
    .local v1, "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 21233
    nop

    .line 21234
    :try_start_2
    invoke-virtual {v1, p2, p1}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v2

    .line 21235
    .local v2, "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v2, :cond_1

    .line 21236
    invoke-virtual {v2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 21238
    .end local v2    # "ps":Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 21239
    .end local v1    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21240
    return-void

    .line 21238
    .restart local v1    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "cpuTimeDiff":J
    :try_start_5
    throw v2

    .line 21239
    .end local v1    # "bsi":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local p0    # "this":Lcom/android/server/am/ActivityManagerService$LocalService;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "cpuTimeDiff":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateOomAdj()V
    .locals 3

    .line 21195
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21196
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_meh"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 21197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21198
    return-void

    .line 21197
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateOomLevelsForDisplay(I)V
    .locals 3
    .param p1, "displayId"    # I

    .line 21435
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 21436
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_0

    .line 21437
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocalService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList;->applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V

    .line 21439
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 21440
    return-void

    .line 21439
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
