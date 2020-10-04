.class Lcom/android/server/wm/DisplayRotation$3$1;
.super Landroid/content/BroadcastReceiver;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/DisplayRotation$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/DisplayRotation$3;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wm/DisplayRotation$3;

    .line 240
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 243
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "action":Ljava/lang/String;
    const-string v1, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 245
    const/4 v1, 0x0

    const-string v2, "state"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 246
    .local v2, "state":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 247
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayRotation;->access$302(Lcom/android/server/wm/DisplayRotation;Z)Z

    goto :goto_0

    .line 249
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v1}, Lcom/android/server/wm/DisplayRotation;->access$302(Lcom/android/server/wm/DisplayRotation;Z)Z

    .line 251
    :goto_0
    const/4 v4, -0x1

    const-string v5, "wfd_UIBC_rot"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 252
    .local v5, "rotation":I
    if-eqz v5, :cond_4

    if-eq v5, v3, :cond_3

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1

    .line 266
    iget-object v6, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v6, v6, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v6, v4}, Lcom/android/server/wm/DisplayRotation;->access$402(Lcom/android/server/wm/DisplayRotation;I)I

    goto :goto_1

    .line 263
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v6}, Lcom/android/server/wm/DisplayRotation;->access$402(Lcom/android/server/wm/DisplayRotation;I)I

    .line 264
    goto :goto_1

    .line 260
    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v6}, Lcom/android/server/wm/DisplayRotation;->access$402(Lcom/android/server/wm/DisplayRotation;I)I

    .line 261
    goto :goto_1

    .line 257
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v3}, Lcom/android/server/wm/DisplayRotation;->access$402(Lcom/android/server/wm/DisplayRotation;I)I

    .line 258
    goto :goto_1

    .line 254
    :cond_4
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4, v1}, Lcom/android/server/wm/DisplayRotation;->access$402(Lcom/android/server/wm/DisplayRotation;I)I

    .line 255
    nop

    .line 268
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayRotation$3$1;->this$1:Lcom/android/server/wm/DisplayRotation$3;

    iget-object v4, v4, Lcom/android/server/wm/DisplayRotation$3;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v4}, Lcom/android/server/wm/DisplayRotation;->access$500(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lcom/android/server/wm/WindowManagerService;->updateRotation(ZZ)V

    .line 271
    .end local v2    # "state":I
    .end local v5    # "rotation":I
    :cond_5
    return-void
.end method
