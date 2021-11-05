.class Lcom/android/server/usage/AppTimeLimitController$MyHandler;
.super Landroid/os/Handler;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field static final MSG_CHECK_TIMEOUT:I = 0x1

.field static final MSG_INFORM_LIMIT_REACHED_LISTENER:I = 0x2

.field static final MSG_INFORM_SESSION_END:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/AppTimeLimitController;


# direct methods
.method constructor <init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 552
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    .line 553
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 554
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 558
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 575
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController;->access$800(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;

    move-result-object v0

    monitor-enter v0

    .line 571
    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->onSessionEnd()V

    .line 572
    monitor-exit v0

    .line 573
    goto :goto_0

    .line 572
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 565
    :cond_1
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController;->access$800(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;

    move-result-object v0

    monitor-enter v0

    .line 566
    :try_start_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    invoke-virtual {v1}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->onLimitReached()V

    .line 567
    monitor-exit v0

    .line 568
    goto :goto_0

    .line 567
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 560
    :cond_2
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-static {v0}, Lcom/android/server/usage/AppTimeLimitController;->access$800(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;

    move-result-object v0

    monitor-enter v0

    .line 561
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController$MyHandler;->this$0:Lcom/android/server/usage/AppTimeLimitController;

    invoke-virtual {v2}, Lcom/android/server/usage/AppTimeLimitController;->getUptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->checkTimeout(J)V

    .line 562
    monitor-exit v0

    .line 563
    nop

    .line 578
    :goto_0
    return-void

    .line 562
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1
.end method
