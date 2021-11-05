.class Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;
.super Landroid/os/Handler;
.source "CountQuotaTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/quota/CountQuotaTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CqtHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/utils/quota/CountQuotaTracker;


# direct methods
.method constructor <init>(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 649
    iput-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    .line 650
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 651
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 655
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    iget-object v0, v0, Lcom/android/server/utils/quota/CountQuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 656
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 661
    :cond_0
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->deleteObsoleteEventsLocked()V

    .line 662
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;->this$0:Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeScheduleCleanupAlarmLocked()V

    .line 666
    :goto_0
    monitor-exit v0

    .line 667
    return-void

    .line 666
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
