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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mResetListeners"
        }
    .end annotation

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

    .line 3993
    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageManagerInternal;-><init>()V

    .line 3995
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 3998
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/StorageManagerService;
    .param p2, "x1"    # Lcom/android/server/StorageManagerService$1;

    .line 3993
    invoke-direct {p0, p1}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;-><init>(Lcom/android/server/StorageManagerService;)V

    return-void
.end method


# virtual methods
.method public addExternalStoragePolicy(Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;)V
    .locals 1
    .param p1, "policy"    # Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;

    .line 4005
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mPolicies:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 4006
    return-void
.end method

.method public addResetListener(Landroid/os/storage/StorageManagerInternal$ResetListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/storage/StorageManagerInternal$ResetListener;

    .line 4044
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 4045
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4046
    monitor-exit v0

    .line 4047
    return-void

    .line 4046
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

    .line 4016
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$4700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4017
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result v0

    return v0

    .line 4020
    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 4021
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1}, Lcom/android/server/StorageManagerService;->access$5600(Lcom/android/server/StorageManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 4022
    .local v1, "packagesForUid":[Ljava/lang/String;
    aget-object v2, v1, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v2

    goto :goto_0

    .line 4024
    .end local v1    # "packagesForUid":[Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1

    .line 4026
    :cond_1
    :goto_0
    nop

    .line 4028
    :goto_1
    const v1, 0x7fffffff

    .line 4029
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

    .line 4030
    .local v3, "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    invoke-interface {v3, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->getMountMode(ILjava/lang/String;)I

    move-result v4

    .line 4031
    .local v4, "policyMode":I
    if-nez v4, :cond_2

    .line 4032
    return v0

    .line 4034
    :cond_2
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4035
    .end local v3    # "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    .end local v4    # "policyMode":I
    goto :goto_2

    .line 4036
    :cond_3
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_4

    .line 4037
    return v0

    .line 4039
    :cond_4
    return v1
.end method

.method public hasExternalStorage(ILjava/lang/String;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4060
    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 4061
    return v0

    .line 4063
    :cond_0
    invoke-static {}, Lcom/android/server/StorageManagerService;->access$4700()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 4064
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/StorageManagerService;->access$4800(Lcom/android/server/StorageManagerService;ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 4067
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

    .line 4068
    .local v3, "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    invoke-interface {v3, p1, p2}, Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;->hasExternalStorage(ILjava/lang/String;)Z

    move-result v4

    .line 4069
    .local v4, "policyHasStorage":Z
    if-nez v4, :cond_3

    .line 4070
    return v2

    .line 4072
    .end local v3    # "policy":Landroid/os/storage/StorageManagerInternal$ExternalStorageMountPolicy;
    .end local v4    # "policyHasStorage":Z
    :cond_3
    goto :goto_1

    .line 4073
    :cond_4
    return v0
.end method

.method public onAppOpsChanged(IILjava/lang/String;I)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .line 4078
    if-nez p4, :cond_2

    const/16 v0, 0x3b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x42

    if-ne p1, v0, :cond_2

    .line 4081
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4083
    .local v0, "token":J
    :try_start_0
    const-class v2, Landroid/os/UserManagerInternal;

    .line 4084
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManagerInternal;

    .line 4085
    .local v2, "userManagerInternal":Landroid/os/UserManagerInternal;
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManagerInternal;->isUserInitialized(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4086
    invoke-virtual {p0, p2, p3}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->onExternalStoragePolicyChanged(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4089
    .end local v2    # "userManagerInternal":Landroid/os/UserManagerInternal;
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4090
    goto :goto_0

    .line 4089
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 4092
    .end local v0    # "token":J
    :cond_2
    :goto_0
    return-void
.end method

.method public onExternalStoragePolicyChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 4010
    invoke-virtual {p0, p1, p2}, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v0

    .line 4011
    .local v0, "mountMode":I
    iget-object v1, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/StorageManagerService;->access$4900(Lcom/android/server/StorageManagerService;II)V

    .line 4012
    return-void
.end method

.method public onReset(Landroid/os/IVold;)V
    .locals 3
    .param p1, "vold"    # Landroid/os/IVold;

    .line 4050
    iget-object v0, p0, Lcom/android/server/StorageManagerService$StorageManagerInternalImpl;->mResetListeners:Ljava/util/List;

    monitor-enter v0

    .line 4051
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

    .line 4052
    .local v2, "listener":Landroid/os/storage/StorageManagerInternal$ResetListener;
    invoke-interface {v2, p1}, Landroid/os/storage/StorageManagerInternal$ResetListener;->onReset(Landroid/os/IVold;)V

    .line 4053
    .end local v2    # "listener":Landroid/os/storage/StorageManagerInternal$ResetListener;
    goto :goto_0

    .line 4054
    :cond_0
    monitor-exit v0

    .line 4055
    return-void

    .line 4054
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
