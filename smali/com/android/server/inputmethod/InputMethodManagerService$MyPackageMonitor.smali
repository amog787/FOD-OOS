.class final Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field private final mChangedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImePackageAppeared:Z

.field private final mKnownImePackageNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1286
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1295
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    .line 1308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 1316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method

.method private clearPackageChangeState()V
    .locals 1

    .line 1426
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1428
    return-void
.end method

.method private isChangingPackagesOfCurrentUserLocked()Z
    .locals 2

    .line 1330
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1331
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1337
    .local v1, "retval":Z
    :goto_0
    return v1
.end method

.method private onFinishPackageChangesInternal()V
    .locals 14

    .line 1454
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1455
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1456
    monitor-exit v0

    return-void

    .line 1458
    :cond_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->shouldRebuildInputMethodListLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1459
    monitor-exit v0

    return-void

    .line 1462
    :cond_1
    const/4 v1, 0x0

    .line 1463
    .local v1, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 1464
    .local v2, "curInputMethodId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1465
    .local v3, "N":I
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_6

    .line 1466
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v3, :cond_6

    .line 1467
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 1468
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 1469
    .local v9, "imiId":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1470
    move-object v1, v8

    .line 1473
    :cond_2
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v10

    .line 1474
    .local v10, "change":I
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1475
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$600(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1476
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$600(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v13, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1477
    invoke-virtual {v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v13

    .line 1476
    invoke-static {v11, v12, v13}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 1479
    :cond_3
    if-eq v10, v5, :cond_4

    if-ne v10, v4, :cond_5

    .line 1481
    :cond_4
    const-string v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input method uninstalled, disabling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1482
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1481
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$700(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z

    .line 1466
    .end local v8    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9    # "imiId":Ljava/lang/String;
    .end local v10    # "change":I
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1488
    .end local v7    # "i":I
    :cond_6
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1490
    const/4 v7, 0x0

    .line 1492
    .local v7, "changed":Z
    if-eqz v1, :cond_8

    .line 1493
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    .local v8, "change":I
    if-eq v8, v5, :cond_7

    if-ne v8, v4, :cond_8

    .line 1496
    :cond_7
    const/4 v4, 0x0

    .line 1498
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    :try_start_1
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$800(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 1499
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    .line 1498
    invoke-interface {v5, v9, v6, v10}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v5

    .line 1501
    goto :goto_1

    .line 1500
    :catch_0
    move-exception v5

    .line 1502
    :goto_1
    if-nez v4, :cond_8

    .line 1505
    :try_start_2
    const-string v5, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current input method removed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v9, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-static {v5, v6, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$900(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    .line 1507
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1508
    const/4 v7, 0x1

    .line 1509
    const/4 v1, 0x0

    .line 1510
    const-string v5, "InputMethodManagerService"

    const-string v9, "Unsetting current input method"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v9, ""

    invoke-static {v5, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$400(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    .line 1517
    .end local v4    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "change":I
    :cond_8
    if-nez v1, :cond_9

    .line 1520
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v4

    move v7, v4

    goto :goto_2

    .line 1521
    :cond_9
    if-nez v7, :cond_a

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1524
    const/4 v7, 0x1

    .line 1527
    :cond_a
    :goto_2
    if-eqz v7, :cond_b

    .line 1528
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1530
    .end local v1    # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "curInputMethodId":Ljava/lang/String;
    .end local v3    # "N":I
    .end local v7    # "changed":Z
    :cond_b
    monitor-exit v0

    .line 1531
    return-void

    .line 1530
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private shouldRebuildInputMethodListLocked()Z
    .locals 5

    .line 1436
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1437
    return v1

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1444
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1445
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1446
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1447
    return v1

    .line 1444
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1450
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method final addKnownImePackageNameLocked(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1325
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1326
    return-void
.end method

.method clearKnownImePackageNamesLocked()V
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1321
    return-void
.end method

.method public onBeginPackageChanges()V
    .locals 0

    .line 1371
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1372
    return-void
.end method

.method public onFinishPackageChanges()V
    .locals 0

    .line 1420
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    .line 1421
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1422
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 1342
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1343
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1344
    monitor-exit v0

    return v2

    .line 1346
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 1347
    .local v1, "curInputMethodId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1348
    .local v3, "N":I
    if-eqz v1, :cond_4

    .line 1349
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_4

    .line 1350
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 1351
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1352
    array-length v6, p2

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_3

    aget-object v8, p2, v7

    .line 1353
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1354
    const/4 v2, 0x1

    if-nez p4, :cond_1

    .line 1355
    monitor-exit v0

    return v2

    .line 1357
    :cond_1
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$400(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    .line 1358
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    .line 1359
    monitor-exit v0

    return v2

    .line 1352
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1349
    .end local v5    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1365
    .end local v1    # "curInputMethodId":Ljava/lang/String;
    .end local v3    # "N":I
    .end local v4    # "i":I
    :cond_4
    monitor-exit v0

    .line 1366
    return v2

    .line 1365
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1376
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-nez v0, :cond_0

    .line 1377
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1378
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x200

    .line 1380
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v3

    .line 1378
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1382
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1383
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1387
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .end local v1    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1388
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    .line 1393
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1394
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1399
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1400
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1405
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1406
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1408
    :cond_0
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .locals 4
    .param p1, "packages"    # [Ljava/lang/String;

    .line 1413
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 1414
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    .end local v2    # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1416
    :cond_0
    return-void
.end method
