.class Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;
.super Lcom/android/server/pm/PackageManagerService$HandlerParams;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiPackageInstallParams"
.end annotation


# instance fields
.field private final mChildParams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/pm/PackageManagerService$InstallParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mCurrentState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/pm/PackageManagerService$InstallArgs;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRet:I

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;Ljava/util/List;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    .line 15498
    .local p3, "activeInstallSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15499
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15489
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mRet:I

    .line 15500
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 15503
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    .line 15504
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 15505
    new-instance v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    invoke-direct {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V

    .line 15506
    .local v1, "childParams":Lcom/android/server/pm/PackageManagerService$InstallParams;
    iput-object p0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    .line 15507
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15504
    .end local v1    # "childParams":Lcom/android/server/pm/PackageManagerService$InstallParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15509
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    .line 15510
    return-void

    .line 15501
    :cond_1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "No child sessions found!"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    .line 15524
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 15525
    .local v1, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 15526
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 15527
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mRet:I

    .line 15529
    .end local v1    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :cond_0
    goto :goto_0

    .line 15530
    :cond_1
    return-void
.end method

.method handleStartCopy()V
    .locals 4

    .line 15514
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 15515
    .local v1, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleStartCopy()V

    .line 15516
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 15517
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mRet:I

    .line 15519
    .end local v1    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :cond_0
    goto :goto_0

    .line 15520
    :cond_1
    return-void
.end method

.method tryProcessInstallRequest(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .locals 9
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p2, "currentStatus"    # I

    .line 15533
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15534
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 15535
    return-void

    .line 15537
    :cond_0
    const/4 v0, 0x1

    .line 15538
    .local v0, "completeStatus":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 15539
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 15540
    return-void

    .line 15541
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 15542
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15543
    goto :goto_1

    .line 15545
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 15546
    :cond_3
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15547
    .local v1, "installRequests":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$InstallRequest;>;"
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 15548
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/PackageManagerService$InstallArgs;Ljava/lang/Integer;>;"
    new-instance v5, Lcom/android/server/pm/PackageManagerService$InstallRequest;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15549
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;I)Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService$InstallRequest;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$1;)V

    .line 15548
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15550
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/PackageManagerService$InstallArgs;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 15551
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-static {v2, v3, v1}, Lcom/android/server/pm/PackageManagerService;->access$2400(Lcom/android/server/pm/PackageManagerService;ZLjava/util/List;)V

    .line 15554
    return-void
.end method
