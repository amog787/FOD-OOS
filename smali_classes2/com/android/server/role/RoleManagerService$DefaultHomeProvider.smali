.class Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;
.super Ljava/lang/Object;
.source "RoleManagerService.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultHomeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultHomeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p2, "x1"    # Lcom/android/server/role/RoleManagerService$1;

    .line 806
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method

.method static synthetic lambda$setDefaultHomeAsync$0(Ljava/lang/String;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "result"    # Landroid/os/Bundle;

    .line 820
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 821
    .local v0, "successful":Z
    :goto_0
    if-nez v0, :cond_1

    .line 822
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set default home: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :cond_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 825
    return-void
.end method


# virtual methods
.method public getDefaultHome(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 812
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    const-string v1, "android.app.role.HOME"

    invoke-virtual {v0, v1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultHomeAsync(Ljava/lang/String;ILjava/util/function/Consumer;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 819
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4;

    invoke-direct {v1, p1, p3}, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultHomeProvider$9eeqZaqhD2FohE8PZOcBaWBSZu4;-><init>(Ljava/lang/String;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 826
    .local v0, "remoteCallback":Landroid/os/RemoteCallback;
    const-string v1, "android.app.role.HOME"

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 827
    iget-object v3, p0, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v3, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v3

    invoke-virtual {v3, v1, p1, v2, v0}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    goto :goto_0

    .line 830
    :cond_0
    iget-object v3, p0, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v3, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 836
    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v3, 0xfc

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 837
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$DefaultHomeProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-virtual {v1}, Lcom/android/server/role/RoleManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 838
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v2, "default_application_home"

    invoke-static {v1, v2, p1, p2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 841
    .end local v1    # "resolver":Landroid/content/ContentResolver;
    :cond_1
    return-void
.end method
