.class final Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerHandlerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .line 4924
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .line 4924
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 4927
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/16 v2, 0x15be

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1e6c

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 4949
    :cond_0
    invoke-static {}, Lcom/android/server/power/OpPowerManagerInjector;->handleOnlineConfig()V

    goto :goto_0

    .line 4946
    :cond_1
    invoke-static {p1}, Lcom/android/server/power/OpPowerManagerInjector;->handleForceStop(Landroid/os/Message;)V

    .line 4947
    goto :goto_0

    .line 4941
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4900(Lcom/android/server/power/PowerManagerService;)V

    .line 4942
    goto :goto_0

    .line 4938
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService;->checkForLongWakeLocks()V

    .line 4939
    goto :goto_0

    .line 4935
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4800(Lcom/android/server/power/PowerManagerService;)V

    .line 4936
    goto :goto_0

    .line 4932
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4700(Lcom/android/server/power/PowerManagerService;)V

    .line 4933
    goto :goto_0

    .line 4929
    :cond_6
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PowerManagerHandlerCallback;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$4600(Lcom/android/server/power/PowerManagerService;)V

    .line 4930
    nop

    .line 4954
    :goto_0
    return v1
.end method
