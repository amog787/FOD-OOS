.class Lcom/android/server/rollback/RollbackManagerServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V
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

    .line 291
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 294
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "RollbackManager"

    if-eqz v1, :cond_1

    .line 296
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$300()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast=ACTION_PACKAGE_REPLACED pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v3, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1000(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V

    .line 302
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 303
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 304
    .restart local v1    # "packageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcast=ACTION_PACKAGE_FULLY_REMOVED pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1100(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V

    .line 307
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method
