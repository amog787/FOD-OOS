.class Lcom/android/server/appop/AppOpsService$8;
.super Landroid/os/RemoteCallbackList;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->startWatchingAsyncNoted(Ljava/lang/String;Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Lcom/android/internal/app/IAppOpsAsyncNotedCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;

.field final synthetic val$key:Landroid/util/Pair;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;Landroid/util/Pair;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 3412
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    iput-object p2, p0, Lcom/android/server/appop/AppOpsService$8;->val$key:Landroid/util/Pair;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 3412
    check-cast p1, Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsService$8;->onCallbackDied(Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V

    return-void
.end method

.method public onCallbackDied(Lcom/android/internal/app/IAppOpsAsyncNotedCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/app/IAppOpsAsyncNotedCallback;

    .line 3415
    iget-object v0, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v0

    .line 3416
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService$8;->getRegisteredCallbackCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 3417
    iget-object v1, p0, Lcom/android/server/appop/AppOpsService$8;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v1}, Lcom/android/server/appop/AppOpsService;->access$1800(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appop/AppOpsService$8;->val$key:Landroid/util/Pair;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3419
    :cond_0
    monitor-exit v0

    .line 3420
    return-void

    .line 3419
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
