.class Lcom/android/server/rollback/RollbackManagerServiceImpl$2;
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

    .line 239
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 242
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    const/4 v0, -0x1

    const-string v1, "android.content.pm.extra.ENABLE_ROLLBACK_SESSION_ID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 245
    .local v0, "sessionId":I
    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcast=ACTION_CANCEL_ENABLE_ROLLBACK id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RollbackManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$500(Lcom/android/server/rollback/RollbackManagerServiceImpl;I)Lcom/android/server/rollback/Rollback;

    move-result-object v2

    .line 250
    .local v2, "rollback":Lcom/android/server/rollback/Rollback;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/server/rollback/Rollback;->isEnabling()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 251
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$600(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 252
    iget-object v3, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v3}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$700(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Lcom/android/server/rollback/AppDataRollbackHelper;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/rollback/Rollback;->delete(Lcom/android/server/rollback/AppDataRollbackHelper;)V

    .line 254
    .end local v2    # "rollback":Lcom/android/server/rollback/Rollback;
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 256
    .end local v0    # "sessionId":I
    :cond_2
    :goto_0
    return-void
.end method
