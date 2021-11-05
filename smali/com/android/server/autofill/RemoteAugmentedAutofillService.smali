.class final Lcom/android/server/autofill/RemoteAugmentedAutofillService;
.super Lcom/android/internal/infra/ServiceConnector$Impl;
.source "RemoteAugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/ServiceConnector$Impl<",
        "Landroid/service/autofill/augmented/IAugmentedAutofillService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mIdleUnbindTimeoutMs:I

.field private final mRequestTimeoutMs:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;ZZII)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "callbacks"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
    .param p5, "bindInstantServiceAllowed"    # Z
    .param p6, "verbose"    # Z
    .param p7, "idleUnbindTimeoutMs"    # I
    .param p8, "requestTimeoutMs"    # I

    .line 81
    move-object v6, p0

    move-object v7, p2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.augmented.AugmentedAutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 83
    if-eqz p5, :cond_0

    const/high16 v0, 0x400000

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    sget-object v5, Lcom/android/server/autofill/-$$Lambda$sdnPz1IsKKVKSEXwI7z4h2-SxiM;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$sdnPz1IsKKVKSEXwI7z4h2-SxiM;

    .line 81
    move-object v0, p0

    move-object v1, p1

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 85
    move v0, p7

    iput v0, v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    .line 86
    move/from16 v1, p8

    iput v1, v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    .line 87
    iput-object v7, v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    .line 88
    move-object v2, p4

    iput-object v2, v6, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    .line 91
    invoke-virtual {p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->connect()Lcom/android/internal/infra/AndroidFuture;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 67
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Landroid/os/Bundle;
    .param p5, "x5"    # Landroid/view/autofill/AutofillId;
    .param p6, "x6"    # Landroid/view/autofill/AutofillValue;
    .param p7, "x7"    # Ljava/util/function/Function;
    .param p8, "x8"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p9, "x9"    # Ljava/lang/Runnable;
    .param p10, "x10"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p11, "x11"    # I

    .line 67
    invoke-direct/range {p0 .. p11}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->maybeRequestShowInlineSuggestions(ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V

    return-void
.end method

.method static getComponentName(Ljava/lang/String;IZ)Landroid/util/Pair;
    .locals 7
    .param p0, "componentName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .param p2, "isTemporary"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ServiceInfo;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 97
    const/16 v0, 0x80

    .line 98
    .local v0, "flags":I
    if-nez p2, :cond_0

    .line 99
    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    .line 103
    :cond_0
    const/4 v1, 0x0

    .line 105
    .local v1, "serviceInfo":Landroid/content/pm/ServiceInfo;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 106
    .local v3, "serviceComponent":Landroid/content/ComponentName;
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-interface {v4, v3, v0, p1}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v4

    move-object v1, v4

    .line 108
    if-nez v1, :cond_1

    .line 109
    sget-object v4, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad service name for flags "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    return-object v2

    .line 115
    :cond_1
    nop

    .line 116
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 112
    .end local v3    # "serviceComponent":Landroid/content/ComponentName;
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting service info for \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\': "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-object v2
.end method

.method static synthetic lambda$dispatchCancellation$2(Landroid/os/ICancellationSignal;)V
    .locals 3
    .param p0, "cancellation"    # Landroid/os/ICancellationSignal;

    .line 233
    :try_start_0
    invoke-interface {p0}, Landroid/os/ICancellationSignal;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    const-string v2, "Error requesting a cancellation"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 237
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$onDestroyAutofillWindowsRequest$3(Landroid/service/autofill/augmented/IAugmentedAutofillService;)V
    .locals 0
    .param p0, "s"    # Landroid/service/autofill/augmented/IAugmentedAutofillService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 333
    invoke-interface {p0}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDestroyAllFillWindowsRequest()V

    return-void
.end method

.method private maybeRequestShowInlineSuggestions(ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V
    .locals 17
    .param p1, "sessionId"    # I
    .param p2, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p4, "clientState"    # Landroid/os/Bundle;
    .param p5, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p6, "focusedValue"    # Landroid/view/autofill/AutofillValue;
    .param p8, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p9, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p10, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            "Ljava/util/List<",
            "Landroid/service/autofill/Dataset;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/autofill/ui/InlineFillUi;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/view/autofill/IAutoFillManagerClient;",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "I)V"
        }
    .end annotation

    .line 248
    .local p3, "inlineSuggestionsData":Ljava/util/List;, "Ljava/util/List<Landroid/service/autofill/Dataset;>;"
    .local p7, "inlineSuggestionsCallback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/autofill/ui/InlineFillUi;Ljava/lang/Boolean;>;"
    move-object/from16 v7, p0

    move/from16 v15, p1

    move-object/from16 v14, p7

    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz v14, :cond_3

    if-eqz p2, :cond_3

    if-nez p10, :cond_0

    move-object/from16 v4, p4

    move-object v0, v14

    move v1, v15

    goto :goto_2

    .line 258
    :cond_0
    iget-object v0, v7, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    invoke-interface {v0, v15}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;->setLastResponse(I)V

    .line 261
    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual/range {p6 .. p6}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v11, v0

    .line 264
    .local v11, "filterText":Ljava/lang/String;
    new-instance v12, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p8

    move-object/from16 v5, p7

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/os/Bundle;Landroid/view/autofill/IAutoFillManagerClient;Ljava/util/function/Function;Landroid/view/autofill/AutofillId;)V

    .line 265
    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v13, p9

    move-object v0, v14

    move-object/from16 v14, p10

    move v1, v15

    move/from16 v15, p11

    move/from16 v16, p1

    invoke-static/range {v8 .. v16}, Lcom/android/server/autofill/ui/InlineFillUi;->forAugmentedAutofill(Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/view/autofill/AutofillId;Ljava/lang/String;Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;II)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    .line 318
    .local v2, "inlineFillUi":Lcom/android/server/autofill/ui/InlineFillUi;
    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 319
    iget-object v3, v7, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mCallbacks:Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    move-object/from16 v4, p4

    invoke-interface {v3, v1, v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;->logAugmentedAutofillShown(ILandroid/os/Bundle;)V

    goto :goto_1

    .line 318
    :cond_2
    move-object/from16 v4, p4

    .line 321
    :goto_1
    return-void

    .line 248
    .end local v2    # "inlineFillUi":Lcom/android/server/autofill/ui/InlineFillUi;
    .end local v11    # "filterText":Ljava/lang/String;
    :cond_3
    move-object/from16 v4, p4

    move-object v0, v14

    move v1, v15

    .line 253
    :goto_2
    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    .line 254
    invoke-static/range {p5 .. p5}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_4
    return-void
.end method


# virtual methods
.method dispatchCancellation(Landroid/os/ICancellationSignal;)V
    .locals 2
    .param p1, "cancellation"    # Landroid/os/ICancellationSignal;

    .line 228
    if-nez p1, :cond_0

    .line 229
    return-void

    .line 231
    :cond_0
    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$yudIvtYKB9W2eb_t3RT2S1y3KiI;

    invoke-direct {v1, p1}, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$yudIvtYKB9W2eb_t3RT2S1y3KiI;-><init>(Landroid/os/ICancellationSignal;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method protected getAutoDisconnectTimeoutMs()J
    .locals 2

    .line 140
    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mIdleUnbindTimeoutMs:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public synthetic lambda$onRequestAutofillLocked$0$RemoteAugmentedAutofillService(Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILjava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/augmented/IAugmentedAutofillService;)Ljava/util/concurrent/CompletableFuture;
    .locals 20
    .param p1, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p2, "sessionId"    # I
    .param p3, "taskId"    # I
    .param p4, "activityComponent"    # Landroid/content/ComponentName;
    .param p5, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p6, "focusedValue"    # Landroid/view/autofill/AutofillValue;
    .param p7, "requestTime"    # J
    .param p9, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p10, "inlineSuggestionsCallback"    # Ljava/util/function/Function;
    .param p11, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p12, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p13, "userId"    # I
    .param p14, "cancellationRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p15, "service"    # Landroid/service/autofill/augmented/IAugmentedAutofillService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move-object/from16 v17, p14

    move-object/from16 v2, p15

    .line 157
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object/from16 v18, v0

    .local v18, "requestAutofill":Lcom/android/internal/infra/AndroidFuture;, "Lcom/android/internal/infra/AndroidFuture<Ljava/lang/Void;>;"
    move-object/from16 v16, v18

    .line 160
    new-instance v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;

    move-object/from16 v19, v0

    invoke-direct/range {v0 .. v17}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/service/autofill/augmented/IAugmentedAutofillService;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/atomic/AtomicReference;)V

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/view/autofill/IAutoFillManagerClient;->getAugmentedAutofillClient(Lcom/android/internal/os/IResultReceiver;)V

    .line 204
    return-object v18
.end method

.method public synthetic lambda$onRequestAutofillLocked$1$RemoteAugmentedAutofillService(Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;ILjava/lang/Void;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "cancellationRef"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p2, "activityComponent"    # Landroid/content/ComponentName;
    .param p3, "sessionId"    # I
    .param p4, "res"    # Ljava/lang/Void;
    .param p5, "err"    # Ljava/lang/Throwable;

    .line 207
    instance-of v0, p5, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->dispatchCancellation(Landroid/os/ICancellationSignal;)V

    goto :goto_0

    .line 209
    :cond_0
    instance-of v0, p5, Ljava/util/concurrent/TimeoutException;

    if-eqz v0, :cond_1

    .line 210
    sget-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PendingAutofillRequest timed out ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms) for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/ICancellationSignal;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->dispatchCancellation(Landroid/os/ICancellationSignal;)V

    .line 214
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_2

    .line 215
    const/16 v1, 0xf

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    int-to-long v5, v0

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Landroid/service/autofill/augmented/Helper;->logResponse(ILjava/lang/String;Landroid/content/ComponentName;IJ)V

    goto :goto_0

    .line 218
    :cond_1
    if-eqz p5, :cond_2

    .line 219
    sget-object v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception handling getAugmentedAutofillClient() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroyAutofillWindowsRequest()V
    .locals 1

    .line 333
    sget-object v0, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$qEoykSLvIU1PeokaPDuPOb0M5U0;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$qEoykSLvIU1PeokaPDuPOb0M5U0;

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->run(Lcom/android/internal/infra/ServiceConnector$VoidJob;)Z

    .line 334
    return-void
.end method

.method public onRequestAutofillLocked(ILandroid/view/autofill/IAutoFillManagerClient;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Landroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V
    .locals 20
    .param p1, "sessionId"    # I
    .param p2, "client"    # Landroid/view/autofill/IAutoFillManagerClient;
    .param p3, "taskId"    # I
    .param p4, "activityComponent"    # Landroid/content/ComponentName;
    .param p5, "focusedId"    # Landroid/view/autofill/AutofillId;
    .param p6, "focusedValue"    # Landroid/view/autofill/AutofillValue;
    .param p7, "inlineSuggestionsRequest"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p9, "onErrorCallback"    # Ljava/lang/Runnable;
    .param p10, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p11, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/autofill/IAutoFillManagerClient;",
            "I",
            "Landroid/content/ComponentName;",
            "Landroid/view/autofill/AutofillId;",
            "Landroid/view/autofill/AutofillValue;",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            "Ljava/util/function/Function<",
            "Lcom/android/server/autofill/ui/InlineFillUi;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "I)V"
        }
    .end annotation

    .line 153
    .local p8, "inlineSuggestionsCallback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/autofill/ui/InlineFillUi;Ljava/lang/Boolean;>;"
    move-object/from16 v15, p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 154
    .local v16, "requestTime":J
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    move-object v14, v0

    .line 156
    .local v14, "cancellationRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/ICancellationSignal;>;"
    new-instance v13, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$KCteNuX64yYMsA9ZYdqL9Q0ZJsw;

    move-object v0, v13

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-wide/from16 v8, v16

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v18, v13

    move-object/from16 v13, p10

    move-object/from16 v19, v14

    .end local v14    # "cancellationRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/ICancellationSignal;>;"
    .local v19, "cancellationRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/ICancellationSignal;>;"
    move/from16 v14, p11

    move-object/from16 v15, v19

    invoke-direct/range {v0 .. v15}, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$KCteNuX64yYMsA9ZYdqL9Q0ZJsw;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILjava/util/concurrent/atomic/AtomicReference;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->postAsync(Lcom/android/internal/infra/ServiceConnector$Job;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    iget v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mRequestTimeoutMs:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 205
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/infra/AndroidFuture;->orTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v1

    new-instance v2, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, v19

    .end local v19    # "cancellationRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/ICancellationSignal;>;"
    .local v5, "cancellationRef":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Landroid/os/ICancellationSignal;>;"
    invoke-direct {v2, v0, v5, v4, v3}, Lcom/android/server/autofill/-$$Lambda$RemoteAugmentedAutofillService$zt04rV6kTquQwdDYqT9tjLbRn14;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;I)V

    .line 206
    invoke-virtual {v1, v2}, Lcom/android/internal/infra/AndroidFuture;->whenComplete(Ljava/util/function/BiConsumer;)Lcom/android/internal/infra/AndroidFuture;

    .line 225
    return-void
.end method

.method protected bridge synthetic onServiceConnectionStatusChanged(Landroid/os/IInterface;Z)V
    .locals 0

    .line 67
    check-cast p1, Landroid/service/autofill/augmented/IAugmentedAutofillService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->onServiceConnectionStatusChanged(Landroid/service/autofill/augmented/IAugmentedAutofillService;Z)V

    return-void
.end method

.method protected onServiceConnectionStatusChanged(Landroid/service/autofill/augmented/IAugmentedAutofillService;Z)V
    .locals 4
    .param p1, "service"    # Landroid/service/autofill/augmented/IAugmentedAutofillService;
    .param p2, "connected"    # Z

    .line 127
    if-eqz p2, :cond_0

    .line 128
    :try_start_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    invoke-interface {p1, v0, v1}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onConnected(ZZ)V

    goto :goto_0

    .line 130
    :cond_0
    invoke-interface {p1}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :goto_0
    goto :goto_1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception calling onServiceConnectionStatusChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteAugmentedAutofillService["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->mComponentName:Landroid/content/ComponentName;

    .line 326
    invoke-static {v1}, Landroid/content/ComponentName;->flattenToShortString(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    return-object v0
.end method
