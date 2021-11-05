.class Lcom/android/server/wm/DisplayRotation$5$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayRotation$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/DisplayRotation$5;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/DisplayRotation$5;

    .line 325
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$5$1;->this$1:Lcom/android/server/wm/DisplayRotation$5;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 328
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "action":Ljava/lang/String;
    const-string v1, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 330
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 331
    .local v1, "state":I
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 332
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$5$1;->this$1:Lcom/android/server/wm/DisplayRotation$5;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$5;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayRotation;->access$702(Lcom/android/server/wm/DisplayRotation;Z)Z

    goto :goto_0

    .line 334
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$5$1;->this$1:Lcom/android/server/wm/DisplayRotation$5;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$5;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v2}, Lcom/android/server/wm/DisplayRotation;->access$702(Lcom/android/server/wm/DisplayRotation;Z)Z

    .line 336
    :goto_0
    const-string v4, "wfd_UIBC_rot"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 337
    .local v4, "rotation":I
    if-eqz v4, :cond_4

    if-eq v4, v3, :cond_3

    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x3

    if-eq v4, v6, :cond_1

    .line 351
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$5$1;->this$1:Lcom/android/server/wm/DisplayRotation$5;

    iget-object v6, v6, Lcom/android/server/wm/DisplayRotation$5;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v6, v5}, Lcom/android/server/wm/DisplayRotation;->access$802(Lcom/android/server/wm/DisplayRotation;I)I

    goto :goto_1

    .line 348
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$5$1;->this$1:Lcom/android/server/wm/DisplayRotation$5;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$5;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v5, v6}, Lcom/android/server/wm/DisplayRotation;->access$802(Lcom/android/server/wm/DisplayRotation;I)I

    .line 349
    goto :goto_1

    .line 345
    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$5$1;->this$1:Lcom/android/server/wm/DisplayRotation$5;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$5;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v5, v6}, Lcom/android/server/wm/DisplayRotation;->access$802(Lcom/android/server/wm/DisplayRotation;I)I

    .line 346
    goto :goto_1

    .line 342
    :cond_3
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$5$1;->this$1:Lcom/android/server/wm/DisplayRotation$5;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$5;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v5, v3}, Lcom/android/server/wm/DisplayRotation;->access$802(Lcom/android/server/wm/DisplayRotation;I)I

    .line 343
    goto :goto_1

    .line 339
    :cond_4
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$5$1;->this$1:Lcom/android/server/wm/DisplayRotation$5;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$5;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v5, v2}, Lcom/android/server/wm/DisplayRotation;->access$802(Lcom/android/server/wm/DisplayRotation;I)I

    .line 340
    nop

    .line 353
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayRotation$5$1;->this$1:Lcom/android/server/wm/DisplayRotation$5;

    iget-object v5, v5, Lcom/android/server/wm/DisplayRotation$5;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v5}, Lcom/android/server/wm/DisplayRotation;->access$300(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v5

    invoke-virtual {v5, v3, v2}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 356
    .end local v1    # "state":I
    .end local v4    # "rotation":I
    :cond_5
    return-void
.end method
