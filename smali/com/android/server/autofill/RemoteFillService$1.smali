.class Lcom/android/server/autofill/RemoteFillService$1;
.super Landroid/service/autofill/IFillCallback$Stub;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteFillService;->lambda$onFillRequest$0(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;

.field final synthetic val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$fillRequest:Ljava/util/concurrent/CompletableFuture;

.field final synthetic val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteFillService;

    .line 146
    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p0}, Landroid/service/autofill/IFillCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancellable(Landroid/os/ICancellationSignal;)V
    .locals 2
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;

    .line 149
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$futureRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    .line 150
    .local v0, "future":Ljava/util/concurrent/CompletableFuture;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$1;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v1, p1}, Lcom/android/server/autofill/RemoteFillService;->access$000(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$cancellationSink:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 155
    :goto_0
    return-void
.end method

.method public onFailure(ILjava/lang/CharSequence;)V
    .locals 3
    .param p1, "requestId"    # I
    .param p2, "message"    # Ljava/lang/CharSequence;

    .line 164
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Ljava/lang/RuntimeException;

    .line 165
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 166
    return-void
.end method

.method public onSuccess(Landroid/service/autofill/FillResponse;)V
    .locals 1
    .param p1, "response"    # Landroid/service/autofill/FillResponse;

    .line 159
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$1;->val$fillRequest:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method
