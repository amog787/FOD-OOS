.class Lcom/android/server/UiModeManagerService$3;
.super Landroid/content/BroadcastReceiver;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;

    .line 184
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 187
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x5bb23923

    if-eq v1, v3, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_3

    .line 189
    :cond_2
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    const-string/jumbo v1, "plugged"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->access$202(Lcom/android/server/UiModeManagerService;Z)Z

    .line 192
    :goto_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean v1, v1, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$3;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1, v2, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 196
    :cond_4
    monitor-exit v0

    .line 197
    return-void

    .line 196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
