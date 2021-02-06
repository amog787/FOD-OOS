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

    .line 222
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    .line 223
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 224
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 228
    monitor-enter p0

    .line 229
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;IILjava/lang/Object;)V

    .line 268
    goto/16 :goto_0

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;IILjava/lang/Object;)V

    .line 265
    goto/16 :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-static {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->access$100(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;)V

    .line 262
    goto/16 :goto_0

    .line 231
    :cond_3
    const-string v0, "HoustonClient"

    const-string v2, "Delay send arg1 "

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->isConnected()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-static {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->access$000(Lcom/oneplus/houston/apkserver/bridge/HoustonClient;)Lcom/oneplus/houston/common/client/IEvent;

    move-result-object v0

    const/16 v2, 0x3e7

    invoke-interface {v0, v2}, Lcom/oneplus/houston/common/client/IEvent;->onReceive(I)V

    .line 236
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    const/16 v2, 0x64

    const-string v3, "event"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/oneplus/houston/common/client/Event;-><init>(IIILjava/lang/String;)V

    .line 237
    .local v0, "event":Lcom/oneplus/houston/common/client/Event;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 238
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "A"

    const-string v3, "AAAA"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const-string v2, "B"

    const-string v3, "BBBB"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    .line 241
    const-string v2, "HoustonClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delay send arg data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oneplus/houston/common/client/Event;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v2, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    .line 246
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 247
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.oneplus.test"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 249
    .local v3, "bundle1":Landroid/os/Bundle;
    const-string v4, "A"

    const-string v5, "CCCC"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "B"

    const-string v5, "DDDD"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {v2, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 252
    const-string v4, "HoustonClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delay send arg intent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonClient$DispatcherHandler;->this$0:Lcom/oneplus/houston/apkserver/bridge/HoustonClient;

    invoke-virtual {v4, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonClient;->scheduleProcessEvent(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "event":Lcom/oneplus/houston/common/client/Event;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "bundle1":Landroid/os/Bundle;
    goto :goto_0

    .line 255
    :catch_0
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    monitor-exit p0

    .line 273
    return-void

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
