.class Lcom/android/server/content/SyncManager$3;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .line 377
    iput-object p1, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 380
    iget-object v0, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v0}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Z

    move-result v0

    .line 384
    .local v0, "wasConnected":Z
    iget-object v1, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$400(Lcom/android/server/content/SyncManager;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$302(Lcom/android/server/content/SyncManager;Z)Z

    .line 385
    iget-object v1, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1}, Lcom/android/server/content/SyncManager;->access$300(Lcom/android/server/content/SyncManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 386
    if-nez v0, :cond_1

    .line 387
    const/4 v1, 0x2

    const-string v2, "SyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    const-string v1, "Reconnection detected: clearing all backoffs"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$3;->this$0:Lcom/android/server/content/SyncManager;

    const-string/jumbo v2, "network reconnect"

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$500(Lcom/android/server/content/SyncManager;Ljava/lang/String;)V

    .line 394
    :cond_1
    return-void
.end method
