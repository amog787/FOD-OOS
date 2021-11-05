.class public final synthetic Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$orLUY0za7G6mvNAv2w1Xd2DLLIA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

.field public final synthetic f$1:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;Landroid/content/IntentSender;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$orLUY0za7G6mvNAv2w1Xd2DLLIA;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    iput-object p2, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$orLUY0za7G6mvNAv2w1Xd2DLLIA;->f$1:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$orLUY0za7G6mvNAv2w1Xd2DLLIA;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    iget-object v1, p0, Lcom/android/server/autofill/ui/-$$Lambda$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl$orLUY0za7G6mvNAv2w1Xd2DLLIA;->f$1:Landroid/content/IntentSender;

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;->lambda$onStartIntentSender$5$RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl(Landroid/content/IntentSender;)V

    return-void
.end method
