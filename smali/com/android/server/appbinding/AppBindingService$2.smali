.class Lcom/android/server/appbinding/AppBindingService$2;
.super Landroid/content/BroadcastReceiver;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appbinding/AppBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method constructor <init>(Lcom/android/server/appbinding/AppBindingService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appbinding/AppBindingService;

    .line 224
    iput-object p1, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 230
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 231
    .local v0, "userId":I
    const-string v2, "AppBindingService"

    if-ne v0, v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain user handle: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 236
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 239
    iget-object v2, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v2, v0}, Lcom/android/server/appbinding/AppBindingService;->access$600(Lcom/android/server/appbinding/AppBindingService;I)V

    .line 240
    return-void

    .line 243
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 244
    .local v3, "intentUri":Landroid/net/Uri;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 245
    :cond_2
    const/4 v4, 0x0

    :goto_0
    nop

    .line 246
    .local v4, "packageName":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 247
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intent broadcast does not contain package name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void

    .line 251
    :cond_3
    const-string v2, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 253
    .local v2, "replacing":Z
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0xa480416

    const/4 v9, 0x1

    if-eq v7, v8, :cond_6

    const v8, 0x5c1076e2

    if-eq v7, v8, :cond_5

    :cond_4
    goto :goto_1

    :cond_5
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_6
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v9

    goto :goto_2

    :goto_1
    move v5, v6

    :goto_2
    if-eqz v5, :cond_8

    if-eq v5, v9, :cond_7

    goto :goto_3

    .line 260
    :cond_7
    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v5, v4, v0}, Lcom/android/server/appbinding/AppBindingService;->access$700(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    goto :goto_3

    .line 255
    :cond_8
    if-eqz v2, :cond_9

    .line 256
    iget-object v5, p0, Lcom/android/server/appbinding/AppBindingService$2;->this$0:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v5, v4, v0}, Lcom/android/server/appbinding/AppBindingService;->access$700(Lcom/android/server/appbinding/AppBindingService;Ljava/lang/String;I)V

    .line 263
    :cond_9
    :goto_3
    return-void
.end method
