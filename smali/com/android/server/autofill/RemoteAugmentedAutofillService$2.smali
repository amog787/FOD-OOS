.class Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;
.super Ljava/lang/Object;
.source "RemoteAugmentedAutofillService.java"

# interfaces
.implements Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteAugmentedAutofillService;->maybeRequestShowInlineSuggestions(ILandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/List;Landroid/os/Bundle;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field final synthetic val$client:Landroid/view/autofill/IAutoFillManagerClient;

.field final synthetic val$clientState:Landroid/os/Bundle;

.field final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field final synthetic val$inlineSuggestionsCallback:Ljava/util/function/Function;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;ILandroid/os/Bundle;Landroid/view/autofill/IAutoFillManagerClient;Ljava/util/function/Function;Landroid/view/autofill/AutofillId;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 267
    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iput p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    iput-object p3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iput-object p5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    iput-object p6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public autofill(Landroid/service/autofill/Dataset;I)V
    .locals 11
    .param p1, "dataset"    # Landroid/service/autofill/Dataset;
    .param p2, "datasetIndex"    # I

    .line 270
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$000(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    move-result-object v0

    iget v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 272
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    .line 271
    invoke-interface {v0, v2, v3, v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;->logAugmentedAutofillAuthenticationSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 273
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v0

    .line 274
    .local v0, "action":Landroid/content/IntentSender;
    nop

    .line 275
    invoke-static {v1, p2}, Landroid/view/autofill/AutofillManager;->makeAuthenticationId(II)I

    move-result v1

    .line 278
    .local v1, "authenticationId":I
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 279
    .local v2, "fillInIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    const-string v4, "android.view.autofill.extra.CLIENT_STATE"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 282
    :try_start_0
    iget-object v5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    const/4 v10, 0x0

    move v7, v1

    move-object v8, v0

    move-object v9, v2

    invoke-interface/range {v5 .. v10}, Landroid/view/autofill/IAutoFillManagerClient;->authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_0

    .line 284
    :catch_0
    move-exception v3

    .line 285
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error starting auth flow"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    iget-object v5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 287
    invoke-static {v5}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v5

    .line 286
    invoke-interface {v4, v5}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void

    .line 291
    .end local v0    # "action":Landroid/content/IntentSender;
    .end local v1    # "authenticationId":I
    .end local v2    # "fillInIntent":Landroid/content/Intent;
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$000(Lcom/android/server/autofill/RemoteAugmentedAutofillService;)Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;

    move-result-object v0

    iget v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    .line 292
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$clientState:Landroid/os/Bundle;

    .line 291
    invoke-interface {v0, v2, v3, v4}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;->logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V

    .line 294
    :try_start_1
    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldIds()Ljava/util/ArrayList;

    move-result-object v0

    .line 295
    .local v0, "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 296
    .local v2, "size":I
    const/4 v3, 0x0

    if-ne v2, v1, :cond_1

    .line 297
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v4, v5}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 298
    .local v1, "hideHighlight":Z
    :goto_1
    iget-object v3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    iget v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$sessionId:I

    invoke-virtual {p1}, Landroid/service/autofill/Dataset;->getFieldValues()Ljava/util/ArrayList;

    move-result-object v5

    invoke-interface {v3, v4, v0, v5, v1}, Landroid/view/autofill/IAutoFillManagerClient;->autofill(ILjava/util/List;Ljava/util/List;Z)V

    .line 300
    iget-object v3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    iget-object v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$focusedId:Landroid/view/autofill/AutofillId;

    .line 301
    invoke-static {v4}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v4

    .line 300
    invoke-interface {v3, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    nop

    .end local v0    # "fieldIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/autofill/AutofillId;>;"
    .end local v1    # "hideHighlight":Z
    .end local v2    # "size":I
    goto :goto_2

    .line 302
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Encounter exception autofilling the values"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$2;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    invoke-interface {v0, p1, p2}, Landroid/view/autofill/IAutoFillManagerClient;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    goto :goto_0

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteException starting intent sender"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
