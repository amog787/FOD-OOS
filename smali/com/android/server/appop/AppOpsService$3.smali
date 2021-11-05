.class Lcom/android/server/appop/AppOpsService$3;
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

    .line 1679
    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1682
    const-string v0, "android.intent.extra.changed_uid_list"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 1683
    .local v0, "changedUids":[I
    const-string v1, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1685
    .local v1, "changedPkgs":[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/appop/AppOpsService;->access$1100()[I

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, v2, v4

    .line 1687
    .local v5, "code":I
    iget-object v6, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    monitor-enter v6

    .line 1688
    :try_start_0
    iget-object v7, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    iget-object v7, v7, Lcom/android/server/appop/AppOpsService;->mOpModeWatchers:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArraySet;

    .line 1689
    .local v7, "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    if-nez v7, :cond_0

    .line 1690
    monitor-exit v6

    goto :goto_2

    .line 1692
    :cond_0
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8, v7}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    move-object v7, v8

    .line 1693
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v8, v0

    if-ge v6, v8, :cond_1

    .line 1695
    aget v8, v0, v6

    .line 1696
    .local v8, "changedUid":I
    aget-object v9, v1, v6

    .line 1699
    .local v9, "changedPkg":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/appop/AppOpsService$3;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-static {v10, v7, v5, v8, v9}, Lcom/android/server/appop/AppOpsService;->access$1200(Lcom/android/server/appop/AppOpsService;Landroid/util/ArraySet;IILjava/lang/String;)V

    .line 1694
    .end local v8    # "changedUid":I
    .end local v9    # "changedPkg":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1685
    .end local v5    # "code":I
    .end local v6    # "i":I
    .end local v7    # "callbacks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/appop/AppOpsService$ModeCallback;>;"
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1693
    .restart local v5    # "code":I
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1702
    .end local v5    # "code":I
    :cond_2
    return-void
.end method
