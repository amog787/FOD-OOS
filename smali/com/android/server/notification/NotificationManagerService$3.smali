.class Lcom/android/server/notification/NotificationManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;

    .line 1532
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.action.SETTING_RESTORED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    :try_start_0
    const-string/jumbo v0, "setting_name"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1538
    .local v0, "element":Ljava/lang/String;
    const-string/jumbo v1, "new_value"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1539
    .local v1, "newValue":Ljava/lang/String;
    const-string/jumbo v2, "restored_from_sdk_int"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1541
    .local v2, "restoredFromSdkInt":I
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1800(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$3;->getSendingUserId()I

    move-result v4

    .line 1541
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1543
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$3;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$1900(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v3

    .line 1544
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$3;->getSendingUserId()I

    move-result v4

    .line 1543
    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/android/server/notification/ConditionProviders;->onSettingRestored(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "newValue":Ljava/lang/String;
    .end local v2    # "restoredFromSdkInt":I
    goto :goto_0

    .line 1545
    :catch_0
    move-exception v0

    .line 1546
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "NotificationService"

    const-string v2, "Cannot restore managed services from settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1549
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method
