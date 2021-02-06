.class Lcom/android/server/pm/PackageManagerService$5;
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

    .line 19958
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$5;->val$filterApp:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$userId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$5;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 19960
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19962
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$filterApp:Z

    if-nez v0, :cond_4

    .line 19963
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$5;->val$packageName:Ljava/lang/String;

    const-string v2, "clearApplicationUserData"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v0

    .line 19965
    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19966
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$userId:I

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v2

    .line 19967
    .local v2, "succeeded":Z
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19968
    :try_start_2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19969
    :try_start_3
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$5;->val$userId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V

    .line 19971
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 19972
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 19973
    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_0
    if-eqz v2, :cond_5

    .line 19975
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 19976
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 19977
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_1

    .line 19978
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 19980
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$userId:I

    const-string v5, "android.permission.SUSPEND_APPS"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_2

    .line 19982
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$userId:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Ljava/lang/String;I)V

    .line 19983
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$userId:I

    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageManagerService;->removeAllDistractingPackageRestrictions(I)V

    .line 19984
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$userId:I

    invoke-static {v1, v3}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;I)V

    .line 19986
    .end local v0    # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_2
    goto :goto_1

    .line 19971
    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$5;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 19967
    .end local v2    # "succeeded":Z
    .restart local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$5;
    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$5;
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 19963
    .restart local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$5;
    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v1

    .line 19988
    .end local v0    # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_4
    const/4 v2, 0x0

    .line 19990
    .restart local v2    # "succeeded":Z
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_6

    .line 19992
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$5;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0

    .line 19995
    goto :goto_2

    .line 19993
    :catch_0
    move-exception v0

    .line 19994
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19997
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6
    :goto_2
    return-void
.end method
