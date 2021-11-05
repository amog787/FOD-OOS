.class Lcom/android/server/accounts/AccountManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;-><init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 289
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context1"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 294
    const-string v0, "android.intent.extra.REPLACING"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 304
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "removedPackageName":Ljava/lang/String;
    new-instance v1, Lcom/android/server/accounts/AccountManagerService$1$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/accounts/AccountManagerService$1$1;-><init>(Lcom/android/server/accounts/AccountManagerService$1;Ljava/lang/String;)V

    .line 313
    .local v1, "purgingRunnable":Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$1;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v2, v2, Lcom/android/server/accounts/AccountManagerService;->mHandler:Lcom/android/server/accounts/AccountManagerService$MessageHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/accounts/AccountManagerService$MessageHandler;->post(Ljava/lang/Runnable;)Z

    .line 315
    .end local v0    # "removedPackageName":Ljava/lang/String;
    .end local v1    # "purgingRunnable":Ljava/lang/Runnable;
    :cond_0
    return-void
.end method
