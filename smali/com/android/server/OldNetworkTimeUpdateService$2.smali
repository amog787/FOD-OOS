.class Lcom/android/server/OldNetworkTimeUpdateService$2;
.super Landroid/content/BroadcastReceiver;
.source "OldNetworkTimeUpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OldNetworkTimeUpdateService;
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

    .line 244
    iput-object p1, p0, Lcom/android/server/OldNetworkTimeUpdateService$2;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 248
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.NETWORK_SET_TIME"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/android/server/OldNetworkTimeUpdateService$2;->this$0:Lcom/android/server/OldNetworkTimeUpdateService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/OldNetworkTimeUpdateService;->access$202(Lcom/android/server/OldNetworkTimeUpdateService;J)J

    .line 253
    :cond_0
    return-void
.end method
