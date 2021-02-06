.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$mIkFl7AuIYiwe2nVIdtGv_3Vz5Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$mIkFl7AuIYiwe2nVIdtGv_3Vz5Q;->f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$mIkFl7AuIYiwe2nVIdtGv_3Vz5Q;->f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    check-cast p1, Landroid/service/autofill/Dataset;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, p1, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createAugmentedAutofillInlineSuggestions$4(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/service/autofill/Dataset;Ljava/lang/Integer;)V

    return-void
.end method
