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

    .line 1843
    iput-object p1, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    .line 1844
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 1845
    return-void
.end method

.method private showSystemBars()V
    .locals 4

    .line 1896
    iget-object v0, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v0}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v0

    .line 1897
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/InsetsStateController;->peekSourceProvider(I)Lcom/android/server/wm/InsetsSourceProvider;

    move-result-object v0

    .line 1899
    .local v0, "provider":Lcom/android/server/wm/InsetsSourceProvider;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsSourceProvider;->getControlTarget()Lcom/android/server/wm/InsetsControlTarget;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1900
    .local v1, "target":Lcom/android/server/wm/InsetsControlTarget;
    :goto_0
    if-eqz v1, :cond_1

    .line 1901
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/server/wm/InsetsControlTarget;->showInsets(IZ)V

    .line 1903
    :cond_1
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/InputEvent;

    .line 1850
    const/4 v0, 0x0

    :try_start_0
    instance-of v1, p1, Landroid/view/MotionEvent;

    if-eqz v1, :cond_4

    .line 1851
    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 1852
    move-object v1, p1

    check-cast v1, Landroid/view/MotionEvent;

    .line 1853
    .local v1, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 1855
    const/4 v2, 0x0

    .line 1856
    .local v2, "changed":Z
    iget-object v3, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v3}, Lcom/android/server/wm/DisplayPolicy;->access$100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1857
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    iget-object v4, v4, Lcom/android/server/wm/DisplayPolicy;->mInputConsumer:Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;

    if-nez v4, :cond_0

    .line 1858
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1891
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1858
    return-void

    .line 1860
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->showSystemBars()V

    .line 1866
    iget-object v4, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v4}, Lcom/android/server/wm/DisplayPolicy;->access$2000(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v4

    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x1

    or-int/lit8 v4, v4, 0x4

    .line 1870
    .local v4, "newVal":I
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$2000(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    if-eq v5, v4, :cond_1

    .line 1871
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayPolicy;->access$2002(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1872
    const/4 v2, 0x1

    .line 1877
    :cond_1
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    or-int/lit8 v4, v5, 0x2

    .line 1879
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1900(Lcom/android/server/wm/DisplayPolicy;)I

    move-result v5

    if-eq v5, v4, :cond_2

    .line 1880
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5, v4}, Lcom/android/server/wm/DisplayPolicy;->access$1902(Lcom/android/server/wm/DisplayPolicy;I)I

    .line 1881
    const/4 v2, 0x1

    .line 1882
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1800(Lcom/android/server/wm/DisplayPolicy;)Landroid/os/Handler;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v6}, Lcom/android/server/wm/DisplayPolicy;->access$2100(Lcom/android/server/wm/DisplayPolicy;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1884
    :cond_2
    if-eqz v2, :cond_3

    .line 1885
    iget-object v5, p0, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->this$0:Lcom/android/server/wm/DisplayPolicy;

    invoke-static {v5}, Lcom/android/server/wm/DisplayPolicy;->access$1000(Lcom/android/server/wm/DisplayPolicy;)Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->reevaluateStatusBarVisibility()V

    .line 1887
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

    .line 1891
    .end local v1    # "motionEvent":Landroid/view/MotionEvent;
    .end local v2    # "changed":Z
    .restart local p0    # "this":Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;
    .restart local p1    # "event":Landroid/view/InputEvent;
    :cond_4
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1892
    nop

    .line 1893
    return-void

    .line 1891
    :catchall_1
    move-exception v1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayPolicy$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 1892
    throw v1
.end method
