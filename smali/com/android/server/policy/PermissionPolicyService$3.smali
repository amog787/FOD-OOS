.class Lcom/android/server/policy/PermissionPolicyService$3;
.super Landroid/content/BroadcastReceiver;
.source "PermissionPolicyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PermissionPolicyService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final mPermControllerManagers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/UserHandle;",
            "Landroid/permission/PermissionControllerManager;",
            ">;"
        }
    .end annotation
.end field

.field final mUserSetupUids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;

.field final synthetic val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService;Landroid/content/pm/PackageManagerInternal;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/PermissionPolicyService;

    .line 243
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$3;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 244
    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xc8

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    .line 245
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    return-void
.end method

.method private updateUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .line 283
    invoke-static {p1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 284
    .local v0, "user":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    .line 285
    .local v1, "manager":Landroid/permission/PermissionControllerManager;
    if-nez v1, :cond_0

    .line 286
    new-instance v2, Landroid/permission/PermissionControllerManager;

    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    .line 287
    invoke-virtual {v3}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/server/policy/PermissionPolicyService;->access$600(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/permission/PermissionControllerManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v1, v2

    .line 288
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mPermControllerManagers:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    :cond_0
    invoke-virtual {v1, p1}, Landroid/permission/PermissionControllerManager;->updateUserSensitiveForApp(I)V

    .line 291
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 250
    const/4 v0, 0x1

    .line 252
    .local v0, "hasSetupRun":Z
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/PermissionPolicyService$3;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v2}, Lcom/android/server/policy/PermissionPolicyService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 256
    goto :goto_1

    .line 254
    :catch_0
    move-exception v2

    .line 257
    :goto_1
    const-string v2, "android.intent.extra.UID"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 259
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$3;->val$packageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v3

    if-nez v3, :cond_1

    .line 260
    return-void

    .line 263
    :cond_1
    if-eqz v0, :cond_4

    .line 264
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 265
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    monitor-enter v3

    .line 266
    :try_start_1
    iget-object v4, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/policy/PermissionPolicyService$3;->updateUid(I)V

    .line 266
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 269
    .end local v4    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 270
    monitor-exit v3

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 272
    :cond_3
    :goto_3
    invoke-direct {p0, v2}, Lcom/android/server/policy/PermissionPolicyService$3;->updateUid(I)V

    goto :goto_4

    .line 274
    :cond_4
    iget-object v1, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    monitor-enter v1

    .line 275
    :try_start_2
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 276
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$3;->mUserSetupUids:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    :cond_5
    monitor-exit v1

    .line 280
    :goto_4
    return-void

    .line 278
    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method
