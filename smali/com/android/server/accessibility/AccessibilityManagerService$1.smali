.class Lcom/android/server/accessibility/AccessibilityManagerService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 407
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPackageRemoved$2(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 468
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onPackageUpdateFinished$0(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 441
    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 441
    :goto_0
    return v0
.end method

.method static synthetic lambda$onPackageUpdateFinished$1(Ljava/lang/String;Landroid/content/ComponentName;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "component"    # Landroid/content/ComponentName;

    .line 443
    if-eqz p1, :cond_0

    .line 444
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 443
    :goto_0
    return v0
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 15
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 498
    move-object v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 499
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v0

    .line 502
    .local v0, "userId":I
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v4

    const/4 v5, 0x0

    if-eq v0, v4, :cond_0

    .line 503
    monitor-exit v3

    return v5

    .line 505
    :cond_0
    iget-object v4, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v4, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v4

    .line 506
    .local v4, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v6, v4, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 507
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 508
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ComponentName;

    .line 509
    .local v7, "comp":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 510
    .local v8, "compPkg":Ljava/lang/String;
    array-length v9, v2

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_3

    aget-object v11, v2, v10

    .line 511
    .local v11, "pkg":Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 512
    if-nez p4, :cond_1

    .line 513
    monitor-exit v3

    const/4 v3, 0x1

    return v3

    .line 515
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 516
    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 517
    iget-object v12, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v13, "enabled_accessibility_services"

    iget-object v14, v4, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v12, v13, v14, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 520
    iget-object v12, v1, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v12, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 510
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 523
    .end local v7    # "comp":Landroid/content/ComponentName;
    .end local v8    # "compPkg":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 524
    :cond_4
    monitor-exit v3

    return v5

    .line 525
    .end local v0    # "userId":I
    .end local v4    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 459
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 460
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v1

    .line 463
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 464
    monitor-exit v0

    return-void

    .line 466
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 467
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    new-instance v3, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$ITZvj4S56Qgg104SnVkH6QavKLI;

    invoke-direct {v3, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$ITZvj4S56Qgg104SnVkH6QavKLI;-><init>(Ljava/lang/String;)V

    .line 470
    .local v3, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/ComponentName;>;"
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mBindingServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 471
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 472
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 473
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 474
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 475
    .local v5, "comp":Landroid/content/ComponentName;
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 476
    .local v6, "compPkg":Ljava/lang/String;
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 477
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 479
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string v8, "enabled_accessibility_services"

    iget-object v9, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {v7, v8, v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 483
    iget-object v7, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-interface {v7, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 484
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const-string/jumbo v8, "touch_exploration_granted_accessibility_services"

    iget-object v9, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mTouchExplorationGrantedServices:Ljava/util/Set;

    invoke-virtual {v7, v8, v9, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->persistComponentNamesToSettingLocked(Ljava/lang/String;Ljava/util/Set;I)V

    .line 488
    iget-object v7, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v7, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 489
    monitor-exit v0

    return-void

    .line 491
    .end local v5    # "comp":Landroid/content/ComponentName;
    .end local v6    # "compPkg":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 492
    .end local v1    # "userId":I
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v3    # "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/content/ComponentName;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_2
    monitor-exit v0

    .line 493
    return-void

    .line 492
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 434
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 435
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v1

    .line 436
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 437
    monitor-exit v0

    return-void

    .line 439
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$600(Lcom/android/server/accessibility/AccessibilityManagerService;I)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v2

    .line 440
    .local v2, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    invoke-virtual {v2}, Lcom/android/server/accessibility/AccessibilityUserState;->getBindingServicesLocked()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$49HMbWlhAK8DBFFzhu5wH_-EQaM;

    invoke-direct {v4, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$49HMbWlhAK8DBFFzhu5wH_-EQaM;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mCrashedServices:Ljava/util/Set;

    new-instance v4, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$J4pGG-UiTxhxH1VLNWBa7KLTh48;

    invoke-direct {v4, p1}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$1$J4pGG-UiTxhxH1VLNWBa7KLTh48;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 447
    .local v3, "reboundAService":Z
    :goto_1
    iget-object v4, v2, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 448
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 449
    invoke-static {v4, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v4

    .line 450
    .local v4, "configurationChanged":Z
    if-nez v3, :cond_3

    if-eqz v4, :cond_4

    .line 451
    :cond_3
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 453
    :cond_4
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v5, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;Ljava/lang/String;)V

    .line 454
    .end local v1    # "userId":I
    .end local v2    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    .end local v3    # "reboundAService":Z
    .end local v4    # "configurationChanged":Z
    monitor-exit v0

    .line 455
    return-void

    .line 454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onSomePackagesChanged()V
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$100(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 413
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService$1;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$200(Lcom/android/server/accessibility/AccessibilityManagerService;)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 414
    monitor-exit v0

    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$300(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v1

    .line 421
    .local v1, "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    iget-object v2, v1, Lcom/android/server/accessibility/AccessibilityUserState;->mInstalledServices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 422
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 423
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$1;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v2, v1}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 425
    .end local v1    # "userState":Lcom/android/server/accessibility/AccessibilityUserState;
    :cond_1
    monitor-exit v0

    .line 426
    return-void

    .line 425
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
