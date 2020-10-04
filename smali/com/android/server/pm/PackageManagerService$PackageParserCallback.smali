.class Lcom/android/server/pm/PackageManagerService$PackageParserCallback;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageParser$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageParserCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 816
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getStaticOverlayPackages$0(Landroid/content/pm/PackageParser$Package;)I
    .locals 1
    .param p0, "p"    # Landroid/content/pm/PackageParser$Package;

    .line 840
    iget v0, p0, Landroid/content/pm/PackageParser$Package;->mOverlayPriority:I

    return v0
.end method


# virtual methods
.method public final getOverlayApks(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;

    .line 896
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .line 901
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final getStaticOverlayPackages(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p2, "targetPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;"
        }
    .end annotation

    .line 823
    .local p1, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    const-string v0, "android"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 826
    const/4 v0, 0x0

    return-object v0

    .line 829
    :cond_0
    const/4 v0, 0x0

    .line 830
    .local v0, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 831
    .local v2, "p":Landroid/content/pm/PackageParser$Package;
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Landroid/content/pm/PackageParser$Package;->mOverlayIsStatic:Z

    if-eqz v3, :cond_2

    .line 832
    if-nez v0, :cond_1

    .line 833
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    .line 835
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 837
    .end local v2    # "p":Landroid/content/pm/PackageParser$Package;
    :cond_2
    goto :goto_0

    .line 838
    :cond_3
    if-eqz v0, :cond_4

    .line 839
    sget-object v1, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;->INSTANCE:Lcom/android/server/pm/-$$Lambda$PackageManagerService$PackageParserCallback$xinvBJUpQse3J1IBBKjvYTIW8MQ;

    .line 840
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 841
    .local v1, "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/PackageParser$Package;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 843
    .end local v1    # "cmp":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_4
    return-object v0
.end method

.method getStaticOverlayPaths(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "targetPath"    # Ljava/lang/String;

    .line 884
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v0

    .line 885
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 886
    :try_start_1
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    .line 887
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 886
    invoke-virtual {p0, v2, p1}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPackages(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 888
    .local v2, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 891
    :try_start_2
    invoke-virtual {p0, v2, p2}, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->getStaticOverlayPaths(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v1

    .line 888
    .end local v2    # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Lcom/android/server/pm/PackageManagerService$PackageParserCallback;
    .end local p1    # "targetPackageName":Ljava/lang/String;
    .end local p2    # "targetPath":Ljava/lang/String;
    :try_start_4
    throw v2

    .line 892
    .restart local p0    # "this":Lcom/android/server/pm/PackageManagerService$PackageParserCallback;
    .restart local p1    # "targetPackageName":Ljava/lang/String;
    .restart local p2    # "targetPath":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method final getStaticOverlayPaths(Ljava/util/List;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p2, "targetPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 848
    .local p1, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Package;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 851
    :cond_0
    const/4 v1, 0x0

    .line 852
    .local v1, "overlayPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 853
    .local v3, "overlayPackage":Landroid/content/pm/PackageParser$Package;
    if-nez p2, :cond_2

    .line 854
    if-nez v1, :cond_1

    .line 855
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 857
    :cond_1
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 858
    goto :goto_0

    .line 867
    :cond_2
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    .line 869
    invoke-static {v4}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v4

    .line 868
    invoke-static {v4}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v4

    .line 867
    invoke-virtual {v5, p2, v6, v4}, Lcom/android/server/pm/Installer;->idmap(Ljava/lang/String;Ljava/lang/String;I)V

    .line 870
    if-nez v1, :cond_3

    .line 871
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v4

    .line 873
    :cond_3
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    goto :goto_1

    .line 874
    :catch_0
    move-exception v4

    .line 875
    .local v4, "e":Lcom/android/server/pm/Installer$InstallerException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to generate idmap for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " and "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    .end local v3    # "overlayPackage":Landroid/content/pm/PackageParser$Package;
    .end local v4    # "e":Lcom/android/server/pm/Installer$InstallerException;
    :goto_1
    goto :goto_0

    .line 879
    :cond_4
    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    new-array v0, v4, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_2
    return-object v0

    .line 849
    .end local v1    # "overlayPathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    :goto_3
    return-object v0
.end method

.method public final hasFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .line 818
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageParserCallback;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
