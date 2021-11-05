.class Lcom/android/server/role/RoleManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "RoleManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/role/RoleManagerService;->onStart()V
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

    .line 207
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$2;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 210
    const-string v0, "android.intent.extra.UID"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 215
    .local v0, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 216
    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    return-void

    .line 220
    :cond_0
    iget-object v1, p0, Lcom/android/server/role/RoleManagerService$2;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v1, v0}, Lcom/android/server/role/RoleManagerService;->access$600(Lcom/android/server/role/RoleManagerService;I)V

    .line 221
    return-void
.end method
