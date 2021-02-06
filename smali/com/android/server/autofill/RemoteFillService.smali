.class final Lcom/android/server/autofill/RemoteFillService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteFillService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/autofill/IAutoFillService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RemoteFillService"

.field private static final TIMEOUT_IDLE_BIND_MILLIS:J = 0x1388L

.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x1388L


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Landroid/service/autofill/FillResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingFillRequestId:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;Z)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callbacks"    # Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
    .param p5, "bindInstantServiceAllowed"    # Z

    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 81
    if-eqz p5, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x100000

    or-int v5, v0, v1

    sget-object v7, Lcom/android/server/autofill/-$$Lambda$Q-iZrXrDBZAnj-gnbNOhH00i8uU;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$Q-iZrXrDBZAnj-gnbNOhH00i8uU;

    .line 79
    move-object v2, p0

    move-object v3, p1

    move v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    .line 61
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 83
    iput-object p4, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    .line 84
    iput-object p2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/RemoteFillService;Landroid/os/ICancellationSignal;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteFillService;
    .param p1, "x1"    # Landroid/os/ICancellationSignal;

    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    return-void
.end method

.method private dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V
    .locals 3
    .param p1, "signal"    # Landroid/os/ICancellationSignal;

    .line 97
    if-nez p1, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteFillService"

    const-string v2, "Error requesting a cancellation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method public addLast(Lcom/android/internal/infra/ServiceConnector$Job;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/infra/ServiceConnector$Job<",
            "Landroid/service/autofill/IAutoFillService;",
            "*>;)V"
        }
    .end annotation

    .line 115
    .local p1, "iAutoFillServiceJob":Lcom/android/internal/infra/ServiceConnector$Job;, "Lcom/android/internal/infra/ServiceConnector$Job<Landroid/service/autofill/IAutoFillService;*>;"
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->cancelPendingJobs()V

    .line 116
    invoke-super {p0, p1}, Lcom/android/internal/infra/ServiceConnector$Impl;->addLast(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public bridge synthetic addLast(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/android/internal/infra/ServiceConnector$Job;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/RemoteFillService;->addLast(Lcom/android/internal/infra/ServiceConnector$Job;)V

    return-void
.end method

.method public cancelCurrentRequest()I
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    goto :goto_0

    .line 132
    :cond_0
    const/high16 v1, -0x80000000

    :goto_0
    monitor-exit v0

    .line 130
    return v1

    .line 133
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public destroy()V
    .locals 0

    .line 228
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteFillService;->unbind()V

    .line 229
    return-void
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 109
    const-wide/16 v0, 0x1388

    return-wide v0
.end method

.method public synthetic lambda$onFillRequest$0$RemoteFillService(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "futureRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p3, "cancellationSink"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p4, "remoteService"    # Landroid/service/autofill/IAutoFillService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling onFillRequest() for id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RemoteFillService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 146
    .local v0, "fillRequest":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/autofill/FillResponse;>;"
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$1;

    invoke-direct {v1, p0, p2, p3, v0}, Lcom/android/server/autofill/RemoteFillService$1;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p4, p1, v1}, Landroid/service/autofill/IAutoFillService;->onFillRequest(Landroid/service/autofill/FillRequest;Landroid/service/autofill/IFillCallback;)V

    .line 168
    return-object v0
.end method

.method public synthetic lambda$onFillRequest$1$RemoteFillService(Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 4
    .param p1, "err"    # Ljava/lang/Throwable;
    .param p2, "request"    # Landroid/service/autofill/FillRequest;
    .param p3, "res"    # Landroid/service/autofill/FillResponse;
    .param p4, "cancellationSink"    # Ljava/util/concurrent/atomic/AtomicReference;

    .line 178
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 180
    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 181
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    if-nez p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 184
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v3

    .line 183
    invoke-interface {v0, v1, p3, v2, v3}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V

    goto :goto_0

    .line 186
    :cond_0
    const-string v0, "RemoteFillService"

    const-string v1, "Error calling on fill request"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    instance-of v0, p1, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_1

    .line 188
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ICancellationSignal;

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    .line 189
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestTimeout(I)V

    goto :goto_0

    .line 190
    :cond_1
    instance-of v0, p1, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_2

    .line 191
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ICancellationSignal;

    invoke-direct {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->dispatchCancellationSignal(Landroid/os/ICancellationSignal;)V

    goto :goto_0

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    invoke-virtual {p2}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onFillRequestFailure(ILjava/lang/CharSequence;)V

    .line 196
    :goto_0
    return-void

    .line 181
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public synthetic lambda$onFillRequest$2$RemoteFillService(Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/FillResponse;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "request"    # Landroid/service/autofill/FillRequest;
    .param p2, "cancellationSink"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p3, "res"    # Landroid/service/autofill/FillResponse;
    .param p4, "err"    # Ljava/lang/Throwable;

    .line 177
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$RkgpxnfvOIHus8aiIIO_Tqgio1E;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/service/autofill/FillRequest;Landroid/service/autofill/FillResponse;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$onSaveRequest$3$RemoteFillService(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/IAutoFillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;
    .param p2, "service"    # Landroid/service/autofill/IAutoFillService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    const-string v0, "RemoteFillService"

    const-string v1, "calling onSaveRequest()"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_0
    new-instance v0, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {v0}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    .line 204
    .local v0, "save":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/content/IntentSender;>;"
    new-instance v1, Lcom/android/server/autofill/RemoteFillService$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/autofill/RemoteFillService$2;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-interface {p2, p1, v1}, Landroid/service/autofill/IAutoFillService;->onSaveRequest(Landroid/service/autofill/SaveRequest;Landroid/service/autofill/ISaveCallback;)V

    .line 215
    return-object v0
.end method

.method public synthetic lambda$onSaveRequest$4$RemoteFillService(Ljava/lang/Throwable;Landroid/content/IntentSender;)V
    .locals 3
    .param p1, "err"    # Ljava/lang/Throwable;
    .param p2, "res"    # Landroid/content/IntentSender;

    .line 218
    if-nez p1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V

    goto :goto_0

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService;->mCallbacks:Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService;->mComponentName:Landroid/content/ComponentName;

    .line 222
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 221
    invoke-interface {v0, v1, v2}, Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;->onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 224
    :goto_0
    return-void
.end method

.method public synthetic lambda$onSaveRequest$5$RemoteFillService(Landroid/content/IntentSender;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "res"    # Landroid/content/IntentSender;
    .param p2, "err"    # Ljava/lang/Throwable;

    .line 217
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$adrL6UDQX3d0e-QQL11h9TWJcM4;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$adrL6UDQX3d0e-QQL11h9TWJcM4;-><init>(Lcom/android/server/autofill/RemoteFillService;Ljava/lang/Throwable;Landroid/content/IntentSender;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFillRequest(Landroid/service/autofill/FillRequest;)V
    .locals 6
    .param p1, "request"    # Landroid/service/autofill/FillRequest;

    .line 137
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 138
    .local v0, "cancellationSink":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/ICancellationSignal;>;"
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 140
    .local v1, "futureRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/util/concurrent/CompletableFuture<Landroid/service/autofill/FillResponse;>;>;"
    new-instance v2, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;

    invoke-direct {v2, p0, p1, v1, v0}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$V3RTZXH5ru6fNYPwjZcEmEQQ9-4;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {p0, v2}, Lcom/android/server/autofill/RemoteFillService;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 169
    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    .line 170
    .local v2, "connectThenFillRequest":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Landroid/service/autofill/FillResponse;>;"
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 172
    iget-object v3, p0, Lcom/android/server/autofill/RemoteFillService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 173
    :try_start_0
    iput-object v2, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequest:Ljava/util/concurrent/CompletableFuture;

    .line 174
    invoke-virtual {p1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v4

    iput v4, p0, Lcom/android/server/autofill/RemoteFillService;->mPendingFillRequestId:I

    .line 175
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    new-instance v3, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$MaYOnIAubd8qKbTq0eWkOchXAJk;

    invoke-direct {v3, p0, p1, v0}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$MaYOnIAubd8qKbTq0eWkOchXAJk;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/FillRequest;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 197
    return-void

    .line 175
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public onSaveRequest(Landroid/service/autofill/SaveRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/service/autofill/SaveRequest;

    .line 200
    new-instance v0, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KkKWdeiLv0uNTtyjP9VumTTYr-A;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$KkKWdeiLv0uNTtyjP9VumTTYr-A;-><init>(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/SaveRequest;)V

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteFillService;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 216
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lQ9Txb0D49A09bfomYmOPhXTXRE;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/-$$Lambda$RemoteFillService$lQ9Txb0D49A09bfomYmOPhXTXRE;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    .line 217
    invoke-virtual {v0, v1}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 225
    return-void
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    .line 51
    check-cast p1, Landroid/service/autofill/IAutoFillService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteFillService;->onServiceConnectionStatusChanged(Landroid/service/autofill/IAutoFillService;Z)V

    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/service/autofill/IAutoFillService;Z)V
    .locals 3
    .param p1, "service"    # Landroid/service/autofill/IAutoFillService;
    .param p2, "connected"    # Z

    .line 90
    :try_start_0
    invoke-interface {p1, p2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception calling onConnectedStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteFillService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method
