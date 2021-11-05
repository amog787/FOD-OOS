.class final Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;
.super Ljava/lang/Object;
.source "EventManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/houston/common/client/EventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServerDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/houston/common/client/EventManager;


# direct methods
.method private constructor <init>(Lcom/oneplus/houston/common/client/EventManager;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/EventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/houston/common/client/EventManager;
    .param p2, "x1"    # Lcom/oneplus/houston/common/client/EventManager$1;

    .line 326
    invoke-direct {p0, p1}, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;-><init>(Lcom/oneplus/houston/common/client/EventManager;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .line 329
    iget-object v0, p0, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1}, Lcom/oneplus/houston/common/client/EventManager;->access$900(Lcom/oneplus/houston/common/client/EventManager;)Lcom/oneplus/houston/common/client/IEvent;

    move-result-object v1

    invoke-interface {v1}, Lcom/oneplus/houston/common/client/IEvent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 331
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/oneplus/houston/common/client/EventManager;->access$902(Lcom/oneplus/houston/common/client/EventManager;Lcom/oneplus/houston/common/client/IEvent;)Lcom/oneplus/houston/common/client/IEvent;

    .line 332
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/EventManager;->access$202(Lcom/oneplus/houston/common/client/EventManager;Z)Z

    .line 337
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1}, Lcom/oneplus/houston/common/client/EventManager;->access$400(Lcom/oneplus/houston/common/client/EventManager;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 338
    iget-object v1, p0, Lcom/oneplus/houston/common/client/EventManager$ServerDeathRecipient;->this$0:Lcom/oneplus/houston/common/client/EventManager;

    invoke-static {v1}, Lcom/oneplus/houston/common/client/EventManager;->access$400(Lcom/oneplus/houston/common/client/EventManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
