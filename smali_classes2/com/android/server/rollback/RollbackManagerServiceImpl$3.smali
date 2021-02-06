.class Lcom/android/server/rollback/RollbackManagerServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "RollbackManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/rollback/RollbackManagerServiceImpl;-><init>(Landroid/content/Context;)V
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

    .line 260
    iput-object p1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 263
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 265
    .local v0, "newUserId":I
    if-ne v0, v1, :cond_0

    .line 266
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/server/rollback/RollbackManagerServiceImpl$3;->this$0:Lcom/android/server/rollback/RollbackManagerServiceImpl;

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/rollback/RollbackManagerServiceImpl;->access$800(Lcom/android/server/rollback/RollbackManagerServiceImpl;Landroid/os/UserHandle;)V

    .line 270
    .end local v0    # "newUserId":I
    :cond_1
    return-void
.end method
