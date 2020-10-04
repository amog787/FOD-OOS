.class Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;
.super Landroid/os/Handler;
.source "TaskChangeNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskChangeNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskChangeNotificationController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskChangeNotificationController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 168
    iput-object p1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 169
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 170
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 174
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 240
    goto/16 :goto_0

    .line 236
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 237
    goto/16 :goto_0

    .line 227
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 228
    goto/16 :goto_0

    .line 224
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 225
    goto/16 :goto_0

    .line 206
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 207
    goto/16 :goto_0

    .line 212
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1300(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 213
    goto/16 :goto_0

    .line 233
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$2000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 234
    goto/16 :goto_0

    .line 230
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 231
    goto/16 :goto_0

    .line 200
    :pswitch_9
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$900(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 201
    goto/16 :goto_0

    .line 197
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$800(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 198
    goto/16 :goto_0

    .line 194
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$700(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 195
    goto/16 :goto_0

    .line 191
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 192
    goto :goto_0

    .line 188
    :pswitch_d
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 189
    goto :goto_0

    .line 185
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 186
    goto :goto_0

    .line 221
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1600(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 222
    goto :goto_0

    .line 218
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1500(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 219
    goto :goto_0

    .line 215
    :pswitch_11
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1400(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 216
    goto :goto_0

    .line 209
    :pswitch_12
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 210
    goto :goto_0

    .line 203
    :pswitch_13
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$1000(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 204
    goto :goto_0

    .line 182
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$200(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$300(Lcom/android/server/wm/TaskChangeNotificationController;Lcom/android/server/wm/TaskChangeNotificationController$TaskStackConsumer;Landroid/os/Message;)V

    .line 183
    goto :goto_0

    .line 176
    :pswitch_15
    iget-object v0, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->access$000(Lcom/android/server/wm/TaskChangeNotificationController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/TaskChangeNotificationController$MainHandler;->this$0:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-static {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->access$100(Lcom/android/server/wm/TaskChangeNotificationController;)Lcom/android/server/wm/ActivityStackSupervisor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStackSupervisor;->logStackState()V

    .line 178
    monitor-exit v0

    .line 179
    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 245
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
