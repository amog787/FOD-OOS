.class final Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserSwitchedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0

    .line 1737
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/UiModeManagerService;Lcom/android/server/UiModeManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/UiModeManagerService;
    .param p2, "x1"    # Lcom/android/server/UiModeManagerService$1;

    .line 1737
    invoke-direct {p0, p1}, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;-><init>(Lcom/android/server/UiModeManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 1740
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1741
    :try_start_0
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1744
    .local v1, "currentId":I
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, p1, v4, v1}, Lcom/android/server/UiModeManagerService;->access$1300(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1745
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v3, v2, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 1749
    :cond_0
    const-string v2, "OpUiMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User Switch to U:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", uiMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$UserSwitchedReceiver;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->access$3700(Lcom/android/server/UiModeManagerService;)Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->uiMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    nop

    .end local v1    # "currentId":I
    monitor-exit v0

    .line 1752
    return-void

    .line 1751
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
