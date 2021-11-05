.class Lcom/android/server/appop/AppOpsService$4;
.super Landroid/content/BroadcastReceiver;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/appop/AppOpsService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appop/AppOpsService;


# direct methods
.method constructor <init>(Lcom/android/server/appop/AppOpsService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appop/AppOpsService;

    .line 1708
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1711
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 1713
    .local v0, "data":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 1714
    .local v1, "packageName":Ljava/lang/String;
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 1716
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v4, v4, Lcom/android/server/appop/AppOpsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 1715
    const/16 v5, 0x1000

    invoke-virtual {v2, v1, v5, v3, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 1717
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3, v2}, Lcom/android/server/appop/AppOpsService;->access$1300(Lcom/android/server/appop/AppOpsService;Landroid/content/pm/PackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1718
    monitor-enter p0

    .line 1719
    :try_start_0
    iget-object v3, p0, Lcom/android/server/appop/AppOpsService$4;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v3}, Lcom/android/server/appop/AppOpsService;->access$1400(Lcom/android/server/appop/AppOpsService;)Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1720
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1722
    :cond_0
    :goto_0
    return-void
.end method
