.class Lcom/android/server/content/SyncManager$1;
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

    .line 298
    iput-object p1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 301
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "SyncManager"

    if-eqz v1, :cond_1

    .line 303
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    const-string v1, "Internal storage is low."

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$002(Lcom/android/server/content/SyncManager;Z)Z

    .line 307
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    sget-object v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const/4 v3, 0x0

    const-string/jumbo v4, "storage low"

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/content/SyncManager;->cancelActiveSync(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    :cond_1
    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 312
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 313
    const-string v1, "Internal storage is ok."

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_2
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$002(Lcom/android/server/content/SyncManager;Z)Z

    .line 316
    iget-object v1, p0, Lcom/android/server/content/SyncManager$1;->this$0:Lcom/android/server/content/SyncManager;

    sget-object v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->USER_ALL_PROVIDER_ALL_ACCOUNTS_ALL:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    const-string/jumbo v3, "storage ok"

    invoke-static {v1, v2, v3}, Lcom/android/server/content/SyncManager;->access$100(Lcom/android/server/content/SyncManager;Lcom/android/server/content/SyncStorageEngine$EndPoint;Ljava/lang/String;)V

    .line 319
    :cond_3
    :goto_0
    return-void
.end method
