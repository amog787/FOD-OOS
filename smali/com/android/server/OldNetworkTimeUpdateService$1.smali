.class Lcom/android/server/OldNetworkTimeUpdateService$1;
.super Landroid/content/BroadcastReceiver;
.source "OldNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OldNetworkTimeUpdateService;->registerForAlarms()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OldNetworkTimeUpdateService;


# direct methods
.method constructor <init>(Lcom/android/server/OldNetworkTimeUpdateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OldNetworkTimeUpdateService;

    .line 146
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$1;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/android/server/OldNetworkTimeUpdateService$1;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/OldNetworkTimeUpdateService;->access$100(Lcom/android/server/OldNetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 150
    return-void
.end method
