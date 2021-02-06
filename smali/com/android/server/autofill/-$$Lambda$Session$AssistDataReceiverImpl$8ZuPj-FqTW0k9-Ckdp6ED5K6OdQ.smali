.class public final synthetic Lcom/android/server/autofill/-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

.field public final synthetic f$1:Lcom/android/server/autofill/ViewState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session$AssistDataReceiverImpl;Lcom/android/server/autofill/ViewState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ;->f$0:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iput-object p2, p0, Lcom/android/server/autofill/-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ;->f$1:Lcom/android/server/autofill/ViewState;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ;->f$0:Lcom/android/server/autofill/Session$AssistDataReceiverImpl;

    iget-object v1, p0, Lcom/android/server/autofill/-$$Lambda$Session$AssistDataReceiverImpl$8ZuPj-FqTW0k9-Ckdp6ED5K6OdQ;->f$1:Lcom/android/server/autofill/ViewState;

    check-cast p1, Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/autofill/Session$AssistDataReceiverImpl;->lambda$newAutofillRequestLocked$0$Session$AssistDataReceiverImpl(Lcom/android/server/autofill/ViewState;Landroid/view/inputmethod/InlineSuggestionsRequest;)V

    return-void
.end method
