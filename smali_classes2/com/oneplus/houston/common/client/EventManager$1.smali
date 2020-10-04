.class Lcom/oneplus/houston/common/client/EventManager$1;
.super Landroid/os/Handler;
.source "EventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/houston/common/client/EventManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/common/client/EventManager;


# direct methods
.method constructor <init>(Lcom/oneplus/houston/common/client/EventManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/houston/common/client/EventManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 204
    iput-object p1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v0}, Lcom/oneplus/houston/common/client/EventManager;->access$600(Lcom/oneplus/houston/common/client/EventManager;)V

    .line 236
    goto/16 :goto_2

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v0}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v2}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 212
    :cond_2
    :try_start_3
    const-string v2, "EventManager"

    const-string v3, "Binder died, register all again!"

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v4}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 214
    iget-object v4, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    iget-object v5, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v5}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/houston/common/client/AbsEventCallback;

    invoke-virtual {v4, v5}, Lcom/oneplus/houston/common/client/EventManager;->registerEventObserver(Lcom/oneplus/houston/common/client/AbsEventCallback;)V

    .line 213
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v3}, Lcom/oneplus/houston/common/client/EventManager;->access$200(Lcom/oneplus/houston/common/client/EventManager;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 217
    const-string v3, "EventManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mRetryCount = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v5}, Lcom/oneplus/houston/common/client/EventManager;->access$304(Lcom/oneplus/houston/common/client/EventManager;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v3, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v3}, Lcom/oneplus/houston/common/client/EventManager;->access$300(Lcom/oneplus/houston/common/client/EventManager;)I

    move-result v3

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_4

    .line 219
    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v2}, Lcom/oneplus/houston/common/client/EventManager;->access$400(Lcom/oneplus/houston/common/client/EventManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    iget-object v2, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v2}, Lcom/oneplus/houston/common/client/EventManager;->access$400(Lcom/oneplus/houston/common/client/EventManager;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 222
    :cond_4
    const-string v1, "EventManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restore callback failed, size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v4}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 224
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/EventManager;->access$302(Lcom/oneplus/houston/common/client/EventManager;I)I

    goto :goto_1

    .line 227
    :cond_5
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/EventManager;->access$302(Lcom/oneplus/houston/common/client/EventManager;I)I

    .line 228
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1}, Lcom/oneplus/houston/common/client/EventManager;->access$000(Lcom/oneplus/houston/common/client/EventManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$1;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/EventManager;->access$502(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/AbsEventCallback;)Lcom/oneplus/houston/common/client/AbsEventCallback;

    .line 231
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 241
    return-void

    .line 232
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local p0    # "this":Lcom/oneplus/houston/common/client/EventManager$1;
    .end local p1    # "msg":Landroid/os/Message;
    :try_start_6
    throw v1

    .line 240
    .restart local p0    # "this":Lcom/oneplus/houston/common/client/EventManager$1;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method
