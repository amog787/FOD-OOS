.class Lcom/android/server/autofill/Session$1;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/Session;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/Session;

    .line 297
    iput-object p1, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 300
    iget-object v0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$000(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 302
    invoke-static {v0}, Lcom/android/server/autofill/Session;->access$100(Lcom/android/server/autofill/Session;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v1

    .line 301
    const-string/jumbo v1, "onHandleAssistData() called without a remote service. mForAugmentedAutofillOnly: %s"

    invoke-static {v0, v3, v1, v2}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    return-void

    .line 305
    :cond_0
    const-string/jumbo v0, "structure"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure;

    .line 306
    .local v0, "structure":Landroid/app/assist/AssistStructure;
    if-nez v0, :cond_1

    .line 307
    const-string v1, "AutofillSession"

    const-string v2, "No assist structure - app might have crashed providing it"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 311
    :cond_1
    const-string/jumbo v3, "receiverExtras"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 312
    .local v3, "receiverExtras":Landroid/os/Bundle;
    if-nez v3, :cond_2

    .line 313
    const-string v1, "AutofillSession"

    const-string v2, "No receiver extras - app might have crashed providing it"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    return-void

    .line 317
    :cond_2
    const-string v4, "android.service.autofill.extra.REQUEST_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 319
    .local v4, "requestId":I
    sget-boolean v5, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_3

    .line 320
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New structure for requestId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillSession"

    invoke-static {v6, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_3
    iget-object v5, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v5}, Lcom/android/server/autofill/Session;->access$300(Lcom/android/server/autofill/Session;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 331
    :try_start_0
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->ensureDataForAutofill()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    nop

    .line 338
    :try_start_1
    invoke-static {v0, v1}, Lcom/android/server/autofill/Helper;->getAutofillIds(Landroid/app/assist/AssistStructure;Z)Ljava/util/ArrayList;

    move-result-object v6

    .line 340
    .local v6, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    move v7, v1

    .local v7, "i":I
    :goto_0
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 341
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/autofill/AutofillId;

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget v9, v9, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v8, v9}, Landroid/view/autofill/AutofillId;->setSessionId(I)V

    .line 340
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 345
    .end local v7    # "i":I
    :cond_4
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->getFlags()I

    move-result v7

    .line 347
    .local v7, "flags":I
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$400(Lcom/android/server/autofill/Session;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 349
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$600(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 350
    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$500(Lcom/android/server/autofill/Session;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 349
    invoke-virtual {v8, v9}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getUrlBarResourceIdsForCompatMode(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 351
    .local v8, "urlBarIds":[Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v9, :cond_5

    .line 352
    const-string v9, "AutofillSession"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "url_bars in compat mode: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_5
    if-eqz v8, :cond_7

    .line 355
    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v0, v8}, Lcom/android/server/autofill/Helper;->sanitizeUrlBar(Landroid/app/assist/AssistStructure;[Ljava/lang/String;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/autofill/Session;->access$702(Lcom/android/server/autofill/Session;Landroid/app/assist/AssistStructure$ViewNode;)Landroid/app/assist/AssistStructure$ViewNode;

    .line 356
    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 357
    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/assist/AssistStructure$ViewNode;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v9

    .line 358
    .local v9, "urlBarId":Landroid/view/autofill/AutofillId;
    sget-boolean v10, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v10, :cond_6

    .line 359
    const-string v10, "AutofillSession"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Setting urlBar as id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " and domain "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 360
    invoke-static {v12}, Lcom/android/server/autofill/Session;->access$700(Lcom/android/server/autofill/Session;)Landroid/app/assist/AssistStructure$ViewNode;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/assist/AssistStructure$ViewNode;->getWebDomain()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 359
    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_6
    new-instance v10, Lcom/android/server/autofill/ViewState;

    iget-object v11, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const/16 v12, 0x200

    invoke-direct {v10, v9, v11, v12}, Lcom/android/server/autofill/ViewState;-><init>(Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ViewState$Listener;I)V

    .line 364
    .local v10, "viewState":Lcom/android/server/autofill/ViewState;
    iget-object v11, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v11}, Lcom/android/server/autofill/Session;->access$800(Lcom/android/server/autofill/Session;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v9    # "urlBarId":Landroid/view/autofill/AutofillId;
    .end local v10    # "viewState":Lcom/android/server/autofill/ViewState;
    :cond_7
    or-int/lit8 v7, v7, 0x2

    .line 369
    .end local v8    # "urlBarIds":[Ljava/lang/String;
    :cond_8
    invoke-virtual {v0, v2}, Landroid/app/assist/AssistStructure;->sanitizeForParceling(Z)V

    .line 371
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v8}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v8

    if-nez v8, :cond_9

    .line 372
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v8, v9}, Lcom/android/server/autofill/Session;->access$902(Lcom/android/server/autofill/Session;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 374
    :cond_9
    iget-object v2, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v8, Landroid/service/autofill/FillContext;

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$1000(Lcom/android/server/autofill/Session;)Landroid/view/autofill/AutofillId;

    move-result-object v9

    invoke-direct {v8, v4, v0, v9}, Landroid/service/autofill/FillContext;-><init>(ILandroid/app/assist/AssistStructure;Landroid/view/autofill/AutofillId;)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v2, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->access$1100(Lcom/android/server/autofill/Session;)V

    .line 378
    iget-object v2, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 379
    .local v2, "numContexts":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v2, :cond_a

    .line 380
    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    iget-object v10, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v10}, Lcom/android/server/autofill/Session;->access$900(Lcom/android/server/autofill/Session;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/service/autofill/FillContext;

    invoke-static {v9, v10, v7}, Lcom/android/server/autofill/Session;->access$1200(Lcom/android/server/autofill/Session;Landroid/service/autofill/FillContext;I)V

    .line 379
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 383
    .end local v8    # "i":I
    :cond_a
    iget-object v8, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    .line 384
    invoke-static {v8, v1}, Lcom/android/server/autofill/Session;->access$1300(Lcom/android/server/autofill/Session;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 385
    .local v1, "contexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/autofill/FillContext;>;"
    new-instance v8, Landroid/service/autofill/FillRequest;

    iget-object v9, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v9}, Lcom/android/server/autofill/Session;->access$1400(Lcom/android/server/autofill/Session;)Landroid/os/Bundle;

    move-result-object v9

    invoke-direct {v8, v4, v1, v9, v7}, Landroid/service/autofill/FillRequest;-><init>(ILjava/util/ArrayList;Landroid/os/Bundle;I)V

    move-object v1, v8

    .line 386
    .end local v2    # "numContexts":I
    .end local v6    # "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v7    # "flags":I
    .local v1, "request":Landroid/service/autofill/FillRequest;
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    iget-object v2, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    invoke-static {v2}, Lcom/android/server/autofill/Session;->access$000(Lcom/android/server/autofill/Session;)Lcom/android/server/autofill/RemoteFillService;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/autofill/RemoteFillService;->onFillRequest(Landroid/service/autofill/FillRequest;)V

    .line 389
    return-void

    .line 386
    .end local v1    # "request":Landroid/service/autofill/FillRequest;
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 332
    :catch_0
    move-exception v6

    .line 333
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/autofill/Session$1;->this$0:Lcom/android/server/autofill/Session;

    const-string v8, "Exception lazy loading assist structure for %s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    .line 334
    invoke-virtual {v0}, Landroid/app/assist/AssistStructure;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v10

    aput-object v10, v9, v1

    aput-object v6, v9, v2

    .line 333
    invoke-static {v7, v6, v8, v9}, Lcom/android/server/autofill/Session;->access$200(Lcom/android/server/autofill/Session;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    monitor-exit v5

    return-void

    .line 386
    .end local v6    # "e":Ljava/lang/RuntimeException;
    :goto_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "screenshot"    # Landroid/graphics/Bitmap;

    .line 394
    return-void
.end method
