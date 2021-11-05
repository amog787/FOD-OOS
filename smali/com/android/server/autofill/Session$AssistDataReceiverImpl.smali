.class final Lcom/android/server/autofill/Session$AssistDataReceiverImpl;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AssistDataReceiverImpl"
.end annotation


# instance fields
.field private mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mPendingFillRequest:Landroid/service/autofill/FillRequest;

.field private mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 1

    .line 372
    iput-object p1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    .line 378
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/Session;Lcom/android/server/autofill/Session$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/autofill/Session;
    .param p2, "x1"    # Lcom/android/server/autofill/Session$1;

    .line 372
    invoke-direct {p0, p1}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;-><init>(Lcom/android/server/autofill/Session;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$newAutofillRequestLocked$0$Session$AssistDataReceiverImpl(Lcom/android/server/autofill/ViewState;Landroid/view/inputmethod/InlineSuggestionsRequest;)V
    .locals 5
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p2, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 387
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$500(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 389
    monitor-exit v0

    return-void

    .line 391
    :cond_0
    iput-object p2, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 392
    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 393
    invoke-virtual {p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    .line 394
    const/high16 v1, 0x10000

    invoke-virtual {p1, v1}, Lcom/android/server/autofill/ViewState;->resetState(I)V

    .line 395
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method maybeRequestFillLocked()V
    .locals 7

    .line 400
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    if-nez v0, :cond_0

    goto :goto_0

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v0, :cond_1

    .line 404
    new-instance v0, Landroid/service/autofill/FillRequest;

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getId()I

    move-result v2

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 405
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getFillContexts()Ljava/util/List;

    move-result-object v3

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 406
    invoke-virtual {v1}, Landroid/service/autofill/FillRequest;->getFlags()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 408
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$100(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 409
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 410
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 411
    return-void

    .line 401
    :cond_2
    :goto_0
    return-void
.end method

.method newAutofillRequestLocked(Lcom/android/server/autofill/ViewState;Z)Ljava/util/function/Consumer;
    .locals 2
    .param p1, "viewState"    # Lcom/android/server/autofill/ViewState;
    .param p2, "isInlineRequest"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/ViewState;",
            "Z)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation

    .line 383
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    if-eqz p2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 384
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 385
    iput-object v0, p0, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingInlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 386
    if-eqz p2, :cond_1

    new-instance v0, Lcom/android/server/autofill/-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ;

    invoke-direct {v0, p0, p1}, Lcom/android/server/autofill/-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ;-><init>(Lcom/android/server/autofill/Session$AssistDataReceiverImpl;Lcom/android/server/autofill/ViewState;)V

    goto :goto_1

    .line 396
    :cond_1
    nop

    .line 386
    :goto_1
    return-object v0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 18
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$100(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_0

    .line 416
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const/4 v5, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    .line 417
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v3

    .line 416
    const-string/jumbo v3, "onHandleAssistData() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-static {v0, v5, v3, v4}, Lcom/android/server/autofill/Session;->access$300(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 418
    return-void

    .line 421
    :cond_0
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$400(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;

    move-result-object v5

    .line 422
    .local v5, "currentViewId":Landroid/view/autofill/AutofillId;
    if-nez v5, :cond_1

    .line 423
    const-string v0, "AutofillSession"

    const-string v3, "No current view id - session might have finished"

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void

    .line 427
    :cond_1
    const-string/jumbo v0, "structure"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/assist/AssistStructure;

    .line 428
    .local v6, "structure":Landroid/app/assist/AssistStructure;
    if-nez v6, :cond_2

    .line 429
    const-string v0, "AutofillSession"

    const-string v3, "No assist structure - app might have crashed providing it"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    return-void

    .line 433
    :cond_2
    const-string/jumbo v0, "receiverExtras"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 434
    .local v7, "receiverExtras":Landroid/os/Bundle;
    if-nez v7, :cond_3

    .line 435
    const-string v0, "AutofillSession"

    const-string v3, "No receiver extras - app might have crashed providing it"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    return-void

    .line 439
    :cond_3
    const-string v0, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 441
    .local v14, "requestId":I
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_4

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "New structure for requestId "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "AutofillSession"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_4
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$500(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 453
    :try_start_0
    invoke-virtual {v6}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    nop

    .line 460
    :try_start_1
    invoke-static {v6, v3}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 462
    .local v0, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_5

    .line 463
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/autofill/AutofillId;

    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget v10, v10, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v9, v10}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 462
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 467
    .end local v8    # "i":I
    :cond_5
    invoke-virtual {v6}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v8

    .line 469
    .local v8, "flags":I
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$600(Lcom/android/server/autofill/Session;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 471
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$800(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 472
    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 471
    invoke-virtual {v9, v10}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 473
    .local v9, "urlBarIds":[Ljava/lang/String;
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_6

    .line 474
    const-string v10, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "url_bars in compat mode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_6
    if-eqz v9, :cond_8

    .line 477
    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v6, v9}, Lcom/android/server/autofill/Helper;->sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/autofill/Session;->access$902(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 478
    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 479
    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v10

    .line 480
    .local v10, "urlBarId":Landroid/view/autofill/AutofillId;
    sget-boolean v11, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v11, :cond_7

    .line 481
    const-string v11, "AutofillSession"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Setting urlBar as id="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " and domain "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 482
    invoke-static {v13}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 481
    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_7
    new-instance v11, Lcom/android/server/autofill/ViewState;

    iget-object v12, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const/16 v13, 0x200

    invoke-direct {v11, v10, v12, v13}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 486
    .local v11, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v12, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v12}, Lcom/android/server/autofill/Session;->access$1000(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    .end local v10    # "urlBarId":Landroid/view/autofill/AutofillId;
    .end local v11    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_8
    or-int/lit8 v8, v8, 0x2

    move v13, v8

    goto :goto_1

    .line 469
    .end local v9    # "urlBarIds":[Ljava/lang/String;
    :cond_9
    move v13, v8

    .line 491
    .end local v8    # "flags":I
    .local v13, "flags":I
    :goto_1
    invoke-virtual {v6, v4}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 493
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_a

    .line 494
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v8, v9}, Lcom/android/server/autofill/Session;->access$1102(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 496
    :cond_a
    iget-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v4}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v8, Landroid/service/autofill/FillContext;

    invoke-direct {v8, v14, v6, v5}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v4}, Lcom/android/server/autofill/Session;->access$1200(Lcom/android/server/autofill/Session;)V

    .line 500
    iget-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v4}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 501
    .local v4, "numContexts":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    if-ge v8, v4, :cond_c

    .line 503
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_b

    .line 504
    goto :goto_3

    .line 507
    :cond_b
    iget-object v9, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    iget-object v10, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/FillContext;

    invoke-static {v9, v10, v13}, Lcom/android/server/autofill/Session;->access$1300(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    .line 501
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 510
    .end local v8    # "i":I
    :cond_c
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    .line 511
    invoke-static {v8, v3}, Lcom/android/server/autofill/Session;->access$1400(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 512
    .local v10, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    new-instance v3, Landroid/service/autofill/FillRequest;

    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$1500(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v11

    const/16 v16, 0x0

    move-object v8, v3

    move v9, v14

    move v12, v13

    move/from16 v17, v13

    .end local v13    # "flags":I
    .local v17, "flags":I
    move-object/from16 v13, v16

    invoke-direct/range {v8 .. v13}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/List;Landroid/os/Bundle;ILandroid/view/inputmethod/InlineSuggestionsRequest;)V

    .line 515
    .local v3, "request":Landroid/service/autofill/FillRequest;
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v8

    const-wide/16 v11, 0x0

    cmp-long v8, v8, v11

    if-lez v8, :cond_d

    .line 516
    iput-object v3, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mPendingFillRequest:Landroid/service/autofill/FillRequest;

    .line 517
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v8}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->maybeRequestFillLocked()V

    goto :goto_4

    .line 522
    :cond_d
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$100(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 524
    .end local v0    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v4    # "numContexts":I
    .end local v10    # "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    .end local v17    # "flags":I
    :goto_4
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 526
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$1600(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 527
    iget-object v0, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$800(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v0

    iget-object v4, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v4}, Lcom/android/server/autofill/Session;->access$1600(Lcom/android/server/autofill/Session;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->sendActivityAssistDataToContentCapture(Landroid/os/IBinder;Landroid/os/Bundle;)Z

    .line 529
    :cond_e
    return-void

    .line 524
    .end local v3    # "request":Landroid/service/autofill/FillRequest;
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 454
    :catch_0
    move-exception v0

    move-object v8, v0

    move-object v0, v8

    .line 455
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v8, v1, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->this$0:Lcom/android/server/autofill/Session;

    const-string v9, "Exception lazy loading assist structure for %s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    .line 456
    invoke-virtual {v6}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v11

    aput-object v11, v10, v3

    aput-object v0, v10, v4

    .line 455
    invoke-static {v8, v0, v9, v10}, Lcom/android/server/autofill/Session;->access$300(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    monitor-exit v15

    return-void

    .line 524
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_5
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 534
    return-void
.end method
