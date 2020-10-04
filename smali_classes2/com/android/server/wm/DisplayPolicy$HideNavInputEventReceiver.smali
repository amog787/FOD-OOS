.class final Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "DisplayPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayPolicy;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 0
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 1566
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 1567
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1568
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1573
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    .line 1574
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 1575
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 1576
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 1578
    const/4 v2, 0x0

    .line 1579
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$900(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1580
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$2000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1581
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1613
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1581
    return-void

    .line 1588
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$2100(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x1

    or-int/lit8 v4, v4, 0x4

    .line 1592
    .local v4, "newVal":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$2100(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 1593
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayPolicy;->access$2102(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1594
    const/4 v2, 0x1

    .line 1599
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    or-int/lit8 v4, v5, 0x2

    .line 1601
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 1602
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayPolicy;->access$1902(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1603
    const/4 v2, 0x1

    .line 1604
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v6}, Lcom/android/server/wm/DisplayPolicy;->access$2200(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1606
    :cond_2
    if-eqz v2, :cond_3

    .line 1607
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 1609
    .end local v4    # "newVal":I
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
    .end local p1    # "event":Landroid/view/InputEvent;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1613
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "changed":Z
    .restart local p0    # "this":Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1614
    nop

    .line 1615
    return-void

    .line 1613
    :catchall_1
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v1
.end method
