.class final Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
.super Ljava/lang/Object;
.source "AutofillInlineSuggestionsRequestSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutofillId:Landroid/view/autofill/AutofillId;

.field private final mComponentName:Landroid/content/ComponentName;

.field private mDestroyed:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

.field private mImeInputStarted:Z

.field private mImeInputViewStarted:Z

.field private mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

.field private mImeRequestConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mImeRequestReceived:Z

.field private mImeSessionInvalidated:Z

.field private mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

.field private final mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mPreviousHasNonPinSuggestionShow:Z

.field private mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

.field private mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

.field private final mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

.field private final mUiExtras:Landroid/os/Bundle;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerInternal;ILandroid/content/ComponentName;Landroid/os/Handler;Ljava/lang/Object;Landroid/view/autofill/AutofillId;Ljava/util/function/Consumer;Landroid/os/Bundle;Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;)V
    .locals 1
    .param p1, "inputMethodManagerInternal"    # Lcom/android/server/inputmethod/InputMethodManagerInternal;
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;
    .param p4, "handler"    # Landroid/os/Handler;
    .param p5, "lock"    # Ljava/lang/Object;
    .param p6, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p8, "uiExtras"    # Landroid/os/Bundle;
    .param p9, "callback"    # Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/inputmethod/InputMethodManagerInternal;",
            "I",
            "Landroid/content/ComponentName;",
            "Landroid/os/Handler;",
            "Ljava/lang/Object;",
            "Landroid/view/autofill/AutofillId;",
            "Ljava/util/function/Consumer<",
            "Landroid/view/inputmethod/InlineSuggestionsRequest;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;",
            ")V"
        }
    .end annotation

    .line 114
    .local p7, "requestConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/view/inputmethod/InlineSuggestionsRequest;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 115
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 116
    iput p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUserId:I

    .line 117
    iput-object p3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mComponentName:Landroid/content/ComponentName;

    .line 118
    iput-object p4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    .line 119
    iput-object p5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    .line 120
    iput-object p8, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiExtras:Landroid/os/Bundle;

    .line 121
    iput-object p9, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    .line 123
    iput-object p6, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 124
    iput-object p7, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    .line 125
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 55
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;

    .line 55
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeSessionInvalidated()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(ZZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/autofill/AutofillId;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    .param p1, "x1"    # Landroid/view/autofill/AutofillId;
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;
    .param p1, "x1"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p2, "x2"    # Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    return-void
.end method

.method private handleOnReceiveImeRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .locals 4
    .param p1, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p2, "callback"    # Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    .line 292
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 293
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 296
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    .line 297
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 299
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 300
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    .line 301
    iput-object p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    .line 302
    iget-object v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0, v3, v1, v2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V

    .line 304
    :cond_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    if-eqz v1, :cond_2

    .line 306
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-interface {v1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 307
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestConsumer:Ljava/util/function/Consumer;

    .line 309
    :cond_2
    monitor-exit v0

    .line 310
    return-void

    .line 294
    :cond_3
    :goto_0
    monitor-exit v0

    return-void

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOnReceiveImeSessionInvalidated()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 361
    monitor-exit v0

    return-void

    .line 363
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 364
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOnReceiveImeStatusUpdated(Landroid/view/autofill/AutofillId;ZZ)V
    .locals 2
    .param p1, "imeFieldId"    # Landroid/view/autofill/AutofillId;
    .param p2, "imeInputStarted"    # Z
    .param p3, "imeInputViewStarted"    # Z

    .line 342
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 344
    monitor-exit v0

    return-void

    .line 346
    :cond_0
    if-eqz p1, :cond_1

    .line 347
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    .line 349
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->handleOnReceiveImeStatusUpdated(ZZ)V

    .line 350
    monitor-exit v0

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleOnReceiveImeStatusUpdated(ZZ)V
    .locals 5
    .param p1, "imeInputStarted"    # Z
    .param p2, "imeInputViewStarted"    # Z

    .line 319
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 320
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 321
    monitor-exit v0

    return-void

    .line 323
    :cond_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    if-eqz v1, :cond_4

    .line 324
    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, p1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 325
    .local v1, "imeInputStartedChanged":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-eq v4, p2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 326
    .local v2, "imeInputViewStartedChanged":Z
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputStarted:Z

    .line 327
    iput-boolean p2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    .line 328
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 329
    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    .line 332
    .end local v1    # "imeInputStartedChanged":Z
    .end local v2    # "imeInputViewStartedChanged":Z
    :cond_4
    monitor-exit v0

    .line 333
    return-void

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z
    .locals 2
    .param p0, "autofillId"    # Landroid/view/autofill/AutofillId;
    .param p1, "imeClientFieldId"    # Landroid/view/autofill/AutofillId;

    .line 477
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 478
    invoke-virtual {p0}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/autofill/AutofillId;->getViewId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 477
    :goto_0
    return v0
.end method

.method private maybeNotifyFillUiEventLocked(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InlineSuggestion;",
            ">;)V"
        }
    .end annotation

    .line 255
    .local p1, "suggestions":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InlineSuggestion;>;"
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    const/4 v0, 0x0

    .line 259
    .local v0, "hasSuggestionToShow":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 260
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InlineSuggestion;

    .line 263
    .local v2, "suggestion":Landroid/view/inputmethod/InlineSuggestion;
    invoke-virtual {v2}, Landroid/view/inputmethod/InlineSuggestion;->getInfo()Landroid/view/inputmethod/InlineSuggestionInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/inputmethod/InlineSuggestionInfo;->isPinned()Z

    move-result v3

    if-nez v3, :cond_1

    .line 264
    const/4 v0, 0x1

    .line 265
    goto :goto_1

    .line 259
    .end local v2    # "suggestion":Landroid/view/inputmethod/InlineSuggestion;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    .end local v1    # "i":I
    :cond_2
    :goto_1
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_3

    .line 269
    sget-object v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maybeNotifyFillUiEventLoked(): hasSuggestionToShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviousHasNonPinSuggestionShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    if-nez v1, :cond_4

    .line 276
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;->notifyInlineUiShown(Landroid/view/autofill/AutofillId;)V

    goto :goto_2

    .line 277
    :cond_4
    if-nez v0, :cond_5

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    if-eqz v1, :cond_5

    .line 279
    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiCallback:Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {v1, v2}, Lcom/android/server/autofill/ui/InlineFillUi$InlineUiEventCallback;->notifyInlineUiHidden(Landroid/view/autofill/AutofillId;)V

    .line 282
    :cond_5
    :goto_2
    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousHasNonPinSuggestionShow:Z

    .line 283
    return-void
.end method

.method private maybeUpdateResponseToImeLocked()V
    .locals 4

    .line 218
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "maybeUpdateResponseToImeLocked called"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    if-nez v0, :cond_1

    goto :goto_0

    .line 222
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeInputViewStarted:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeCurrentFieldId:Landroid/view/autofill/AutofillId;

    invoke-static {v0, v1}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->match(Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillId;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    invoke-virtual {v0}, Lcom/android/server/autofill/ui/InlineFillUi;->getInlineSuggestionsResponse()Landroid/view/inputmethod/InlineSuggestionsResponse;

    move-result-object v0

    .line 226
    .local v0, "response":Landroid/view/inputmethod/InlineSuggestionsResponse;
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 227
    .local v1, "isEmptyResponse":Z
    if-eqz v1, :cond_2

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 229
    return-void

    .line 231
    :cond_2
    invoke-virtual {v0}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeNotifyFillUiEventLocked(Ljava/util/List;)V

    .line 232
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->updateResponseToImeUncheckLocked(Landroid/view/inputmethod/InlineSuggestionsResponse;)V

    .line 233
    xor-int/lit8 v2, v1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mPreviousResponseIsNotEmpty:Ljava/lang/Boolean;

    .line 235
    .end local v0    # "response":Landroid/view/inputmethod/InlineSuggestionsResponse;
    .end local v1    # "isEmptyResponse":Z
    :cond_3
    return-void

    .line 220
    :cond_4
    :goto_0
    return-void
.end method

.method private updateResponseToImeUncheckLocked(Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    .locals 3
    .param p1, "response"    # Landroid/view/inputmethod/InlineSuggestionsResponse;

    .line 242
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send inline response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsResponse;->getInlineSuggestions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, p1}, Lcom/android/internal/view/IInlineSuggestionsResponseCallback;->onInlineSuggestionsResponse(Landroid/view/autofill/AutofillId;Landroid/view/inputmethod/InlineSuggestionsResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    const-string v2, "RemoteException sending InlineSuggestionsResponse to IME"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method


# virtual methods
.method destroySessionLocked()V
    .locals 3

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    .line 180
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequestReceived:Z

    if-nez v0, :cond_0

    .line 181
    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Never received an InlineSuggestionsRequest from the IME for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    return-void
.end method

.method getAutofillIdLocked()Landroid/view/autofill/AutofillId;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-object v0
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

    .line 141
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method onCreateInlineSuggestionsRequestLocked()V
    .locals 6

    .line 193
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    .line 197
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreateInlineSuggestionsRequestLocked called: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iget v1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUserId:I

    new-instance v2, Lcom/android/internal/view/InlineSuggestionsRequestInfo;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mComponentName:Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mUiExtras:Landroid/os/Bundle;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/view/InlineSuggestionsRequestInfo;-><init>(Landroid/content/ComponentName;Landroid/view/autofill/AutofillId;Landroid/os/Bundle;)V

    new-instance v3, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$InlineSuggestionsRequestCallbackImpl;-><init>(Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    .line 201
    return-void
.end method

.method onInlineSuggestionsResponseLocked(Lcom/android/server/autofill/ui/InlineFillUi;)Z
    .locals 4
    .param p1, "inlineFillUi"    # Lcom/android/server/autofill/ui/InlineFillUi;

    .line 155
    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mDestroyed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 156
    return v1

    .line 158
    :cond_0
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_1

    .line 159
    sget-object v0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInlineSuggestionsResponseLocked called for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeRequest:Landroid/view/inputmethod/InlineSuggestionsRequest;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mResponseCallback:Lcom/android/internal/view/IInlineSuggestionsResponseCallback;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mImeSessionInvalidated:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/autofill/ui/InlineFillUi;->getAutofillId()Landroid/view/autofill/AutofillId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mAutofillId:Landroid/view/autofill/AutofillId;

    .line 167
    iput-object p1, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 168
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->maybeUpdateResponseToImeLocked()V

    .line 169
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_3
    :goto_0
    return v1
.end method

.method resetInlineFillUiLocked()V
    .locals 1

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/autofill/AutofillInlineSuggestionsRequestSession;->mInlineFillUi:Lcom/android/server/autofill/ui/InlineFillUi;

    .line 211
    return-void
.end method
