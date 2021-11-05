.class final Lcom/android/server/am/AppExitInfoTracker$KillHandler;
.super Landroid/os/Handler;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppExitInfoTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillHandler"
.end annotation


# static fields
.field static final MSG_APP_KILL:I = 0x1008

.field static final MSG_CHILD_PROC_DIED:I = 0x1006

.field static final MSG_LMKD_PROC_KILLED:I = 0x1005

.field static final MSG_PROC_DIED:I = 0x1007


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppExitInfoTracker;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 1533
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    .line 1534
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1535
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 1539
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1565
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1557
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 1558
    .local v0, "raw":Landroid/app/ApplicationExitInfo;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v1}, Lcom/android/server/am/AppExitInfoTracker;->access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1559
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V

    .line 1560
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecordLocked(Landroid/app/ApplicationExitInfo;)V

    .line 1561
    monitor-exit v1

    .line 1563
    .end local v0    # "raw":Landroid/app/ApplicationExitInfo;
    goto :goto_0

    .line 1561
    .restart local v0    # "raw":Landroid/app/ApplicationExitInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1549
    .end local v0    # "raw":Landroid/app/ApplicationExitInfo;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 1550
    .restart local v0    # "raw":Landroid/app/ApplicationExitInfo;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-static {v1}, Lcom/android/server/am/AppExitInfoTracker;->access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1551
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V

    .line 1552
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->recycleRawRecordLocked(Landroid/app/ApplicationExitInfo;)V

    .line 1553
    monitor-exit v1

    .line 1555
    .end local v0    # "raw":Landroid/app/ApplicationExitInfo;
    goto :goto_0

    .line 1553
    .restart local v0    # "raw":Landroid/app/ApplicationExitInfo;
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 1545
    .end local v0    # "raw":Landroid/app/ApplicationExitInfo;
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->onProcDied(IILjava/lang/Integer;)V

    .line 1547
    goto :goto_0

    .line 1541
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->this$0:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v0, v0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->onProcDied(IILjava/lang/Integer;)V

    .line 1543
    nop

    .line 1567
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1005
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
