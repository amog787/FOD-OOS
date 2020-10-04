.class Lcom/android/server/infra/AbstractMasterSystemService$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "AbstractMasterSystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/infra/AbstractMasterSystemService;->startTrackingPackageChanges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/infra/AbstractMasterSystemService;


# direct methods
.method constructor <init>(Lcom/android/server/infra/AbstractMasterSystemService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/infra/AbstractMasterSystemService;

    .line 721
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iput-object p1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method private getActiveServicePackageNameLocked()Ljava/lang/String;
    .locals 4

    .line 828
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    .line 829
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    .line 830
    .local v1, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 831
    return-object v2

    .line 833
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 834
    .local v3, "serviceComponent":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 835
    return-object v2

    .line 837
    :cond_1
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleActiveServiceRemoved(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 817
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 819
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 820
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v0}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceSettingsProperty()Ljava/lang/String;

    move-result-object v0

    .line 821
    .local v0, "serviceSettingsProperty":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 822
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 825
    :cond_0
    return-void

    .line 819
    .end local v0    # "serviceSettingsProperty":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private handlePackageUpdateLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 842
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v1, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$1$TLhe3_2yHs5UB69Y7lf2s7OxJCo;

    invoke-direct {v1, p1}, Lcom/android/server/infra/-$$Lambda$AbstractMasterSystemService$1$TLhe3_2yHs5UB69Y7lf2s7OxJCo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 843
    return-void
.end method

.method static synthetic lambda$handlePackageUpdateLocked$0(Ljava/lang/String;Lcom/android/server/infra/AbstractPerUserSystemService;)V
    .locals 0
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "s"    # Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 842
    invoke-virtual {p1, p0}, Lcom/android/server/infra/AbstractPerUserSystemService;->handlePackageUpdateLocked(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    .line 800
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 801
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v1

    .line 802
    .local v1, "activePackageName":Ljava/lang/String;
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, p2, v4

    .line 803
    .local v5, "pkg":Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 804
    if-nez p4, :cond_0

    .line 805
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    .line 807
    :cond_0
    iget-object v6, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_1

    .line 809
    :cond_1
    invoke-direct {p0, v5}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 802
    .end local v5    # "pkg":Ljava/lang/String;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 812
    .end local v1    # "activePackageName":Ljava/lang/String;
    :cond_2
    monitor-exit v0

    .line 813
    return v3

    .line 812
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 783
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v1

    .line 785
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v2, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v2

    .line 786
    .local v2, "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    if-eqz v2, :cond_0

    .line 787
    invoke-virtual {v2}, Lcom/android/server/infra/AbstractPerUserSystemService;->getServiceComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 788
    .local v3, "componentName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    .line 789
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 790
    invoke-direct {p0, v1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handleActiveServiceRemoved(I)V

    .line 794
    .end local v1    # "userId":I
    .end local v2    # "service":Lcom/android/server/infra/AbstractPerUserSystemService;, "TS;"
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_0
    monitor-exit v0

    .line 795
    return-void

    .line 794
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 762
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateFinished(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v0

    .line 764
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v1, v1, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_0
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    .line 766
    :cond_1
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v2}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    nop

    .line 767
    .local v2, "activePackageName":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 768
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 769
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 770
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 771
    iget-object v4, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v4, v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$002(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 774
    :cond_2
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v0}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatedLocked(I)V

    goto :goto_1

    .line 776
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService$1;->handlePackageUpdateLocked(Ljava/lang/String;)V

    .line 778
    .end local v2    # "activePackageName":Ljava/lang/String;
    :goto_1
    monitor-exit v1

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onPackageUpdateStarted(Ljava/lang/String;I)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 725
    .local p0, "this":Lcom/android/server/infra/AbstractMasterSystemService$1;, "Lcom/android/server/infra/AbstractMasterSystemService$1;"
    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->verbose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdateStarted(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    invoke-direct {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getActiveServicePackageNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 727
    .local v0, "activePackageName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 729
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/infra/AbstractMasterSystemService$1;->getChangingUserId()I

    move-result v1

    .line 730
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v2, v2, Lcom/android/server/infra/AbstractMasterSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 731
    :try_start_0
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v3

    if-nez v3, :cond_2

    .line 732
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    new-instance v4, Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v5}, Lcom/android/server/infra/AbstractMasterSystemService;->access$100(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    invoke-direct {v4, v5}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v3, v4}, Lcom/android/server/infra/AbstractMasterSystemService;->access$002(Lcom/android/server/infra/AbstractMasterSystemService;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 734
    :cond_2
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$000(Lcom/android/server/infra/AbstractMasterSystemService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 735
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->onServicePackageUpdatingLocked(I)V

    .line 736
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v3

    if-eqz v3, :cond_5

    .line 737
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_3

    .line 738
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " because package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is being updated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 742
    :cond_3
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->removeCachedServiceLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 744
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-static {v3}, Lcom/android/server/infra/AbstractMasterSystemService;->access$200(Lcom/android/server/infra/AbstractMasterSystemService;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 745
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_4

    .line 746
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Eagerly recreating service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_4
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    invoke-virtual {v3, v1}, Lcom/android/server/infra/AbstractMasterSystemService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    goto :goto_0

    .line 752
    :cond_5
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-boolean v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->debug:Z

    if-eqz v3, :cond_6

    .line 753
    iget-object v3, p0, Lcom/android/server/infra/AbstractMasterSystemService$1;->this$0:Lcom/android/server/infra/AbstractMasterSystemService;

    iget-object v3, v3, Lcom/android/server/infra/AbstractMasterSystemService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Holding service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " while package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is being updated"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    :cond_6
    :goto_0
    monitor-exit v2

    .line 758
    return-void

    .line 757
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
