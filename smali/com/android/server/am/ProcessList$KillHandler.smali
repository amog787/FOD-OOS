.class final Lcom/android/server/am/ProcessList$KillHandler;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "KillHandler"
.end annotation


# static fields
.field static final KILL_PROCESS_GROUP_MSG:I = 0xfa0


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ProcessList;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/am/ProcessList;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 551
    iput-object p1, p0, Lcom/android/server/am/ProcessList$KillHandler;->this$0:Lcom/android/server/am/ProcessList;

    .line 552
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 553
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 557
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xfa0

    if-eq v0, v1, :cond_0

    .line 565
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 559
    :cond_0
    const-wide/16 v0, 0x40

    const-string/jumbo v2, "killProcessGroup"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 560
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/os/Process;->killProcessGroup(II)I

    .line 561
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 562
    nop

    .line 567
    :goto_0
    return-void
.end method
