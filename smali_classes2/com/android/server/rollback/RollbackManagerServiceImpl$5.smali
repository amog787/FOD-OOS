.class Lcom/android/server/rollback/RollbackManagerServiceImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerTimeChangeReceiver()V
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

    .line 358
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 361
    iget-object v0, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1200(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J

    move-result-wide v0

    .line 362
    .local v0, "oldRelativeBootTime":J
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1300()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1202(Lcom/android/server/rollback/RollbackManagerServiceImpl;J)J

    .line 363
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$1200(Lcom/android/server/rollback/RollbackManagerServiceImpl;)J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 365
    .local v2, "timeDifference":J
    iget-object v4, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v4}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$400(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 366
    :try_start_0
    iget-object v5, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$5;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v5}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$600(Lcom/android/server/rollback/RollbackManagerServiceImpl;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 367
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 368
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/rollback/Rollback;

    .line 369
    .local v6, "rollback":Lcom/android/server/rollback/Rollback;
    nop

    .line 370
    invoke-virtual {v6}, Lcom/android/server/rollback/Rollback;->getTimestamp()Ljava/time/Instant;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v7

    .line 369
    invoke-virtual {v6, v7}, Lcom/android/server/rollback/Rollback;->setTimestamp(Ljava/time/Instant;)V

    .line 371
    .end local v6    # "rollback":Lcom/android/server/rollback/Rollback;
    goto :goto_0

    .line 372
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/rollback/Rollback;>;"
    :cond_0
    monitor-exit v4

    .line 373
    return-void

    .line 372
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method
