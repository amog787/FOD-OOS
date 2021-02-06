.class Lcom/android/server/pm/UserManagerService$4;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsForAllUsersLR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .line 2245
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2251
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2255
    .local v0, "runningUsers":[I
    nop

    .line 2260
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$1000(Lcom/android/server/pm/UserManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2261
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 2262
    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$4;->this$0:Lcom/android/server/pm/UserManagerService;

    aget v4, v0, v2

    invoke-virtual {v3, v4}, Lcom/android/server/pm/UserManagerService;->applyUserRestrictionsLR(I)V

    .line 2261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2264
    .end local v2    # "i":I
    :cond_0
    monitor-exit v1

    .line 2265
    return-void

    .line 2264
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 2252
    .end local v0    # "runningUsers":[I
    :catch_0
    move-exception v0

    .line 2253
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "UserManagerService"

    const-string v2, "Unable to access ActivityManagerService"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    return-void
.end method
