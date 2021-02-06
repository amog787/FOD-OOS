.class Lcom/android/server/job/controllers/ConnectivityController$CcHandler;
.super Landroid/os/Handler;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CcHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 591
    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    .line 592
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 593
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 597
    iget-object v0, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget-object v0, v0, Lcom/android/server/job/controllers/ConnectivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 598
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    goto :goto_0

    .line 606
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    goto :goto_0

    .line 603
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 604
    goto :goto_0

    .line 600
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CcHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-static {v1, v2, v3}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ILandroid/net/Network;)V

    .line 601
    nop

    .line 609
    :goto_0
    monitor-exit v0

    .line 610
    return-void

    .line 609
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
