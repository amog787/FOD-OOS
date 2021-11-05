.class Lcom/android/server/content/ContentService$1;
.super Landroid/content/BroadcastReceiver;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method constructor <init>(Lcom/android/server/content/ContentService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/ContentService;

    .line 175
    iput-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 178
    iget-object v0, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v0}, Lcom/android/server/content/ContentService;->access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 179
    :try_start_0
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v1}, Lcom/android/server/content/ContentService;->access$000(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 183
    .local v1, "data":Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 184
    const-string v2, "android.intent.extra.user_handle"

    const/16 v3, -0x2710

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 186
    .local v2, "userId":I
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    const/4 v5, 0x0

    invoke-static {v4, v2, v3, v5}, Lcom/android/server/content/ContentService;->access$100(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V

    .line 190
    .end local v1    # "data":Landroid/net/Uri;
    .end local v2    # "userId":I
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
