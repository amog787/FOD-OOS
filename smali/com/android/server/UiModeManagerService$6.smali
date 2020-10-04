.class Lcom/android/server/UiModeManagerService$6;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/server/UiModeManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/UiModeManagerService;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 224
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 228
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$600(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/UiModeManagerService;->access$702(Lcom/android/server/UiModeManagerService;Z)Z

    .line 230
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$800(Lcom/android/server/UiModeManagerService;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 233
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 234
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 233
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;Landroid/content/Context;Landroid/content/res/Resources;I)Z

    .line 235
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$6;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 237
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    return-void
.end method
