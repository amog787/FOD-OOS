.class final Lcom/android/server/autofill/AutofillInlineSessionController;
.super Ljava/lang/Object;
.source "AutofillInlineSessionController.java"


# instance fields
.field private final mComponentName:Landroid/content/ComponentName;

.field private final mHandler:Landroid/os/Handler;

.field private mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

.field private final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

.field private final mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

.field private final mUserId:I


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V
    .locals 0
    .param p1, "inputMethodManagerInternal"    # Lcom/android/server/inputmethod/InputMethodManagerInternal;
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "lock"    # Ljava/lang/Object;
    .param p6, "callback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 69
    iput p2, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUserId:I

    .line 70
    iput-object p3, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mComponentName:Landroid/content/ComponentName;

    .line 71
    iput-object p4, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mHandler:Landroid/os/Handler;

    .line 72
    iput-object p5, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mLock:Ljava/lang/Object;

    .line 73
    iput-object p6, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    .line 74
    return-void
.end method

.method private requestImeToShowInlineSuggestionsLocked()Z
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result v0

    return v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method destroyLocked(Landroid/view/autofill/AutofillId;)V
    .locals 3
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 108
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 109
    invoke-static {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    .line 110
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->destroySessionLocked()V

    .line 111
    iput-object v1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 113
    :cond_0
    iput-object v1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 114
    return-void
.end method

.method disableFilterMatching(Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 150
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineFillUi;->disableFilterMatching()V

    .line 153
    :cond_0
    return-void
.end method

.method filterInlineFillUiLocked(Landroid/view/autofill/AutofillId;Ljava/lang/String;)Z
    .locals 1
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p2, "filterText"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/autofill/AutofillId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/ui/InlineFillUi;->setFilterText(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    move-result v0

    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getInlineSuggestionsRequestLocked()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->getInlineSuggestionsRequestLocked()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 128
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method hideInlineSuggestionsUiLocked(Landroid/view/autofill/AutofillId;)Z
    .locals 2
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;

    .line 138
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    .line 139
    invoke-static {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->emptyUi(Landroid/view/autofill/AutofillId;)Lcom/android/server/autofill/ui/InlineFillUi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z

    move-result v0

    return v0

    .line 141
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method onCreateInlineSuggestionsRequestLocked(Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p3, "uiExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 87
    .local p2, "requestConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->destroySessionLocked()V

    .line 91
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 94
    new-instance v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget v3, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUserId:I

    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mLock:Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    move-object v1, v0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;-><init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 97
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->onCreateInlineSuggestionsRequestLocked()V

    .line 98
    return-void
.end method

.method resetInlineFillUiLocked()V
    .locals 1

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 166
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mSession:Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->resetInlineFillUiLocked()V

    .line 169
    :cond_0
    return-void
.end method

.method setInlineFillUiLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z
    .locals 1
    .param p1, "inlineFillUi"    # Lcom/android/server/autofill/ui/InlineFillUi;

    .line 193
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSessionController;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 194
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSessionController;->requestImeToShowInlineSuggestionsLocked()Z

    move-result v0

    return v0
.end method
