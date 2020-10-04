.class Lcom/android/server/NsdService$NsdStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService$NsdStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/NsdService$NsdStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/NsdService$NsdStateMachine;

    .line 123
    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 126
    const/4 v0, 0x0

    .line 127
    .local v0, "cInfo":Lcom/android/server/NsdService$ClientInfo;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    const-string v3, "NsdService"

    sparse-switch v1, :sswitch_data_0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return v2

    .line 182
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v3, 0x60013

    invoke-static {v1, p1, v3, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 184
    goto/16 :goto_1

    .line 178
    :sswitch_1
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v3, 0x6000d

    invoke-static {v1, p1, v3, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 180
    goto/16 :goto_1

    .line 174
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v3, 0x6000a

    invoke-static {v1, p1, v3, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 176
    goto/16 :goto_1

    .line 170
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v3, 0x60007

    invoke-static {v1, p1, v3, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 172
    goto/16 :goto_1

    .line 166
    :sswitch_4
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    const v3, 0x60003

    invoke-static {v1, p1, v3, v2}, Lcom/android/server/NsdService;->access$800(Lcom/android/server/NsdService;Landroid/os/Message;II)V

    .line 168
    goto/16 :goto_1

    .line 140
    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client connection lost with reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_0
    const-string v1, "Client disconnected"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto :goto_0

    .line 142
    :cond_1
    const-string v1, "Send failed, client connection lost"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    nop

    .line 151
    :goto_0
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/NsdService$ClientInfo;

    .line 152
    if-eqz v0, :cond_2

    .line 153
    invoke-static {v0}, Lcom/android/server/NsdService$ClientInfo;->access$500(Lcom/android/server/NsdService$ClientInfo;)V

    .line 154
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_2
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 158
    iget-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v1, v1, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v1}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/NsdService$DaemonConnection;->stop()V

    goto :goto_1

    .line 162
    :sswitch_6
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 163
    .local v1, "ac":Lcom/android/internal/util/AsyncChannel;
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->access$700(Lcom/android/server/NsdService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    invoke-virtual {v3}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    .line 164
    goto :goto_1

    .line 129
    .end local v1    # "ac":Lcom/android/internal/util/AsyncChannel;
    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_3

    .line 130
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/util/AsyncChannel;

    .line 131
    .local v1, "c":Lcom/android/internal/util/AsyncChannel;
    const-string v2, "New client listening to asynchronous messages"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const v2, 0x11002

    invoke-virtual {v1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 133
    new-instance v2, Lcom/android/server/NsdService$ClientInfo;

    iget-object v3, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v3, v3, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$1;)V

    move-object v0, v2

    .line 134
    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;->this$1:Lcom/android/server/NsdService$NsdStateMachine;

    iget-object v2, v2, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .end local v1    # "c":Lcom/android/internal/util/AsyncChannel;
    goto :goto_1

    .line 136
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client connection failure, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    nop

    .line 190
    :cond_4
    :goto_1
    const/4 v1, 0x1

    return v1

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_7
        0x11001 -> :sswitch_6
        0x11004 -> :sswitch_5
        0x60001 -> :sswitch_4
        0x60006 -> :sswitch_3
        0x60009 -> :sswitch_2
        0x6000c -> :sswitch_1
        0x60012 -> :sswitch_0
    .end sparse-switch
.end method
