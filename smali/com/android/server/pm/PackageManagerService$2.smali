.class Lcom/android/server/pm/PackageManagerService$2;
.super Landroid/os/storage/StorageEventListener;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 2561
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 9
    .param p1, "fsUuid"    # Ljava/lang/String;

    .line 2587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2588
    const-string v0, "PackageManager"

    const-string v1, "Forgetting internal storage is probably a mistake; ignoring"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2589
    return-void

    .line 2593
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2594
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2595
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 2596
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    const-string v4, "PackageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Destroying "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " because volume was forgotten"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v5, Landroid/content/pm/VersionedPackage;

    iget-object v6, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    const/4 v7, -0x1

    invoke-direct {v5, v6, v7}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    new-instance v6, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;

    const/4 v7, 0x0

    invoke-direct {v6, v7}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;-><init>(Landroid/content/pm/IPackageDeleteObserver;)V

    .line 2599
    invoke-virtual {v6}, Landroid/content/pm/PackageManager$LegacyPackageDeleteObserver;->getBinder()Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    .line 2597
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService;->deletePackageVersioned(Landroid/content/pm/VersionedPackage;Landroid/content/pm/IPackageDeleteObserver2;II)V

    .line 2604
    invoke-static {}, Lcom/android/server/AttributeCache;->instance()Lcom/android/server/AttributeCache;

    move-result-object v4

    iget-object v5, v3, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/server/AttributeCache;->removePackage(Ljava/lang/String;)V

    .line 2605
    .end local v3    # "ps":Lcom/android/server/pm/PackageSetting;
    goto :goto_0

    .line 2607
    :cond_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2, p1}, Lcom/android/server/pm/Settings;->onVolumeForgotten(Ljava/lang/String;)V

    .line 2608
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v2}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 2609
    .end local v1    # "packages":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageSetting;>;"
    monitor-exit v0

    .line 2610
    return-void

    .line 2609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVolumeStateChanged(Landroid/os/storage/VolumeInfo;II)V
    .locals 2
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;
    .param p2, "oldState"    # I
    .param p3, "newState"    # I

    .line 2564
    iget v0, p1, Landroid/os/storage/VolumeInfo;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2565
    iget v0, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2566
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v0

    .line 2570
    .local v0, "volumeUuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/UserManagerService;->reconcileUsers(Ljava/lang/String;)V

    .line 2571
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 2575
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageInstallerService;->onPrivateVolumeMounted(Ljava/lang/String;)V

    .line 2577
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    .end local v0    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    .line 2579
    :cond_0
    iget v0, p1, Landroid/os/storage/VolumeInfo;->state:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 2580
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$2;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;Landroid/os/storage/VolumeInfo;)V

    nop

    .line 2583
    :cond_1
    :goto_0
    return-void
.end method
