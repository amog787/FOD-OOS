.class Lcom/android/server/role/RoleManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/role/RoleManagerService;->registerUserRemovedReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/role/RoleManagerService;

    .line 186
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$1;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$1;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$400(Lcom/android/server/role/RoleManagerService;I)V

    .line 193
    .end local v0    # "userId":I
    :cond_0
    return-void
.end method
