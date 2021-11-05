.class Lcom/android/server/pm/UserManagerService$3;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->propagateUserRestrictionsLR(ILandroid/os/Bundle;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$newRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$prevRestrictionsFinal:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/UserManagerService;

    .line 2204
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    iput p2, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iput-object p3, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 2208
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2209
    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    .line 2208
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/UserRestrictionsUtils;->applyUserRestrictions(Landroid/content/Context;ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2212
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 2213
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v1}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/os/UserManagerInternal$UserRestrictionsListener;

    .line 2214
    .local v1, "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$900(Lcom/android/server/pm/UserManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 2215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2216
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 2217
    aget-object v2, v1, v0

    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    iget-object v4, p0, Lcom/android/server/pm/UserManagerService$3;->val$newRestrictionsFinal:Landroid/os/Bundle;

    iget-object v5, p0, Lcom/android/server/pm/UserManagerService$3;->val$prevRestrictionsFinal:Landroid/os/Bundle;

    invoke-interface {v2, v3, v4, v5}, Landroid/os/UserManagerInternal$UserRestrictionsListener;->onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V

    .line 2216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2221
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.os.action.USER_RESTRICTIONS_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x40000000    # 2.0f

    .line 2222
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 2223
    .local v0, "broadcast":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/pm/UserManagerService$3;->this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v2}, Lcom/android/server/pm/UserManagerService;->access$200(Lcom/android/server/pm/UserManagerService;)Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/server/pm/UserManagerService$3;->val$userId:I

    invoke-static {v3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2224
    return-void

    .line 2215
    .end local v0    # "broadcast":Landroid/content/Intent;
    .end local v1    # "listeners":[Landroid/os/UserManagerInternal$UserRestrictionsListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
