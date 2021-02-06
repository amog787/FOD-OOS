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

    .line 15157
    .local p3, "activeInstallSessions":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15158
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$HandlerParams;-><init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V

    .line 15148
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mRet:I

    .line 15159
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 15162
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    .line 15163
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 15164
    new-instance v1, Lcom/android/server/pm/PackageManagerService$InstallParams;

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;

    invoke-direct {v1, p1, v2}, Lcom/android/server/pm/PackageManagerService$InstallParams;-><init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ActiveInstallSession;)V

    .line 15165
    .local v1, "childParams":Lcom/android/server/pm/PackageManagerService$InstallParams;
    iput-object p0, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mParentInstallParams:Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;

    .line 15166
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15163
    .end local v1    # "childParams":Lcom/android/server/pm/PackageManagerService$InstallParams;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 15168
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    .line 15169
    return-void

    .line 15160
    :cond_1
    new-instance v0, Lcom/android/server/pm/PackageManagerException;

    const-string v1, "No child sessions found!"

    invoke-direct {v0, v1}, Lcom/android/server/pm/PackageManagerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method handleReturnCode()V
    .locals 4

    .line 15183
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

    .line 15184
    .local v1, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleReturnCode()V

    .line 15185
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 15186
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mRet:I

    .line 15188
    .end local v1    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :cond_0
    goto :goto_0

    .line 15189
    :cond_1
    return-void
.end method

.method handleStartCopy()V
    .locals 4

    .line 15173
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

    .line 15174
    .local v1, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleStartCopy()V

    .line 15175
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 15176
    iget v2, v1, Lcom/android/server/pm/PackageManagerService$InstallParams;->mRet:I

    iput v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mRet:I

    .line 15178
    .end local v1    # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :cond_0
    goto :goto_0

    .line 15179
    :cond_1
    return-void
.end method

.method tryProcessInstallRequest(Lcom/android/server/pm/PackageManagerService$InstallArgs;I)V
    .locals 9
    .param p1, "args"    # Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .param p2, "currentStatus"    # I

    .line 15192
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15193
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mChildParams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 15194
    return-void

    .line 15196
    :cond_0
    const/4 v0, 0x1

    .line 15197
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

    .line 15198
    .local v2, "status":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_1

    .line 15199
    return-void

    .line 15200
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v3, :cond_2

    .line 15201
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 15202
    goto :goto_1

    .line 15204
    .end local v2    # "status":Ljava/lang/Integer;
    :cond_2
    goto :goto_0

    .line 15205
    :cond_3
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->mCurrentState:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 15206
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

    .line 15207
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/PackageManagerService$InstallArgs;Ljava/lang/Integer;>;"
    new-instance v5, Lcom/android/server/pm/PackageManagerService$InstallRequest;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 15208
    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->access$2200(Lcom/android/server/pm/PackageManagerService;I)Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/android/server/pm/PackageManagerService$InstallRequest;-><init>(Lcom/android/server/pm/PackageManagerService$InstallArgs;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Lcom/android/server/pm/PackageManagerService$1;)V

    .line 15207
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15209
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/pm/PackageManagerService$InstallArgs;Ljava/lang/Integer;>;"
    goto :goto_2

    .line 15210
    :cond_4
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MultiPackageInstallParams;->this$0:Lcom/android/server/pm/PackageManagerService;

    if-ne v0, v3, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-static {v2, v3, v1}, Lcom/android/server/pm/PackageManagerService;->access$2300(Lcom/android/server/pm/PackageManagerService;ZLjava/util/List;)V

    .line 15213
    return-void
.end method
