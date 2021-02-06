.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$UKG-0Z8ycMhN0JPNTa9f91gzvuk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$UKG-0Z8ycMhN0JPNTa9f91gzvuk;->f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$UKG-0Z8ycMhN0JPNTa9f91gzvuk;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$UKG-0Z8ycMhN0JPNTa9f91gzvuk;->f$0:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iget v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$InlineSuggestionFactory$UKG-0Z8ycMhN0JPNTa9f91gzvuk;->f$1:I

    check-cast p1, Landroid/service/autofill/Dataset;

    check-cast p2, Ljava/lang/Integer;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/autofill/ui/InlineSuggestionFactory;->lambda$createAutofillInlineSuggestions$3(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;ILandroid/service/autofill/Dataset;Ljava/lang/Integer;)V

    return-void
.end method
