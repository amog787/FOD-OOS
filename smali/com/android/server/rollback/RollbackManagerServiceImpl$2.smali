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

    .line 216
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 219
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 220
    const/4 v0, -0x1

    const-string v1, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 222
    .local v0, "token":I
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$300(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$2;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;

    .line 224
    .local v3, "rollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    invoke-virtual {v3, v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->hasToken(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 225
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;->isCancelled:Z

    .line 226
    monitor-exit v1

    return-void

    .line 228
    .end local v3    # "rollback":Lcom/android/server/rollback/RollbackManagerServiceImpl$NewRollback;
    :cond_0
    goto :goto_0

    .line 229
    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 231
    .end local v0    # "token":I
    :cond_2
    :goto_1
    return-void
.end method
