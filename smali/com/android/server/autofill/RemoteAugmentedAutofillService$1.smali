.class Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "RemoteAugmentedAutofillService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/RemoteAugmentedAutofillService;->lambda$onRequestAutofillLocked$0(Landroid/view/autofill/IAutoFillManagerClient;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILjava/util/concurrent/atomic/AtomicReference;Landroid/service/autofill/augmented/IAugmentedAutofillService;)Ljava/util/concurrent/CompletableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field final synthetic val$activityComponent:Landroid/content/ComponentName;

.field final synthetic val$cancellationRef:Ljava/util/concurrent/atomic/AtomicReference;

.field final synthetic val$client:Landroid/view/autofill/IAutoFillManagerClient;

.field final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field final synthetic val$focusedValue:Landroid/view/autofill/AutofillValue;

.field final synthetic val$inlineSuggestionsCallback:Ljava/util/function/Function;

.field final synthetic val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field final synthetic val$onErrorCallback:Ljava/lang/Runnable;

.field final synthetic val$remoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field final synthetic val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

.field final synthetic val$requestTime:J

.field final synthetic val$service:Landroid/service/autofill/augmented/IAugmentedAutofillService;

.field final synthetic val$sessionId:I

.field final synthetic val$taskId:I

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Landroid/service/autofill/augmented/IAugmentedAutofillService;IILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Ljava/util/function/Function;Landroid/view/autofill/IAutoFillManagerClient;Ljava/lang/Runnable;Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;ILcom/android/internal/infra/AndroidFuture;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    .line 160
    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->this$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$service:Landroid/service/autofill/augmented/IAugmentedAutofillService;

    move v2, p3

    iput v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$sessionId:I

    move v2, p4

    iput v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$taskId:I

    move-object v2, p5

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityComponent:Landroid/content/ComponentName;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedValue:Landroid/view/autofill/AutofillValue;

    move-wide v2, p8

    iput-wide v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestTime:J

    move-object v2, p10

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsCallback:Ljava/util/function/Function;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$client:Landroid/view/autofill/IAutoFillManagerClient;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$onErrorCallback:Ljava/lang/Runnable;

    move-object/from16 v2, p14

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$remoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    move/from16 v2, p15

    iput v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$userId:I

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestAutofill:Lcom/android/internal/infra/AndroidFuture;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$cancellationRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 12
    .param p1, "resultCode"    # I
    .param p2, "resultData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 163
    nop

    .line 164
    const-string v0, "android.view.autofill.extra.AUGMENTED_AUTOFILL_CLIENT"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 165
    .local v0, "realClient":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$service:Landroid/service/autofill/augmented/IAugmentedAutofillService;

    iget v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$sessionId:I

    iget v4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$taskId:I

    iget-object v5, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$activityComponent:Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedId:Landroid/view/autofill/AutofillId;

    iget-object v7, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$focusedValue:Landroid/view/autofill/AutofillValue;

    iget-wide v8, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$requestTime:J

    iget-object v10, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;->val$inlineSuggestionsRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    new-instance v11, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;

    invoke-direct {v11, p0}, Lcom/android/server/autofill/RemoteAugmentedAutofillService$1$1;-><init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService$1;)V

    move-object v3, v0

    invoke-interface/range {v1 .. v11}, Landroid/service/autofill/augmented/IAugmentedAutofillService;->onFillRequest(ILandroid/os/IBinder;ILandroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;JLandroid/view/inputmethod/InlineSuggestionsRequest;Landroid/service/autofill/augmented/IFillCallback;)V

    .line 202
    return-void
.end method
