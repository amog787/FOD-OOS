.class final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;
.super Landroid/os/Handler;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field static final MSG_DEVICE_IDLE:I = 0x0

.field static final MSG_UID_GONE:I = 0x1

.field static final MSG_UID_STATE_CHANGED:I = 0x2


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 4267
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 4268
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4269
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 4273
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4281
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->access$600(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;II)V

    goto :goto_0

    .line 4278
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->access$500(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;I)V

    .line 4279
    goto :goto_0

    .line 4275
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$H;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-static {v0}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->access$400(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    .line 4276
    nop

    .line 4284
    :goto_0
    return-void
.end method
