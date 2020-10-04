.class final Lcom/android/server/appop/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/os/IBinder;)V
    .locals 0
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4670
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4671
    const/4 p1, 0x0

    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 4672
    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 4673
    return-void
.end method

.method private isDefault([Z)Z
    .locals 5
    .param p1, "array"    # [Z

    .line 4819
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4820
    return v1

    .line 4822
    :cond_0
    array-length v0, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-boolean v4, p1, v3

    .line 4823
    .local v4, "value":Z
    if-eqz v4, :cond_1

    .line 4824
    return v2

    .line 4822
    .end local v4    # "value":Z
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4827
    :cond_2
    return v1
.end method


# virtual methods
.method public binderDied()V
    .locals 9

    .line 4794
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 4795
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$1200(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4796
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 4797
    monitor-exit v0

    return-void

    .line 4799
    :cond_0
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 4800
    .local v1, "userCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 4801
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Z

    .line 4802
    .local v3, "restrictions":[Z
    array-length v4, v3

    .line 4803
    .local v4, "restrictionCount":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 4804
    aget-boolean v6, v3, v5

    if-eqz v6, :cond_1

    .line 4805
    move v6, v5

    .line 4806
    .local v6, "changedCode":I
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;

    invoke-direct {v8, p0, v6}, Lcom/android/server/appop/-$$Lambda$AppOpsService$ClientRestrictionState$uMVYManZlOG3nljcsmHU5SaC48k;-><init>(Lcom/android/server/appop/AppOpsService$ClientRestrictionState;I)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4803
    .end local v6    # "changedCode":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 4800
    .end local v3    # "restrictions":[Z
    .end local v4    # "restrictionCount":I
    .end local v5    # "j":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4810
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->destroy()V

    .line 4811
    .end local v1    # "userCount":I
    monitor-exit v0

    .line 4812
    return-void

    .line 4811
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 2

    .line 4815
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4816
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .locals 4
    .param p1, "restriction"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4746
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4747
    return v1

    .line 4749
    :cond_0
    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Z

    .line 4750
    .local v0, "restrictions":[Z
    if-nez v0, :cond_1

    .line 4751
    return v1

    .line 4755
    :cond_1
    const/16 v2, 0x3e8

    const/4 v3, 0x1

    if-le p1, v2, :cond_2

    .line 4756
    add-int/lit16 v2, p1, -0x3e8

    add-int/lit8 v2, v2, 0x5b

    add-int/lit8 p1, v2, -0x1

    .line 4760
    :cond_2
    aget-boolean v2, v0, p1

    if-nez v2, :cond_3

    .line 4761
    return v1

    .line 4763
    :cond_3
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v1, :cond_4

    .line 4764
    return v3

    .line 4766
    :cond_4
    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 4767
    .local v1, "perUserExclusions":[Ljava/lang/String;
    if-nez v1, :cond_5

    .line 4768
    return v3

    .line 4770
    :cond_5
    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v3

    return v2
.end method

.method public isDefault()Z
    .locals 1

    .line 4789
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic lambda$binderDied$0$AppOpsService$ClientRestrictionState(I)V
    .locals 2
    .param p1, "changedCode"    # I

    .line 4806
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    const/4 v1, -0x2

    invoke-static {v0, p1, v1}, Lcom/android/server/appop/AppOpsService;->access$1300(Lcom/android/server/appop/AppOpsService;II)V

    return-void
.end method

.method public removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 4774
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4775
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4776
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4777
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4780
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 4781
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 4782
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4783
    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4786
    :cond_1
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "excludedPackages"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    .line 4677
    const/4 v0, 0x0

    .line 4679
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    .line 4680
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 4684
    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p4, v1, :cond_2

    .line 4685
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v1, v1, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    .line 4687
    .local v1, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 4688
    .local v2, "users":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 4689
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    aput v4, v2, v3

    .line 4688
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4691
    .end local v1    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 4692
    .end local v2    # "users":[I
    :cond_2
    const/4 v1, 0x1

    new-array v1, v1, [I

    aput p4, v1, v2

    move-object v2, v1

    .line 4695
    .restart local v2    # "users":[I
    :goto_1
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v1, :cond_a

    .line 4696
    array-length v1, v2

    .line 4698
    .local v1, "numUsers":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_2
    if-ge v3, v1, :cond_a

    .line 4699
    aget v4, v2, v3

    .line 4701
    .local v4, "thisUserId":I
    iget-object v5, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Z

    .line 4702
    .local v5, "userRestrictions":[Z
    if-nez v5, :cond_3

    if-eqz p2, :cond_3

    .line 4707
    const/16 v6, 0x65

    new-array v5, v6, [Z

    .line 4710
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4712
    :cond_3
    if-eqz v5, :cond_5

    aget-boolean v6, v5, p1

    if-eq v6, p2, :cond_5

    .line 4713
    aput-boolean p2, v5, p1

    .line 4714
    if-nez p2, :cond_4

    invoke-direct {p0, v5}, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 4715
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4716
    const/4 v5, 0x0

    .line 4718
    :cond_4
    const/4 v0, 0x1

    .line 4721
    :cond_5
    if-eqz v5, :cond_9

    .line 4722
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    .line 4723
    .local v6, "noExcludedPackages":Z
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v7, :cond_6

    if-nez v6, :cond_6

    .line 4724
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 4726
    :cond_6
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v7, :cond_9

    .line 4727
    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    .line 4726
    invoke-static {p3, v7}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 4728
    if-eqz v6, :cond_7

    .line 4729
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 4730
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-gtz v7, :cond_8

    .line 4731
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    goto :goto_3

    .line 4734
    :cond_7
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v7, v4, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4736
    :cond_8
    :goto_3
    const/4 v0, 0x1

    .line 4698
    .end local v4    # "thisUserId":I
    .end local v5    # "userRestrictions":[Z
    .end local v6    # "noExcludedPackages":Z
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4742
    .end local v1    # "numUsers":I
    .end local v3    # "i":I
    :cond_a
    return v0
.end method
