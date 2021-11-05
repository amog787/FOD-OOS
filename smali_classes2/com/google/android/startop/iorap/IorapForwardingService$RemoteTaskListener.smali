.class Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;
.super Lcom/google/android/startop/iorap/ITaskListener$Stub;
.source "IorapForwardingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/startop/iorap/IorapForwardingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteTaskListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/startop/iorap/IorapForwardingService;


# direct methods
.method private constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-direct {p0}, Lcom/google/android/startop/iorap/ITaskListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/startop/iorap/IorapForwardingService;Lcom/google/android/startop/iorap/IorapForwardingService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/startop/iorap/IorapForwardingService;
    .param p2, "x1"    # Lcom/google/android/startop/iorap/IorapForwardingService$1;

    .line 656
    invoke-direct {p0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;-><init>(Lcom/google/android/startop/iorap/IorapForwardingService;)V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .locals 2
    .param p1, "requestId"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "result"    # Lcom/google/android/startop/iorap/TaskResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 669
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 670
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 671
    const-string v1, "RemoteTaskListener#onComplete(%s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 670
    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$100(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/google/android/startop/iorap/IorapForwardingService$RemoteTaskListener;->this$0:Lcom/google/android/startop/iorap/IorapForwardingService;

    invoke-static {v0}, Lcom/google/android/startop/iorap/IorapForwardingService;->access$100(Lcom/google/android/startop/iorap/IorapForwardingService;)Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/startop/iorap/IorapForwardingService$IorapdJobService;->onIorapdTaskCompleted(Lcom/google/android/startop/iorap/RequestId;)V

    .line 679
    :cond_1
    return-void
.end method

.method public onProgress(Lcom/google/android/startop/iorap/RequestId;Lcom/google/android/startop/iorap/TaskResult;)V
    .locals 2
    .param p1, "requestId"    # Lcom/google/android/startop/iorap/RequestId;
    .param p2, "result"    # Lcom/google/android/startop/iorap/TaskResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 659
    sget-boolean v0, Lcom/google/android/startop/iorap/IorapForwardingService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 661
    const-string v1, "RemoteTaskListener#onProgress(%s, %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 660
    const-string v1, "IorapForwardingService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :cond_0
    return-void
.end method
