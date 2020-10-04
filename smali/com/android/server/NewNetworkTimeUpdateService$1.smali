.class Lcom/android/server/NewNetworkTimeUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "NewNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NewNetworkTimeUpdateService;->registerForAlarms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NewNetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/NewNetworkTimeUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NewNetworkTimeUpdateService;

    .line 151
    iput-object p1, p0, Lcom/android/server/NewNetworkTimeUpdateService$1;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 154
    iget-object v0, p0, Lcom/android/server/NewNetworkTimeUpdateService$1;->this$0:Lcom/android/server/NewNetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/NewNetworkTimeUpdateService;->access$100(Lcom/android/server/NewNetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method
