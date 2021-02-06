.class Lcom/android/server/PinnerService$3;
.super Landroid/app/IUidObserver$Stub;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PinnerService;->registerUidListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PinnerService;


# direct methods
.method constructor <init>(Lcom/android/server/PinnerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/PinnerService;

    .line 323
    iput-object p1, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onUidActive$1(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I

    .line 333
    move-object v0, p0

    check-cast v0, Lcom/android/server/PinnerService;

    invoke-static {v0, p1}, Lcom/android/server/PinnerService;->access$300(Lcom/android/server/PinnerService;I)V

    return-void
.end method

.method static synthetic lambda$onUidGone$0(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I

    .line 327
    move-object v0, p0

    check-cast v0, Lcom/android/server/PinnerService;

    invoke-static {v0, p1}, Lcom/android/server/PinnerService;->access$400(Lcom/android/server/PinnerService;I)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .locals 4
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$3$3Ta6TX4Jq9YbpUYE5Y0r8Xt8rBw;

    iget-object v2, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 333
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 332
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 334
    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "cached"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 347
    return-void
.end method

.method public onUidGone(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    invoke-static {v0}, Lcom/android/server/PinnerService;->access$200(Lcom/android/server/PinnerService;)Lcom/android/server/PinnerService$PinnerHandler;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$PinnerService$3$RQBbrt9b8esLBxJImxDgVTsP34I;->INSTANCE:Lcom/android/server/-$$Lambda$PinnerService$3$RQBbrt9b8esLBxJImxDgVTsP34I;

    iget-object v2, p0, Lcom/android/server/PinnerService$3;->this$0:Lcom/android/server/PinnerService;

    .line 327
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 326
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/PinnerService$PinnerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 328
    return-void
.end method

.method public onUidIdle(IZ)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "disabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 338
    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .locals 0
    .param p1, "uid"    # I
    .param p2, "procState"    # I
    .param p3, "procStateSeq"    # J
    .param p5, "capability"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 343
    return-void
.end method
