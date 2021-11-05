.class final Lcom/android/server/om/OverlayManagerService$PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverlayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerService$1;

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;[I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 395
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageAdded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 396
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p2, v4

    .line 397
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 398
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 400
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 401
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 402
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 403
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    goto :goto_1

    .line 405
    :cond_0
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageAdded(Ljava/lang/String;I)V

    .line 408
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    monitor-exit v6

    .line 396
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    .restart local v5    # "userId":I
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 411
    .end local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 412
    nop

    .line 413
    return-void

    .line 411
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 412
    throw v2
.end method

.method private onPackageChanged(Ljava/lang/String;[I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 418
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 419
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p2, v4

    .line 420
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 421
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 423
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 424
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 425
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 426
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageChanged(Ljava/lang/String;I)V

    goto :goto_1

    .line 428
    :cond_0
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageChanged(Ljava/lang/String;I)V

    .line 431
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    monitor-exit v6

    .line 419
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 431
    .restart local v5    # "userId":I
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 434
    .end local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 435
    nop

    .line 436
    return-void

    .line 434
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 435
    throw v2
.end method

.method private onPackageRemoved(Ljava/lang/String;[I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 482
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageRemoved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 483
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    .line 484
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 485
    :try_start_1
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 486
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 487
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_0

    .line 488
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    goto :goto_1

    .line 490
    :cond_0
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageRemoved(Ljava/lang/String;I)V

    .line 492
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    :goto_1
    monitor-exit v5

    .line 483
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    .restart local v4    # "userId":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 495
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 496
    nop

    .line 497
    return-void

    .line 495
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 496
    throw v2
.end method

.method private onPackageReplaced(Ljava/lang/String;[I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 459
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplaced "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 460
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p2, v4

    .line 461
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 462
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 464
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 465
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 466
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 467
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplaced(Ljava/lang/String;I)V

    goto :goto_1

    .line 469
    :cond_0
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageReplaced(Ljava/lang/String;I)V

    .line 472
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    monitor-exit v6

    .line 460
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 472
    .restart local v5    # "userId":I
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 475
    .end local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 476
    nop

    .line 477
    return-void

    .line 475
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 476
    throw v2
.end method

.method private onPackageReplacing(Ljava/lang/String;[I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 441
    const-wide/32 v0, 0x4000000

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OMS#onPackageReplacing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 442
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    .line 443
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 444
    :try_start_1
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 445
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 446
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_0

    .line 447
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplacing(Ljava/lang/String;I)V

    .line 449
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    :cond_0
    monitor-exit v5

    .line 442
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    .restart local v4    # "userId":I
    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "userIds":[I
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 452
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 453
    nop

    .line 454
    return-void

    .line 452
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 453
    throw v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OverlayManager"

    if-nez v0, :cond_0

    .line 344
    const-string v2, "Cannot handle package broadcast with null action"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    return-void

    .line 347
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 348
    .local v2, "data":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 349
    const-string v3, "Cannot handle package broadcast with null data"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    return-void

    .line 352
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "android.intent.extra.REPLACING"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 357
    .local v3, "replacing":Z
    const-string v5, "android.intent.extra.UID"

    const/16 v6, -0x2710

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 358
    .local v5, "extraUid":I
    const/4 v7, 0x1

    if-ne v5, v6, :cond_2

    .line 359
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v6

    .local v6, "userIds":[I
    goto :goto_0

    .line 361
    .end local v6    # "userIds":[I
    :cond_2
    new-array v6, v7, [I

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    aput v8, v6, v4

    .line 364
    .restart local v6    # "userIds":[I
    :goto_0
    const/4 v8, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0xa480416

    const/4 v11, 0x2

    if-eq v9, v10, :cond_6

    const v10, 0x1f50b9c2

    if-eq v9, v10, :cond_5

    const v10, 0x5c1076e2

    if-eq v9, v10, :cond_4

    :cond_3
    goto :goto_1

    :cond_4
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_5
    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v11

    goto :goto_2

    :cond_6
    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v7

    goto :goto_2

    :goto_1
    move v4, v8

    :goto_2
    if-eqz v4, :cond_a

    if-eq v4, v7, :cond_9

    if-eq v4, v11, :cond_7

    goto :goto_3

    .line 380
    :cond_7
    if-eqz v3, :cond_8

    .line 381
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplacing(Ljava/lang/String;[I)V

    goto :goto_3

    .line 383
    :cond_8
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    .line 385
    goto :goto_3

    .line 375
    :cond_9
    const-string v4, "android.intent.extra.REASON"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 376
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    goto :goto_3

    .line 366
    :cond_a
    if-eqz v3, :cond_b

    .line 367
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplaced(Ljava/lang/String;[I)V

    goto :goto_3

    .line 369
    :cond_b
    invoke-direct {p0, v1, v6}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    .line 371
    nop

    .line 390
    :cond_c
    :goto_3
    return-void
.end method
