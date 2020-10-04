.class Lcom/android/server/ConnectivityService$8;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 5325
    iput-object p1, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5328
    iget-object v0, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$6300(Lcom/android/server/ConnectivityService;)V

    .line 5329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 5330
    .local v0, "action":Ljava/lang/String;
    const/16 v1, -0x2710

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 5331
    .local v2, "userId":I
    const-string v3, "android.intent.extra.UID"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 5332
    .local v3, "uid":I
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 5334
    .local v4, "packageData":Landroid/net/Uri;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 5335
    .local v5, "packageName":Ljava/lang/String;
    :goto_0
    if-ne v2, v1, :cond_1

    return-void

    .line 5337
    :cond_1
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5338
    iget-object v1, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$6400(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    .line 5339
    :cond_2
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5340
    iget-object v1, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$6500(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    .line 5341
    :cond_3
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5342
    iget-object v1, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$6600(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    .line 5343
    :cond_4
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 5344
    iget-object v1, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$6700(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    .line 5345
    :cond_5
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 5346
    iget-object v1, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$6800(Lcom/android/server/ConnectivityService;I)V

    goto :goto_1

    .line 5347
    :cond_6
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 5348
    iget-object v1, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v5, v3}, Lcom/android/server/ConnectivityService;->access$6900(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_1

    .line 5349
    :cond_7
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 5350
    iget-object v1, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v5, v3}, Lcom/android/server/ConnectivityService;->access$7000(Lcom/android/server/ConnectivityService;Ljava/lang/String;I)V

    goto :goto_1

    .line 5351
    :cond_8
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 5352
    const/4 v1, 0x0

    const-string v6, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v6, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 5354
    .local v1, "isReplacing":Z
    iget-object v6, p0, Lcom/android/server/ConnectivityService$8;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v6, v5, v3, v1}, Lcom/android/server/ConnectivityService;->access$7100(Lcom/android/server/ConnectivityService;Ljava/lang/String;IZ)V

    .line 5356
    .end local v1    # "isReplacing":Z
    :cond_9
    :goto_1
    return-void
.end method
