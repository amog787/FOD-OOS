.class Lcom/android/server/pm/PackageManagerService$6;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$filterApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 20536
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$6;->val$filterApp:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$userId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$6;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 20538
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20540
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$6;->val$filterApp:Z

    if-nez v0, :cond_4

    .line 20541
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->val$packageName:Ljava/lang/String;

    const-string v2, "clearApplicationUserData"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v0

    .line 20543
    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 20544
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$userId:I

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$4400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v2

    .line 20545
    .local v2, "succeeded":Z
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 20546
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20547
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$6;->val$userId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V

    .line 20549
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20550
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 20551
    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_0
    if-eqz v2, :cond_5

    .line 20553
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 20554
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 20555
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_1

    .line 20556
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 20558
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$userId:I

    const-string v5, "android.permission.SUSPEND_APPS"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 20560
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$6;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$6;->val$userId:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Ljava/lang/String;I)V

    .line 20562
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_2
    goto :goto_1

    .line 20549
    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$6;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 20545
    .end local v2    # "succeeded":Z
    .restart local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$6;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$6;
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 20541
    .restart local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$6;
    :catchall_2
    move-exception v1

    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$6;
    :try_start_8
    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 20550
    .restart local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$6;
    :catchall_3
    move-exception v2

    if-eqz v0, :cond_3

    :try_start_9
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_0

    :catchall_4
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2

    .line 20564
    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_4
    const/4 v2, 0x0

    .line 20566
    .restart local v2    # "succeeded":Z
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$6;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_6

    .line 20568
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$6;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_0

    .line 20571
    goto :goto_2

    .line 20569
    :catch_0
    move-exception v0

    .line 20570
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20573
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    return-void
.end method
