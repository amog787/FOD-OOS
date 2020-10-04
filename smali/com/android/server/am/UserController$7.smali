.class Lcom/android/server/am/UserController$7;
.super Landroid/os/IRemoteCallback$Stub;
.source "UserController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/UserController;->dispatchUserSwitch(Lcom/android/server/am/UserState;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/UserController;

.field final synthetic val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

.field final synthetic val$dispatchStartedTime:J

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$newUserId:I

.field final synthetic val$oldUserId:I

.field final synthetic val$uss:Lcom/android/server/am/UserState;

.field final synthetic val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/android/server/am/UserController;JLjava/lang/String;Landroid/util/ArraySet;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/android/server/am/UserState;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/UserController;

    .line 1573
    iput-object p1, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    iput-wide p2, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTime:J

    iput-object p4, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iput-object p6, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p7, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    iput p8, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    iput p9, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1576
    iget-object v0, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->access$300(Lcom/android/server/am/UserController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1577
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UserController$7;->val$dispatchStartedTime:J

    sub-long/2addr v1, v3

    .line 1578
    .local v1, "delay":J
    const-wide/16 v3, 0xbb8

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    .line 1579
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User switch timeout: observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " sent result after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/am/UserController$7;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1585
    iget-object v3, p0, Lcom/android/server/am/UserController$7;->val$waitingCallbacksCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/UserController$7;->val$curWaitingUserSwitchCallbacks:Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    .line 1587
    invoke-static {v4}, Lcom/android/server/am/UserController;->access$400(Lcom/android/server/am/UserController;)Landroid/util/ArraySet;

    move-result-object v4

    if-ne v3, v4, :cond_1

    .line 1588
    iget-object v3, p0, Lcom/android/server/am/UserController$7;->this$0:Lcom/android/server/am/UserController;

    iget-object v4, p0, Lcom/android/server/am/UserController$7;->val$uss:Lcom/android/server/am/UserState;

    iget v5, p0, Lcom/android/server/am/UserController$7;->val$oldUserId:I

    iget v6, p0, Lcom/android/server/am/UserController$7;->val$newUserId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/UserController;->sendContinueUserSwitchLU(Lcom/android/server/am/UserState;II)V

    .line 1590
    .end local v1    # "delay":J
    :cond_1
    monitor-exit v0

    .line 1591
    return-void

    .line 1590
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
