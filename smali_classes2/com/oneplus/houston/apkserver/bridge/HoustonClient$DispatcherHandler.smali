.class Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;
.super Landroid/os/Handler;
.source "HoustonClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/apkserver/bridge/HoustonClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DispatcherHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;


# direct methods
.method public constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 211
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    .line 212
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 213
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 217
    const-string v0, "B"

    const-string v1, "A"

    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto/16 :goto_0

    .line 255
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;IILjava/lang/Object;)V

    .line 256
    goto/16 :goto_0

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;IILjava/lang/Object;)V

    .line 253
    goto/16 :goto_0

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-static {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;)V

    .line 250
    goto/16 :goto_0

    .line 219
    :cond_3
    const-string v2, "HoustonClient"

    const-string v4, "Delay send arg1 "

    invoke-static {v2, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 222
    :try_start_0
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-static {v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;)Lcom/oneplus/houston/common/client/IEvent;

    move-result-object v4

    const/16 v5, 0x3e7

    invoke-interface {v4, v5}, Lcom/oneplus/houston/common/client/IEvent;->onReceive(I)V

    .line 224
    new-instance v4, Lcom/oneplus/houston/common/client/Event;

    const/16 v5, 0x64

    const-string v6, "event"

    invoke-direct {v4, v5, v3, v3, v6}, Lcom/oneplus/houston/common/client/Event;-><init>(IIILjava/lang/String;)V

    move-object v3, v4

    .line 225
    .local v3, "event":Lcom/oneplus/houston/common/client/Event;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "AAAA"

    invoke-virtual {v4, v1, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const-string v5, "BBBB"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {v3, v4}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    .line 229
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delay send arg data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oneplus/houston/common/client/Event;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v5, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 234
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 235
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "com.oneplus.test"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 237
    .local v6, "bundle1":Landroid/os/Bundle;
    const-string v7, "CCCC"

    invoke-virtual {v6, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v1, "DDDD"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delay send arg intent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "event":Lcom/oneplus/houston/common/client/Event;
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "bundle1":Landroid/os/Bundle;
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 260
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    return-void
.end method
