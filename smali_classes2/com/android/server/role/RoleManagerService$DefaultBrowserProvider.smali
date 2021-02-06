.class Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;
.super Ljava/lang/Object;
.source "RoleManagerService.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal$DefaultBrowserProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultBrowserProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/role/RoleManagerService;
    .param p2, "x1"    # Lcom/android/server/role/RoleManagerService$1;

    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method

.method static synthetic lambda$setDefaultBrowser$0(Lcom/android/internal/infra/AndroidFuture;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "future"    # Lcom/android/internal/infra/AndroidFuture;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 754
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 755
    .local v0, "successful":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 756
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    goto :goto_1

    .line 758
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 760
    :goto_1
    return-void
.end method

.method static synthetic lambda$setDefaultBrowserAsync$1(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "result"    # Landroid/os/Bundle;

    .line 780
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 781
    .local v0, "successful":Z
    :goto_0
    if-nez v0, :cond_1

    .line 782
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set default browser: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_1
    return-void
.end method


# virtual methods
.method public getDefaultBrowser(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    .line 746
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object v0

    const-string v1, "android.app.role.BROWSER"

    invoke-virtual {v0, v1}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setDefaultBrowser(Ljava/lang/String;I)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 752
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 753
    .local v0, "future":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    new-instance v1, Landroid/os/RemoteCallback;

    new-instance v2, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$X3gMGYlhUgmYMuqj0K5NlCALn5E;

    invoke-direct {v2, v0}, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$X3gMGYlhUgmYMuqj0K5NlCALn5E;-><init>(Lcom/android/internal/infra/AndroidFuture;)V

    invoke-direct {v1, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 761
    .local v1, "callback":Landroid/os/RemoteCallback;
    const-string v2, "android.app.role.BROWSER"

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 762
    iget-object v4, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v4, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v4

    invoke-virtual {v4, v2, p1, v3, v1}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    goto :goto_0

    .line 765
    :cond_0
    iget-object v4, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v4, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v1}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 769
    :goto_0
    const-wide/16 v4, 0x5

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5, v2}, Lcom/android/internal/infra/AndroidFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    const/4 v2, 0x1

    return v2

    .line 771
    :catch_0
    move-exception v2

    .line 772
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/role/RoleManagerService;->access$1000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while setting default browser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 773
    return v3
.end method

.method public setDefaultBrowserAsync(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 779
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0;

    invoke-direct {v1, p1}, Lcom/android/server/role/-$$Lambda$RoleManagerService$DefaultBrowserProvider$cU2Hhx52nmVnJXJvHuAnRTzxST0;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 785
    .local v0, "callback":Landroid/os/RemoteCallback;
    const/4 v1, 0x0

    const-string v2, "android.app.role.BROWSER"

    if-eqz p1, :cond_0

    .line 786
    iget-object v3, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v3, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v3

    invoke-virtual {v3, v2, p1, v1, v0}, Landroid/app/role/RoleControllerManager;->onAddRoleHolder(Ljava/lang/String;Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    goto :goto_0

    .line 789
    :cond_0
    iget-object v3, p0, Lcom/android/server/role/RoleManagerService$DefaultBrowserProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v3, p2}, Lcom/android/server/role/RoleManagerService;->access$1100(Lcom/android/server/role/RoleManagerService;I)Landroid/app/role/RoleControllerManager;

    move-result-object v3

    invoke-virtual {v3, v2, v1, v0}, Landroid/app/role/RoleControllerManager;->onClearRoleHolders(Ljava/lang/String;ILandroid/os/RemoteCallback;)V

    .line 792
    :goto_0
    return-void
.end method
