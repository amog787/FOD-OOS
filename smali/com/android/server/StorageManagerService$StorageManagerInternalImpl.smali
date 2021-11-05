.class final Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;
.super Landroid/os/storage/StorageManagerInternal;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StorageManagerInternalImpl"
.end annotation


# instance fields
.field private final mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private final mResetListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/storage/StorageManagerInternal$ResetListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 4662
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageManagerInternal;-><init>()V

    .line 4664
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4667
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/StorageManagerService;
    .param p2, "x1"    # Lcom/android/server/StorageManagerService$1;

    .line 4662
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;)V

    return-void
.end method

.method private killAppForOpChange(II)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 4828
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 4830
    .local v0, "am":Landroid/app/IActivityManager;
    :try_start_0
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, -0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4831
    invoke-static {p1}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " changed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4830
    invoke-interface {v0, v1, v2, v3}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4833
    goto :goto_0

    .line 4832
    :catch_0
    move-exception v1

    .line 4834
    :goto_0
    return-void
.end method


# virtual methods
.method public addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 4674
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4675
    return-void
.end method

.method public addResetListener(Landroid/os/storage/StorageManagerInternal$ResetListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/storage/StorageManagerInternal$ResetListener;

    .line 4754
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 4755
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4756
    monitor-exit v0

    .line 4757
    return-void

    .line 4756
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getExternalStorageMountMode(ILjava/lang/String;)I
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4726
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$5300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4727
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/StorageManagerService;->access$5400(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 4730
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 4731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$6400(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4732
    .local v1, "packagesForUid":[Ljava/lang/String;
    aget-object v2, v1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    goto :goto_0

    .line 4734
    .end local v1    # "packagesForUid":[Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 4736
    :cond_1
    :goto_0
    nop

    .line 4738
    :goto_1
    const v1, 0x7fffffff

    .line 4739
    .local v1, "mountMode":I
    iget-object v2, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 4740
    .local v3, "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    invoke-interface {v3, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->getMountMode(ILjava/lang/String;)I

    move-result v4

    .line 4741
    .local v4, "policyMode":I
    if-nez v4, :cond_2

    .line 4742
    return v0

    .line 4744
    :cond_2
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4745
    .end local v3    # "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    .end local v4    # "policyMode":I
    goto :goto_2

    .line 4746
    :cond_3
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_4

    .line 4747
    return v0

    .line 4749
    :cond_4
    return v1
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4811
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 4812
    return v0

    .line 4814
    :cond_0
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$5300()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4815
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$5400(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 4818
    :cond_2
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 4819
    .local v3, "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    invoke-interface {v3, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v4

    .line 4820
    .local v4, "policyHasStorage":Z
    if-nez v4, :cond_3

    .line 4821
    return v2

    .line 4823
    .end local v3    # "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    .end local v4    # "policyHasStorage":Z
    :cond_3
    goto :goto_1

    .line 4824
    :cond_4
    return v0
.end method

.method public hasLegacyExternalStorage(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 4776
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4777
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$6500(Lcom/android/server/StorageManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 4778
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isExternalStorageService(I)Z
    .locals 2
    .param p1, "uid"    # I

    .line 4805
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$6600(Lcom/android/server/StorageManagerService;)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAppOpsChanged(IILjava/lang/String;I)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 4837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4839
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v2}, Lcom/android/server/StorageManagerService;->access$6700(Lcom/android/server/StorageManagerService;)Z

    move-result v2

    const/16 v3, 0x42

    if-eqz v2, :cond_6

    .line 4841
    if-eq p1, v3, :cond_4

    const/16 v2, 0x57

    if-eq p1, v2, :cond_2

    const/16 v2, 0x5c

    if-eq p1, v2, :cond_0

    goto :goto_2

    .line 4862
    :cond_0
    if-eqz p4, :cond_1

    .line 4868
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->killAppForOpChange(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4887
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4870
    return-void

    .line 4872
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    if-nez p4, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    invoke-static {v2, p3, p2, v3}, Lcom/android/server/StorageManagerService;->access$4400(Lcom/android/server/StorageManagerService;Ljava/lang/String;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4887
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4873
    return-void

    .line 4846
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$6800()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 4847
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4849
    .local v2, "am":Landroid/app/IActivityManager;
    :try_start_3
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/4 v4, -0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "REQUESTING_INSTALL_PACKAGES changed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p3, v3, v4, v5}, Landroid/app/IActivityManager;->killApplication(Ljava/lang/String;IILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4853
    goto :goto_1

    .line 4852
    :catch_0
    move-exception v3

    .line 4887
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4854
    return-void

    .line 4859
    .end local v2    # "am":Landroid/app/IActivityManager;
    :cond_5
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->killAppForOpChange(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4887
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4860
    return-void

    .line 4877
    :cond_6
    :goto_2
    if-nez p4, :cond_8

    const/16 v2, 0x3b

    if-eq p1, v2, :cond_7

    const/16 v2, 0x3c

    if-eq p1, v2, :cond_7

    if-ne p1, v3, :cond_8

    .line 4880
    :cond_7
    :try_start_5
    const-class v2, Landroid/os/UserManagerInternal;

    .line 4881
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    .line 4882
    .local v2, "userManagerInternal":Landroid/os/UserManagerInternal;
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 4883
    invoke-virtual {p0, p2, p3}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4887
    .end local v2    # "userManagerInternal":Landroid/os/UserManagerInternal;
    :cond_8
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4888
    nop

    .line 4889
    return-void

    .line 4887
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4888
    throw v2
.end method

.method public onExternalStoragePolicyChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4720
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v0

    .line 4721
    .local v0, "mountMode":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/StorageManagerService;->access$5500(Lcom/android/server/StorageManagerService;II)V

    .line 4722
    return-void
.end method

.method public onReset(Landroid/os/IVold;)V
    .locals 3
    .param p1, "vold"    # Landroid/os/IVold;

    .line 4760
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 4761
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManagerInternal$ResetListener;

    .line 4762
    .local v2, "listener":Landroid/os/storage/StorageManagerInternal$ResetListener;
    invoke-interface {v2, p1}, Landroid/os/storage/StorageManagerInternal$ResetListener;->onReset(Landroid/os/IVold;)V

    .line 4763
    .end local v2    # "listener":Landroid/os/storage/StorageManagerInternal$ResetListener;
    goto :goto_0

    .line 4764
    :cond_0
    monitor-exit v0

    .line 4765
    return-void

    .line 4764
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prepareAppDataAfterInstall(Ljava/lang/String;I)V
    .locals 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 4783
    const-string v0, "StorageManagerService"

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 4784
    .local v1, "userId":I
    new-instance v2, Landroid/os/Environment$UserEnvironment;

    invoke-direct {v2, v1}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 4788
    .local v2, "userEnv":Landroid/os/Environment$UserEnvironment;
    invoke-virtual {v2, p1}, Landroid/os/Environment$UserEnvironment;->buildExternalStorageAppObbDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v3

    .line 4789
    .local v3, "packageObbDirs":[Ljava/io/File;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_0

    aget-object v6, v3, v5

    .line 4791
    .local v6, "packageObbDir":Ljava/io/File;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v7}, Lcom/android/server/StorageManagerService;->access$1600(Lcom/android/server/StorageManagerService;)Landroid/os/IVold;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, p2}, Landroid/os/IVold;->fixupAppDir(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 4794
    :catch_0
    move-exception v7

    .line 4798
    .local v7, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to fixup app dir for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4792
    .end local v7    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    .line 4793
    .local v7, "e":Ljava/io/IOException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to get canonical path for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4799
    .end local v7    # "e":Ljava/io/IOException;
    :goto_1
    nop

    .line 4789
    .end local v6    # "packageObbDir":Ljava/io/File;
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4801
    :cond_0
    return-void
.end method

.method public prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z
    .locals 9
    .param p1, "userId"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 4684
    .local p2, "packageList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$3000(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4685
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$6200(Lcom/android/server/StorageManagerService;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4686
    const-string v1, "StorageManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not unlocked yet so skip mounting obb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    monitor-exit v0

    return v2

    .line 4689
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4691
    :try_start_1
    const-string/jumbo v0, "vold"

    .line 4692
    invoke-static {v0}, Landroid/os/ServiceManager;->getServiceOrThrow(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4691
    invoke-static {v0}, Landroid/os/IVold$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVold;

    move-result-object v0

    .line 4693
    .local v0, "vold":Landroid/os/IVold;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4694
    .local v3, "pkg":Ljava/lang/String;
    const-string v5, "/storage/emulated/%d/Android/obb/%s/"

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/Object;

    .line 4695
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    aput-object v3, v7, v4

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4696
    .local v5, "packageObbDir":Ljava/lang/String;
    const-string v7, "/storage/emulated/%d/Android/data/%s/"

    new-array v6, v6, [Ljava/lang/Object;

    .line 4698
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    aput-object v3, v6, v4

    .line 4697
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 4701
    .local v4, "packageDataDir":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v6}, Lcom/android/server/StorageManagerService;->access$6300(Lcom/android/server/StorageManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getUid()I

    move-result v6

    invoke-static {p1, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 4702
    .local v6, "appUid":I
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4703
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 4704
    invoke-interface {v0, v5, v6}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V

    .line 4706
    :cond_1
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v7, v8

    .line 4707
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    .line 4708
    invoke-interface {v0, v4, v6}, Landroid/os/IVold;->setupAppDir(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4710
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "packageDataDir":Ljava/lang/String;
    .end local v5    # "packageObbDir":Ljava/lang/String;
    .end local v6    # "appUid":I
    .end local v7    # "file":Ljava/io/File;
    :cond_2
    goto :goto_0

    .line 4714
    .end local v0    # "vold":Landroid/os/IVold;
    :cond_3
    nop

    .line 4715
    return v4

    .line 4711
    :catch_0
    move-exception v0

    .line 4712
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create obb and data directories for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "StorageManagerService"

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4713
    return v2

    .line 4689
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public resetUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4771
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0}, Lcom/android/server/StorageManagerService;->access$2600(Lcom/android/server/StorageManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4772
    return-void
.end method
