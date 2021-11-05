.class Lcom/android/server/am/ActivityManagerService$11;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$appInfo:Landroid/content/pm/ApplicationInfo;

.field final synthetic val$isInstantApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$pid:I

.field final synthetic val$resolvedUserId:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;IZIILandroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;

    .line 4934
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$11;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$11;->val$resolvedUserId:I

    iput-boolean p4, p0, Lcom/android/server/am/ActivityManagerService$11;->val$isInstantApp:Z

    iput p5, p0, Lcom/android/server/am/ActivityManagerService$11;->val$uid:I

    iput p6, p0, Lcom/android/server/am/ActivityManagerService$11;->val$pid:I

    iput-object p7, p0, Lcom/android/server/am/ActivityManagerService$11;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 23
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 4938
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$11;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    .line 4939
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4940
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$11;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0, v2, v4}, Lcom/android/server/am/ActivityManagerService;->access$1300(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;I)V

    .line 4941
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 4943
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const/4 v3, 0x0

    .line 4944
    const-string/jumbo v4, "package"

    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4945
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x1000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4946
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$11;->val$appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    const-string v4, "android.intent.extra.UID"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4947
    iget v3, v1, Lcom/android/server/am/ActivityManagerService$11;->val$resolvedUserId:I

    const-string v4, "android.intent.extra.user_handle"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4948
    iget-boolean v3, v1, Lcom/android/server/am/ActivityManagerService$11;->val$isInstantApp:Z

    if-eqz v3, :cond_2

    .line 4949
    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4950
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    iget v9, v1, Lcom/android/server/am/ActivityManagerService$11;->val$uid:I

    iget v10, v1, Lcom/android/server/am/ActivityManagerService$11;->val$pid:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v3, v1, Lcom/android/server/am/ActivityManagerService$11;->val$resolvedUserId:I

    move/from16 v21, v3

    const/16 v22, 0x0

    const-string v6, "android"

    const-string v17, "android.permission.ACCESS_INSTANT_APPS"

    move-object v11, v0

    invoke-virtual/range {v5 .. v22}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    goto :goto_2

    .line 4954
    :cond_2
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$11;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    iget v9, v1, Lcom/android/server/am/ActivityManagerService$11;->val$uid:I

    iget v10, v1, Lcom/android/server/am/ActivityManagerService$11;->val$pid:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    iget v3, v1, Lcom/android/server/am/ActivityManagerService$11;->val$resolvedUserId:I

    move/from16 v21, v3

    const/16 v22, 0x0

    const-string v6, "android"

    move-object v11, v0

    invoke-virtual/range {v5 .. v22}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    .line 4959
    :goto_2
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$11;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v3, :cond_3

    .line 4960
    move/from16 v4, p2

    invoke-interface {v3, v2, v4}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    goto :goto_3

    .line 4959
    :cond_3
    move/from16 v4, p2

    .line 4962
    :goto_3
    return-void
.end method
