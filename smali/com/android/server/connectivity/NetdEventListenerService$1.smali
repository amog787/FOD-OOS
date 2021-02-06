.class Lcom/android/server/connectivity/NetdEventListenerService$1;
.super Landroid/content/BroadcastReceiver;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/NetdEventListenerService;

    .line 176
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$1;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->access$000(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/connectivity/NetdEventListenerService;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiver failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
