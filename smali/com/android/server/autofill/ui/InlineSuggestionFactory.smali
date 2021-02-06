.class final Lcom/android/server/autofill/ui/InlineSuggestionFactory;
.super Ljava/lang/Object;
.source "InlineSuggestionFactory.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InlineSuggestionFactory"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    return-void
.end method

.method public static createAugmentedAutofillInlineSuggestions(Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Landroid/util/SparseArray;
    .locals 13
    .param p0, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p2, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p3, "inlineSuggestionUiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    .param p4, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p5, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p6, "userId"    # I
    .param p7, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "II)",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/Dataset;",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;>;"
        }
    .end annotation

    .line 112
    .local p1, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move-object/from16 v0, p3

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "InlineSuggestionFactory"

    const-string v2, "createAugmentedInlineSuggestionsResponse called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_0
    const/4 v3, 0x1

    new-instance v8, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$mIkFl7AuIYiwe2nVIdtGv_3Vz5Q;

    invoke-direct {v8, v0}, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$mIkFl7AuIYiwe2nVIdtGv_3Vz5Q;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    new-instance v9, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$VetWaJYpU_VQ7WcN5OSGtE-rqwo;

    invoke-direct {v9, v0}, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$VetWaJYpU_VQ7WcN5OSGtE-rqwo;-><init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-static/range {v3 .. v12}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionsInternal(ZLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/view/autofill/AutofillId;Ljava/lang/Runnable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Landroid/util/SparseArray;

    move-result-object v1

    return-object v1
.end method

.method public static createAutofillInlineSuggestions(Landroid/view/inputmethod/InlineSuggestionsRequest;ILjava/util/List;Landroid/view/autofill/AutofillId;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Landroid/util/SparseArray;
    .locals 14
    .param p0, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p1, "requestId"    # I
    .param p3, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p4, "client"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p5, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p6, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p7, "userId"    # I
    .param p8, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            "I",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            "Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "II)",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/Dataset;",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;>;"
        }
    .end annotation

    .line 86
    .local p2, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    move-object/from16 v0, p4

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    const-string v1, "InlineSuggestionFactory"

    const-string v2, "createInlineSuggestionsResponse called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    new-instance v1, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$oUc9QFXUEmqMQpqq-DeeqU32VWU;

    .local v1, "intentSenderConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/IntentSender;>;"
    invoke-direct {v1, v0}, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$oUc9QFXUEmqMQpqq-DeeqU32VWU;-><init>(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 89
    new-instance v2, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$UKG-0Z8ycMhN0JPNTa9f91gzvuk;

    move v13, p1

    .local v2, "onClickFactory":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/service/autofill/Dataset;Ljava/lang/Integer;>;"
    invoke-direct {v2, v0, p1}, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$UKG-0Z8ycMhN0JPNTa9f91gzvuk;-><init>(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V

    .line 93
    const/4 v3, 0x0

    move-object v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p5

    move-object v8, v2

    move-object v9, v1

    move-object/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v3 .. v12}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestionsInternal(ZLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/view/autofill/AutofillId;Ljava/lang/Runnable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Landroid/util/SparseArray;

    move-result-object v3

    return-object v3
.end method

.method private static createInlineAuthSuggestion(Landroid/service/autofill/InlinePresentation;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;IILjava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/IBinder;I)Landroid/view/inputmethod/InlineSuggestion;
    .locals 12
    .param p0, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p1, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p2, "userId"    # I
    .param p3, "sessionId"    # I
    .param p5, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p7, "hostInputToken"    # Landroid/os/IBinder;
    .param p8, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/InlinePresentation;",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "II",
            "Ljava/util/function/BiConsumer<",
            "Landroid/service/autofill/Dataset;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/IntentSender;",
            ">;",
            "Landroid/os/IBinder;",
            "I)",
            "Landroid/view/inputmethod/InlineSuggestion;"
        }
    .end annotation

    .line 190
    .local p4, "onClickFactory":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/service/autofill/Dataset;Ljava/lang/Integer;>;"
    .local p6, "intentSenderConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/IntentSender;>;"
    new-instance v6, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 191
    invoke-virtual {p0}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v1

    .line 192
    invoke-virtual {p0}, Landroid/service/autofill/InlinePresentation;->getAutofillHints()[Ljava/lang/String;

    move-result-object v3

    .line 193
    invoke-virtual {p0}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v5

    const-string v2, "android:autofill"

    const-string v4, "android:autofill:action"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    .local v0, "inlineSuggestionInfo":Landroid/view/inputmethod/InlineSuggestionInfo;
    new-instance v1, Landroid/view/inputmethod/InlineSuggestion;

    new-instance v3, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$3YGGyihb2cqmuyl8rlJqCQisdGM;

    move-object/from16 v11, p4

    invoke-direct {v3, v11}, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$3YGGyihb2cqmuyl8rlJqCQisdGM;-><init>(Ljava/util/function/BiConsumer;)V

    .line 196
    move-object v2, p0

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object v6, p1

    move v7, p2

    move v8, p3

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v10}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineContentProvider(Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Consumer;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;IILandroid/os/IBinder;I)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 195
    return-object v1
.end method

.method public static createInlineAuthentication(Landroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/FillResponse;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Landroid/view/inputmethod/InlineSuggestion;
    .locals 15
    .param p0, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "client"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p3, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p4, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p5, "userId"    # I
    .param p6, "sessionId"    # I

    .line 59
    move-object/from16 v0, p2

    new-instance v10, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$ZQMiOAEg-3WjjWq-e6-TvIpeBJ4;

    move-object/from16 v11, p1

    .local v10, "onClickFactory":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/service/autofill/Dataset;Ljava/lang/Integer;>;"
    invoke-direct {v10, v0, v11}, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$ZQMiOAEg-3WjjWq-e6-TvIpeBJ4;-><init>(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;)V

    .line 64
    new-instance v12, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$LrD07pSbranN3J_iiqWJbevtUNk;

    .local v12, "intentSenderConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/IntentSender;>;"
    invoke-direct {v12, v0}, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$LrD07pSbranN3J_iiqWJbevtUNk;-><init>(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v13

    .line 67
    .local v13, "inlineAuthentication":Landroid/service/autofill/InlinePresentation;
    nop

    .line 68
    const/4 v1, 0x0

    move-object v14, p0

    invoke-static {p0, v1, v13}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;)Landroid/service/autofill/InlinePresentation;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostDisplayId()I

    move-result v9

    .line 67
    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, v10

    move-object/from16 v6, p3

    move-object v7, v12

    invoke-static/range {v1 .. v9}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineAuthSuggestion(Landroid/service/autofill/InlinePresentation;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;IILjava/util/function/BiConsumer;Ljava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/IBinder;I)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v1

    return-object v1
.end method

.method private static createInlineContentProvider(Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Consumer;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;IILandroid/os/IBinder;I)Lcom/android/internal/view/inline/IInlineContentProvider;
    .locals 11
    .param p0, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p1, "onClickAction"    # Ljava/lang/Runnable;
    .param p2, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p4, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p5, "userId"    # I
    .param p6, "sessionId"    # I
    .param p7, "hostInputToken"    # Landroid/os/IBinder;
    .param p8, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/autofill/InlinePresentation;",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/IntentSender;",
            ">;",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "II",
            "Landroid/os/IBinder;",
            "I)",
            "Lcom/android/internal/view/inline/IInlineContentProvider;"
        }
    .end annotation

    .line 232
    .local p3, "intentSenderConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/IntentSender;>;"
    new-instance v10, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    move-object v0, v10

    move-object v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object v4, p0

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v0 .. v9}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;-><init>(Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;IILandroid/service/autofill/InlinePresentation;Landroid/os/IBinder;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V

    .line 235
    .local v0, "remoteInlineSuggestionViewConnector":Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;
    new-instance v1, Lcom/android/server/autofill/ui/InlineContentProviderImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/autofill/ui/InlineContentProviderImpl;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    .line 237
    .local v1, "inlineContentProvider":Lcom/android/server/autofill/ui/InlineContentProviderImpl;
    return-object v1
.end method

.method private static createInlineSuggestion(ZLandroid/service/autofill/Dataset;ILandroid/service/autofill/InlinePresentation;Ljava/util/function/BiConsumer;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;IILjava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/IBinder;I)Landroid/view/inputmethod/InlineSuggestion;
    .locals 16
    .param p0, "isAugmented"    # Z
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "datasetIndex"    # I
    .param p3, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p6, "userId"    # I
    .param p7, "sessionId"    # I
    .param p8, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p10, "hostInputToken"    # Landroid/os/IBinder;
    .param p11, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/service/autofill/Dataset;",
            "I",
            "Landroid/service/autofill/InlinePresentation;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/service/autofill/Dataset;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "II",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/IntentSender;",
            ">;",
            "Landroid/os/IBinder;",
            "I)",
            "Landroid/view/inputmethod/InlineSuggestion;"
        }
    .end annotation

    .line 164
    .local p4, "onClickFactory":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/service/autofill/Dataset;Ljava/lang/Integer;>;"
    .local p9, "intentSenderConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/IntentSender;>;"
    if-eqz p0, :cond_0

    const-string v0, "android:platform"

    move-object v3, v0

    goto :goto_0

    .line 165
    :cond_0
    const-string v0, "android:autofill"

    move-object v3, v0

    :goto_0
    nop

    .line 167
    .local v3, "suggestionSource":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "android:autofill:suggestion"

    move-object v5, v0

    goto :goto_1

    .line 168
    :cond_1
    const-string v0, "android:autofill:action"

    move-object v5, v0

    :goto_1
    nop

    .line 169
    .local v5, "suggestionType":Ljava/lang/String;
    new-instance v0, Landroid/view/inputmethod/InlineSuggestionInfo;

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    .line 171
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/InlinePresentation;->getAutofillHints()[Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/inputmethod/InlineSuggestionInfo;-><init>(Landroid/widget/inline/InlinePresentationSpec;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 174
    .local v0, "inlineSuggestionInfo":Landroid/view/inputmethod/InlineSuggestionInfo;
    new-instance v1, Landroid/view/inputmethod/InlineSuggestion;

    new-instance v7, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$JWm8ajpkUPKS0xGgZbnlyTUdRh4;

    move-object/from16 v2, p1

    move/from16 v4, p2

    move-object/from16 v15, p4

    invoke-direct {v7, v15, v2, v4}, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$JWm8ajpkUPKS0xGgZbnlyTUdRh4;-><init>(Ljava/util/function/BiConsumer;Landroid/service/autofill/Dataset;I)V

    .line 175
    move-object/from16 v6, p3

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v12, p7

    move-object/from16 v13, p10

    move/from16 v14, p11

    invoke-static/range {v6 .. v14}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineContentProvider(Landroid/service/autofill/InlinePresentation;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Consumer;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;IILandroid/os/IBinder;I)Lcom/android/internal/view/inline/IInlineContentProvider;

    move-result-object v6

    invoke-direct {v1, v0, v6}, Landroid/view/inputmethod/InlineSuggestion;-><init>(Landroid/view/inputmethod/InlineSuggestionInfo;Lcom/android/internal/view/inline/IInlineContentProvider;)V

    .line 180
    .local v1, "inlineSuggestion":Landroid/view/inputmethod/InlineSuggestion;
    return-object v1
.end method

.method private static createInlineSuggestionsInternal(ZLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/view/autofill/AutofillId;Ljava/lang/Runnable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Landroid/util/SparseArray;
    .locals 20
    .param p0, "isAugmented"    # Z
    .param p1, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p3, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p4, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p7, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p8, "userId"    # I
    .param p9, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/BiConsumer<",
            "Landroid/service/autofill/Dataset;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/IntentSender;",
            ">;",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "II)",
            "Landroid/util/SparseArray<",
            "Landroid/util/Pair<",
            "Landroid/service/autofill/Dataset;",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;>;"
        }
    .end annotation

    .line 130
    .local p2, "datasets":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local p5, "onClickFactory":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/service/autofill/Dataset;Ljava/lang/Integer;>;"
    .local p6, "intentSenderConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/IntentSender;>;"
    move-object/from16 v0, p3

    new-instance v1, Landroid/util/SparseArray;

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 131
    .local v1, "response":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Landroid/service/autofill/Dataset;Landroid/view/inputmethod/InlineSuggestion;>;>;"
    const/4 v2, 0x0

    .local v2, "datasetIndex":I
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 132
    move-object/from16 v15, p2

    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Landroid/service/autofill/Dataset;

    .line 133
    .local v14, "dataset":Landroid/service/autofill/Dataset;
    invoke-virtual {v14}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    .line 134
    .local v13, "fieldIndex":I
    const-string v3, "InlineSuggestionFactory"

    if-gez v13, :cond_0

    .line 135
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AutofillId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " not found in dataset"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    goto :goto_1

    .line 138
    :cond_0
    invoke-virtual {v14, v13}, Landroid/service/autofill/Dataset;->getFieldInlinePresentation(I)Landroid/service/autofill/InlinePresentation;

    move-result-object v12

    .line 140
    .local v12, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    if-nez v12, :cond_1

    .line 141
    const-string v4, "InlinePresentation not found in dataset"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    goto :goto_1

    .line 144
    :cond_1
    nop

    .line 146
    move-object/from16 v11, p1

    invoke-static {v11, v2, v12}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;)Landroid/service/autofill/InlinePresentation;

    move-result-object v6

    .line 149
    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostDisplayId()I

    move-result v17

    .line 144
    move/from16 v3, p0

    move-object v4, v14

    move v5, v2

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p4

    move-object/from16 v18, v12

    .end local v12    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .local v18, "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    move-object/from16 v12, p6

    move/from16 v19, v13

    .end local v13    # "fieldIndex":I
    .local v19, "fieldIndex":I
    move-object/from16 v13, v16

    move-object v0, v14

    .end local v14    # "dataset":Landroid/service/autofill/Dataset;
    .local v0, "dataset":Landroid/service/autofill/Dataset;
    move/from16 v14, v17

    invoke-static/range {v3 .. v14}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->createInlineSuggestion(ZLandroid/service/autofill/Dataset;ILandroid/service/autofill/InlinePresentation;Ljava/util/function/BiConsumer;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;IILjava/lang/Runnable;Ljava/util/function/Consumer;Landroid/os/IBinder;I)Landroid/view/inputmethod/InlineSuggestion;

    move-result-object v3

    .line 150
    .local v3, "inlineSuggestion":Landroid/view/inputmethod/InlineSuggestion;
    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 131
    .end local v0    # "dataset":Landroid/service/autofill/Dataset;
    .end local v3    # "inlineSuggestion":Landroid/view/inputmethod/InlineSuggestion;
    .end local v18    # "inlinePresentation":Landroid/service/autofill/InlinePresentation;
    .end local v19    # "fieldIndex":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p3

    goto :goto_0

    :cond_2
    move-object/from16 v15, p2

    .line 152
    .end local v2    # "datasetIndex":I
    return-object v1
.end method

.method static synthetic lambda$createAugmentedAutofillInlineSuggestions$4(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "inlineSuggestionUiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "datasetIndex"    # Ljava/lang/Integer;

    .line 116
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0}, Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;->autofill(Landroid/service/autofill/Dataset;I)V

    return-void
.end method

.method static synthetic lambda$createAugmentedAutofillInlineSuggestions$5(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/content/IntentSender;)V
    .locals 1
    .param p0, "inlineSuggestionUiCallback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$createAutofillInlineSuggestions$2(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/IntentSender;)V
    .locals 1
    .param p0, "client"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$createAutofillInlineSuggestions$3(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/Dataset;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "client"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p1, "requestId"    # I
    .param p2, "dataset"    # Landroid/service/autofill/Dataset;
    .param p3, "datasetIndex"    # Ljava/lang/Integer;

    .line 90
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p0, p1, v0, p2}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->fill(IILandroid/service/autofill/Dataset;)V

    .line 91
    return-void
.end method

.method static synthetic lambda$createInlineAuthSuggestion$7(Ljava/util/function/BiConsumer;)V
    .locals 2
    .param p0, "onClickFactory"    # Ljava/util/function/BiConsumer;

    .line 197
    nop

    .line 198
    const v0, 0xffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 197
    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$createInlineAuthentication$0(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/service/autofill/Dataset;Ljava/lang/Integer;)V
    .locals 6
    .param p0, "client"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p1, "response"    # Landroid/service/autofill/FillResponse;
    .param p2, "dataset"    # Landroid/service/autofill/Dataset;
    .param p3, "datasetIndex"    # Ljava/lang/Integer;

    .line 60
    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    .line 61
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    .line 60
    const/4 v5, 0x1

    move-object v0, p0

    invoke-interface/range {v0 .. v5}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;Z)V

    .line 63
    return-void
.end method

.method static synthetic lambda$createInlineAuthentication$1(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/IntentSender;)V
    .locals 1
    .param p0, "client"    # Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-interface {p0, p1, v0}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic lambda$createInlineSuggestion$6(Ljava/util/function/BiConsumer;Landroid/service/autofill/Dataset;I)V
    .locals 1
    .param p0, "onClickFactory"    # Ljava/util/function/BiConsumer;
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "datasetIndex"    # I

    .line 176
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private static mergedInlinePresentation(Landroid/view/inputmethod/InlineSuggestionsRequest;ILandroid/service/autofill/InlinePresentation;)Landroid/service/autofill/InlinePresentation;
    .locals 6
    .param p0, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p1, "index"    # I
    .param p2, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;

    .line 210
    invoke-virtual {p0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getInlinePresentationSpecs()Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, "specs":Ljava/util/List;, "Ljava/util/List<Landroid/widget/inline/InlinePresentationSpec;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    return-object p2

    .line 214
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/inline/InlinePresentationSpec;

    .line 215
    .local v1, "specFromHost":Landroid/widget/inline/InlinePresentationSpec;
    new-instance v2, Landroid/widget/inline/InlinePresentationSpec$Builder;

    .line 216
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/inline/InlinePresentationSpec;->getMinSize()Landroid/util/Size;

    move-result-object v3

    .line 217
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getInlinePresentationSpec()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/inline/InlinePresentationSpec;->getMaxSize()Landroid/util/Size;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/widget/inline/InlinePresentationSpec$Builder;-><init>(Landroid/util/Size;Landroid/util/Size;)V

    .line 218
    invoke-virtual {v1}, Landroid/widget/inline/InlinePresentationSpec;->getStyle()Landroid/os/Bundle;

    move-result-object v3

    .line 217
    invoke-virtual {v2, v3}, Landroid/widget/inline/InlinePresentationSpec$Builder;->setStyle(Landroid/os/Bundle;)Landroid/widget/inline/InlinePresentationSpec$Builder;

    move-result-object v2

    .line 218
    invoke-virtual {v2}, Landroid/widget/inline/InlinePresentationSpec$Builder;->build()Landroid/widget/inline/InlinePresentationSpec;

    move-result-object v2

    .line 219
    .local v2, "mergedInlinePresentation":Landroid/widget/inline/InlinePresentationSpec;
    new-instance v3, Landroid/service/autofill/InlinePresentation;

    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object v4

    .line 220
    invoke-virtual {p2}, Landroid/service/autofill/InlinePresentation;->isPinned()Z

    move-result v5

    invoke-direct {v3, v4, v2, v5}, Landroid/service/autofill/InlinePresentation;-><init>(Landroid/app/slice/Slice;Landroid/widget/inline/InlinePresentationSpec;Z)V

    .line 219
    return-object v3
.end method

.method public static responseNeedAuthentication(Landroid/service/autofill/FillResponse;)Z
    .locals 1
    .param p0, "response"    # Landroid/service/autofill/FillResponse;

    .line 51
    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/autofill/FillResponse;->getInlinePresentation()Landroid/service/autofill/InlinePresentation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
