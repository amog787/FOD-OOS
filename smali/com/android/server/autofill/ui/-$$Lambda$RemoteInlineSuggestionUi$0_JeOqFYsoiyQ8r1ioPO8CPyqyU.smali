.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$0_JeOqFYsoiyQ8r1ioPO8CPyqyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

.field public final synthetic f$1:Lcom/android/internal/view/inline/IInlineContentCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;Lcom/android/internal/view/inline/IInlineContentCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$0_JeOqFYsoiyQ8r1ioPO8CPyqyU;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$0_JeOqFYsoiyQ8r1ioPO8CPyqyU;->f$1:Lcom/android/internal/view/inline/IInlineContentCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$0_JeOqFYsoiyQ8r1ioPO8CPyqyU;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$0_JeOqFYsoiyQ8r1ioPO8CPyqyU;->f$1:Lcom/android/internal/view/inline/IInlineContentCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->lambda$setInlineContentCallback$0$RemoteInlineSuggestionUi(Lcom/android/internal/view/inline/IInlineContentCallback;)V

    return-void
.end method
