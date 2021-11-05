.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$VetWaJYpU_VQ7WcN5OSGtE-rqwo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$VetWaJYpU_VQ7WcN5OSGtE-rqwo;->f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$VetWaJYpU_VQ7WcN5OSGtE-rqwo;->f$0:Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;

    check-cast p1, Landroid/content/IntentSender;

    invoke-static {v0, p1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createAugmentedAutofillInlineSuggestions$5(Lcom/android/server/autofill/ui/InlineFillUi$InlineSuggestionUiCallback;Landroid/content/IntentSender;)V

    return-void
.end method
