.class Lcom/android/server/rollback/RollbackManagerServiceImpl$4;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;->registerUserCallbacks(Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/rollback/RollbackManagerServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/rollback/RollbackManagerServiceImpl;

    .line 268
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 271
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$600(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V

    .line 276
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 277
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 278
    .restart local v1    # "packageName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$4;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v2, v1}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$700(Lcom/android/server/rollback/RollbackManagerServiceImpl;Ljava/lang/String;)V

    .line 280
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_1
    return-void
.end method
