.class Lcom/android/server/rollback/RollbackManagerServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 205
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$RollbackManagerServiceImpl$1(II)V
    .locals 3
    .param p1, "sessionId"    # I
    .param p2, "token"    # I

    .line 217
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0, p1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$200(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Z

    move-result v0

    .line 218
    .local v0, "success":Z
    const/4 v1, 0x1

    .line 219
    .local v1, "ret":I
    if-nez v0, :cond_0

    .line 220
    const/4 v1, -0x1

    .line 223
    :cond_0
    const-class v2, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManagerInternal;

    .line 225
    .local v2, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v2, p2, v1}, Landroid/content/pm/PackageManagerInternal;->setEnableRollbackCode(II)V

    .line 226
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 208
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_ENABLE_ROLLBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 211
    .local v0, "token":I
    const-string v2, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 214
    .local v1, "sessionId":I
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$000(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$100(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$whIhaWpnqJBe6ocQeiVgI5ygyCA;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/rollback/-$$Lambda$RollbackManagerServiceImpl$1$whIhaWpnqJBe6ocQeiVgI5ygyCA;-><init>(Lcom/android/server/rollback/RollbackManagerServiceImpl$1;II)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    invoke-virtual {p0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$1;->abortBroadcast()V

    .line 233
    .end local v0    # "token":I
    .end local v1    # "sessionId":I
    :cond_0
    return-void
.end method
