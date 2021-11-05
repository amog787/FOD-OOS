.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$oUc9QFXUEmqMQpqq-DeeqU32VWU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$oUc9QFXUEmqMQpqq-DeeqU32VWU;->f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$oUc9QFXUEmqMQpqq-DeeqU32VWU;->f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    check-cast p1, Landroid/content/IntentSender;

    invoke-static {v0, p1}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createAutofillInlineSuggestions$2(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/content/IntentSender;)V

    return-void
.end method
