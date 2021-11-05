.class Lcom/android/server/UiModeManagerService$10;
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

    .line 457
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 460
    const-string/jumbo v0, "ui_night_mode"

    const-string v1, "dark_theme_custom_start_time"

    const-string v2, "dark_theme_custom_end_time"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 463
    .local v0, "settings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "setting_name"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 464
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v1, v1, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 465
    :try_start_0
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 466
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 465
    invoke-static {v2, p1, v3, v4}, Lcom/android/server/UiModeManagerService;->access$1300(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 467
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$10;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->access$1600(Lcom/android/server/UiModeManagerService;)V

    .line 468
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 470
    :cond_0
    :goto_0
    return-void
.end method
