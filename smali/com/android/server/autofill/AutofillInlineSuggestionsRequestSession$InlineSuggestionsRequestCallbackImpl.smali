.class final Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;
.super Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;
.source "AutofillInlineSuggestionsRequestSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineSuggestionsRequestCallbackImpl"
.end annotation


# instance fields
.field private final mSession:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V
    .locals 1
    .param p1, "session"    # Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 376
    invoke-direct {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;-><init>()V

    .line 377
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    .line 378
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    .param p2, "x1"    # Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$1;

    .line 370
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;-><init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V

    return-void
.end method

.method static synthetic lambda$onInlineSuggestionsRequest$1(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p2, "x$1"    # Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    .line 400
    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {v0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$600(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method

.method static synthetic lambda$onInlineSuggestionsSessionInvalidated$6(Ljava/lang/Object;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;

    .line 465
    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$300(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V

    return-void
.end method

.method static synthetic lambda$onInlineSuggestionsUnsupported$0(Ljava/lang/Object;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p2, "x$1"    # Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    .line 387
    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {v0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$600(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method

.method static synthetic lambda$onInputMethodFinishInput$5(Ljava/lang/Object;ZZ)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Z
    .param p2, "x$1"    # Z

    .line 453
    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {v0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$400(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;ZZ)V

    return-void
.end method

.method static synthetic lambda$onInputMethodFinishInputView$4(Ljava/lang/Object;ZZ)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Z
    .param p2, "x$1"    # Z

    .line 442
    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {v0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$400(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;ZZ)V

    return-void
.end method

.method static synthetic lambda$onInputMethodStartInput$2(Ljava/lang/Object;Landroid/view/autofill/AutofillId;ZZ)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Landroid/view/autofill/AutofillId;
    .param p2, "x$1"    # Z
    .param p3, "x$2"    # Z

    .line 411
    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$500(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/autofill/AutofillId;ZZ)V

    return-void
.end method

.method static synthetic lambda$onInputMethodStartInputView$3(Ljava/lang/Object;ZZ)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # Z
    .param p2, "x$1"    # Z

    .line 430
    move-object v0, p0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-static {v0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$400(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;ZZ)V

    return-void
.end method


# virtual methods
.method public onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .locals 3
    .param p1, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p2, "callback"    # Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    .line 396
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInlineSuggestionsRequest() received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 398
    .local v0, "session":Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    if-eqz v0, :cond_1

    .line 399
    invoke-static {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$200(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$6TT1A0vQ00WTlDjmpSijK-STPXw;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$6TT1A0vQ00WTlDjmpSijK-STPXw;

    invoke-static {v2, v0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    :cond_1
    return-void
.end method

.method public onInlineSuggestionsSessionInvalidated()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 461
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInlineSuggestionsSessionInvalidated() called."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 463
    .local v0, "session":Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    if-eqz v0, :cond_1

    .line 464
    invoke-static {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$200(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$nuqiI4phD-yzdqPJfiNUB3iWieA;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$nuqiI4phD-yzdqPJfiNUB3iWieA;

    invoke-static {v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 468
    :cond_1
    return-void
.end method

.method public onInlineSuggestionsUnsupported()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 383
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInlineSuggestionsUnsupported() called."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 385
    .local v0, "session":Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    if-eqz v0, :cond_1

    .line 386
    invoke-static {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$200(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$VFHcyzAO8NVYHjxmhN-jyQeA2Zs;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$VFHcyzAO8NVYHjxmhN-jyQeA2Zs;

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 390
    :cond_1
    return-void
.end method

.method public onInputMethodFinishInput()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 449
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInputMethodFinishInput() received"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 451
    .local v0, "session":Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    if-eqz v0, :cond_1

    .line 452
    invoke-static {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$200(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$_tfl5jYfQRU0WRu6frSGaxiv46o;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$_tfl5jYfQRU0WRu6frSGaxiv46o;

    .line 454
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 452
    invoke-static {v2, v0, v4, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 456
    :cond_1
    return-void
.end method

.method public onInputMethodFinishInputView()V
    .locals 5

    .line 438
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInputMethodFinishInputView() received"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 440
    .local v0, "session":Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    if-eqz v0, :cond_1

    .line 441
    invoke-static {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$200(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$GHSsSkx0ioD59uqMYpaGIWm_Au8;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$GHSsSkx0ioD59uqMYpaGIWm_Au8;

    const/4 v3, 0x1

    .line 443
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 441
    invoke-static {v2, v0, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 445
    :cond_1
    return-void
.end method

.method public onInputMethodShowInputRequested(Z)V
    .locals 3
    .param p1, "requestResult"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 418
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    .line 419
    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInputMethodShowInputRequested() received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    return-void
.end method

.method public onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    .locals 5
    .param p1, "imeFieldId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onInputMethodStartInput() received on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 409
    .local v0, "session":Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    if-eqz v0, :cond_1

    .line 410
    invoke-static {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$200(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$_X30J1Sp6SgVlt_5Q4zWywe4y-s;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$_X30J1Sp6SgVlt_5Q4zWywe4y-s;

    const/4 v3, 0x1

    .line 412
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 410
    invoke-static {v2, v0, p1, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 414
    :cond_1
    return-void
.end method

.method public onInputMethodStartInputView()V
    .locals 5

    .line 426
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onInputMethodStartInputView() received"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;->mSession:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 428
    .local v0, "session":Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    if-eqz v0, :cond_1

    .line 429
    invoke-static {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->access$200(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$iojFsi8BvaYVJ5CAMyPhouidNTU;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl$iojFsi8BvaYVJ5CAMyPhouidNTU;

    .line 431
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 429
    invoke-static {v2, v0, v4, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 433
    :cond_1
    return-void
.end method
