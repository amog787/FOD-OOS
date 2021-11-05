.class final Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;
.super Ljava/lang/Object;
.source "RemoteInlineSuggestionViewConnector.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mDisplayId:I

.field private final mHostInputToken:Landroid/os/IBinder;

.field private final mInlinePresentation:Landroid/service/autofill/InlinePresentation;

.field private final mOnAutofillCallback:Ljava/lang/Runnable;

.field private final mOnErrorCallback:Ljava/lang/Runnable;

.field private final mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

.field private final mSessionId:I

.field private final mStartIntentSenderFromClientApp:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/IntentSender;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;IILandroid/service/autofill/InlinePresentation;Landroid/os/IBinder;ILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Consumer;)V
    .locals 0
    .param p1, "remoteRenderService"    # Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;
    .param p2, "userId"    # I
    .param p3, "sessionId"    # I
    .param p4, "inlinePresentation"    # Landroid/service/autofill/InlinePresentation;
    .param p5, "hostInputToken"    # Landroid/os/IBinder;
    .param p6, "displayId"    # I
    .param p7, "onAutofillCallback"    # Ljava/lang/Runnable;
    .param p8, "onErrorCallback"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;",
            "II",
            "Landroid/service/autofill/InlinePresentation;",
            "Landroid/os/IBinder;",
            "I",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/IntentSender;",
            ">;)V"
        }
    .end annotation

    .line 67
    .local p9, "startIntentSenderFromClientApp":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/IntentSender;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    .line 69
    iput-object p4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    .line 70
    iput-object p5, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    .line 71
    iput p6, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    .line 72
    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    .line 73
    iput p3, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    .line 75
    iput-object p7, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    .line 76
    iput-object p8, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Ljava/lang/Runnable;

    .line 77
    iput-object p9, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mStartIntentSenderFromClientApp:Ljava/util/function/Consumer;

    .line 78
    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 101
    return-void
.end method

.method public onError()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 108
    return-void
.end method

.method public onStartIntentSender(Landroid/content/IntentSender;)V
    .locals 1
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .line 128
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mStartIntentSenderFromClientApp:Ljava/util/function/Consumer;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 129
    return-void
.end method

.method public onTransferTouchFocusToImeWindow(Landroid/os/IBinder;I)V
    .locals 3
    .param p1, "sourceInputToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 115
    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 116
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    .line 117
    .local v0, "inputMethodManagerInternal":Lcom/android/server/inputmethod/InputMethodManagerInternal;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    sget-object v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    const-string v2, "Cannot transfer touch focus from suggestion to IME"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 122
    :cond_0
    return-void
.end method

.method public renderSuggestion(IILandroid/service/autofill/IInlineSuggestionUiCallback;)Z
    .locals 11
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "callback"    # Landroid/service/autofill/IInlineSuggestionUiCallback;

    .line 87
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    if-eqz v0, :cond_1

    .line 88
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->TAG:Ljava/lang/String;

    const-string v1, "Request to recreate the UI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iget-object v4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iget-object v7, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    iget v8, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    iget v9, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    iget v10, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    move-object v3, p3

    move v5, p1

    move v6, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    .line 91
    const/4 v0, 0x1

    return v0

    .line 93
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
