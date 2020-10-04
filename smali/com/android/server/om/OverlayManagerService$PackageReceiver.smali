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

    .line 328
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerService$1;

    .line 328
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method

.method private onPackageAdded(Ljava/lang/String;[I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 380
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

    .line 381
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p2, v4

    .line 382
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 383
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v7

    invoke-virtual {v7, p1, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 385
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 386
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 387
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 388
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageAdded(Ljava/lang/String;I)V

    goto :goto_1

    .line 390
    :cond_0
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageAdded(Ljava/lang/String;I)V

    .line 393
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    monitor-exit v6

    .line 381
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 393
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

    .line 396
    .end local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 397
    nop

    .line 398
    return-void

    .line 396
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private onPackageChanged(Ljava/lang/String;[I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 403
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

    .line 404
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p2, v4

    .line 405
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 406
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v7

    invoke-virtual {v7, p1, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 408
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 409
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 410
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 411
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageChanged(Ljava/lang/String;I)V

    goto :goto_1

    .line 413
    :cond_0
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageChanged(Ljava/lang/String;I)V

    .line 416
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    monitor-exit v6

    .line 404
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 416
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

    .line 419
    .end local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 420
    nop

    .line 421
    return-void

    .line 419
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private onPackageRemoved(Ljava/lang/String;[I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 467
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

    .line 468
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    .line 469
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 470
    :try_start_1
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 471
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 472
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_0

    .line 473
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    goto :goto_1

    .line 475
    :cond_0
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageRemoved(Ljava/lang/String;I)V

    .line 477
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    :goto_1
    monitor-exit v5

    .line 468
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 477
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

    .line 480
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 481
    nop

    .line 482
    return-void

    .line 480
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private onPackageReplaced(Ljava/lang/String;[I)V
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 444
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

    .line 445
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, p2, v4

    .line 446
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 447
    :try_start_1
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v7

    invoke-virtual {v7, p1, v5, v3}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 449
    .local v7, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v7, :cond_1

    iget-object v8, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v8}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v8

    if-nez v8, :cond_1

    .line 450
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v8

    invoke-virtual {v8, p1, v5, v7}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->cachePackageInfo(Ljava/lang/String;ILandroid/content/pm/PackageInfo;)V

    .line 451
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isOverlayPackage()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 452
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplaced(Ljava/lang/String;I)V

    goto :goto_1

    .line 454
    :cond_0
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v8}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v8

    invoke-virtual {v8, p1, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->onTargetPackageReplaced(Ljava/lang/String;I)V

    .line 457
    .end local v7    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :goto_1
    monitor-exit v6

    .line 445
    .end local v5    # "userId":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 457
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

    .line 460
    .end local v5    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 461
    nop

    .line 462
    return-void

    .line 460
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method

.method private onPackageReplacing(Ljava/lang/String;[I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userIds"    # [I

    .line 426
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

    .line 427
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    .line 428
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$400(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 429
    :try_start_1
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelper;->forgetPackageInfo(Ljava/lang/String;I)V

    .line 430
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v6

    invoke-virtual {v6, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v6

    .line 431
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    if-eqz v6, :cond_0

    .line 432
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v7}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerServiceImpl;

    move-result-object v7

    invoke-virtual {v7, p1, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageReplacing(Ljava/lang/String;I)V

    .line 434
    .end local v6    # "oi":Landroid/content/om/OverlayInfo;
    :cond_0
    monitor-exit v5

    .line 427
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 434
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

    .line 437
    .end local v4    # "userId":I
    .restart local p0    # "this":Lcom/android/server/om/OverlayManagerService$PackageReceiver;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "userIds":[I
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 438
    nop

    .line 439
    return-void

    .line 437
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 331
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "action":Ljava/lang/String;
    const-string v1, "OverlayManager"

    if-nez v0, :cond_0

    .line 333
    const-string v2, "Cannot handle package broadcast with null action"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    return-void

    .line 336
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 337
    .local v2, "data":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 338
    const-string v3, "Cannot handle package broadcast with null data"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    return-void

    .line 341
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, "packageName":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 346
    .local v4, "replacing":Z
    const/16 v5, -0x2710

    const-string v6, "android.intent.extra.UID"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 347
    .local v6, "extraUid":I
    const/4 v7, 0x1

    if-ne v6, v5, :cond_2

    .line 348
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {v5}, Lcom/android/server/om/OverlayManagerService;->access$300(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v5

    .local v5, "userIds":[I
    goto :goto_0

    .line 350
    .end local v5    # "userIds":[I
    :cond_2
    new-array v5, v7, [I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    aput v8, v5, v3

    .line 353
    .restart local v5    # "userIds":[I
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
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v11

    goto :goto_2

    :cond_6
    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v7

    goto :goto_2

    :goto_1
    move v3, v8

    :goto_2
    if-eqz v3, :cond_a

    if-eq v3, v7, :cond_9

    if-eq v3, v11, :cond_7

    goto :goto_3

    .line 365
    :cond_7
    if-eqz v4, :cond_8

    .line 366
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplacing(Ljava/lang/String;[I)V

    goto :goto_3

    .line 368
    :cond_8
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageRemoved(Ljava/lang/String;[I)V

    .line 370
    goto :goto_3

    .line 362
    :cond_9
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageChanged(Ljava/lang/String;[I)V

    .line 363
    goto :goto_3

    .line 355
    :cond_a
    if-eqz v4, :cond_b

    .line 356
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageReplaced(Ljava/lang/String;[I)V

    goto :goto_3

    .line 358
    :cond_b
    invoke-direct {p0, v1, v5}, Lcom/android/server/om/OverlayManagerService$PackageReceiver;->onPackageAdded(Ljava/lang/String;[I)V

    .line 360
    nop

    .line 375
    :goto_3
    return-void
.end method
