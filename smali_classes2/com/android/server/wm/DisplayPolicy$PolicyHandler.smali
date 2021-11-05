.class Lcom/android/server/wm/DisplayPolicy$PolicyHandler;
.super Landroid/os/Handler;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 550
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 551
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 552
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 556
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 573
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$500(Lcom/android/server/wm/DisplayPolicy;)V

    goto :goto_1

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$400(Lcom/android/server/wm/DisplayPolicy;)V

    .line 571
    goto :goto_1

    .line 567
    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayPolicy;->access$300(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;)V

    .line 568
    goto :goto_1

    .line 558
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 559
    :try_start_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_4

    .line 560
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNavigationBar()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 561
    .local v1, "targetBar":Lcom/android/server/wm/WindowState;
    :goto_0
    if-eqz v1, :cond_5

    .line 562
    iget-object v2, p0, Lcom/android/server/wm/DisplayPolicy$PolicyHandler;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v2, v1}, Lcom/android/server/wm/DisplayPolicy;->access$200(Lcom/android/server/wm/DisplayPolicy;Lcom/android/server/wm/WindowState;)V

    .line 564
    .end local v1    # "targetBar":Lcom/android/server/wm/WindowState;
    :cond_5
    monitor-exit v0

    .line 565
    nop

    .line 576
    :goto_1
    return-void

    .line 564
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
