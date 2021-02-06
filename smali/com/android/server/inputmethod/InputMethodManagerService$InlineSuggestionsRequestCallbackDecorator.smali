.class final Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;
.super Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InlineSuggestionsRequestCallbackDecorator"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

.field private final mImeDisplayId:I

.field private final mImePackageName:Ljava/lang/String;

.field private final mImeToken:Landroid/os/IBinder;

.field private final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/internal/view/IInlineSuggestionsRequestCallback;Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;
    .param p2, "imePackageName"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "imeToken"    # Landroid/os/IBinder;
    .param p5, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2132
    invoke-direct {p0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback$Stub;-><init>()V

    .line 2133
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 2134
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    .line 2135
    iput p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mImeDisplayId:I

    .line 2136
    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mImeToken:Landroid/os/IBinder;

    .line 2137
    iput-object p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 2138
    return-void
.end method


# virtual methods
.method public onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V
    .locals 3
    .param p1, "request"    # Landroid/view/inputmethod/InlineSuggestionsRequest;
    .param p2, "callback"    # Lcom/android/internal/view/IInlineSuggestionsResponseCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2149
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2155
    iget v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mImeDisplayId:I

    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InlineSuggestionsRequest;->setHostDisplayId(I)V

    .line 2156
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mImeToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostInputToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setCurHostInputToken(Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 2157
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsRequest(Landroid/view/inputmethod/InlineSuggestionsRequest;Lcom/android/internal/view/IInlineSuggestionsResponseCallback;)V

    .line 2158
    return-void

    .line 2150
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Host package name in the provide request=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2151
    invoke-virtual {p1}, Landroid/view/inputmethod/InlineSuggestionsRequest;->getHostPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] doesn\'t match the IME package name=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mImePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onInlineSuggestionsSessionInvalidated()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2187
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsSessionInvalidated()V

    .line 2188
    return-void
.end method

.method public onInlineSuggestionsUnsupported()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2142
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInlineSuggestionsUnsupported()V

    .line 2143
    return-void
.end method

.method public onInputMethodFinishInput()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2182
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodFinishInput()V

    .line 2183
    return-void
.end method

.method public onInputMethodFinishInputView()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2177
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodFinishInputView()V

    .line 2178
    return-void
.end method

.method public onInputMethodShowInputRequested(Z)V
    .locals 1
    .param p1, "requestResult"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2167
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodShowInputRequested(Z)V

    .line 2168
    return-void
.end method

.method public onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V
    .locals 1
    .param p1, "imeFieldId"    # Landroid/view/autofill/AutofillId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2162
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0, p1}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodStartInput(Landroid/view/autofill/AutofillId;)V

    .line 2163
    return-void
.end method

.method public onInputMethodStartInputView()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2172
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InlineSuggestionsRequestCallbackDecorator;->mCallback:Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    invoke-interface {v0}, Lcom/android/internal/view/IInlineSuggestionsRequestCallback;->onInputMethodStartInputView()V

    .line 2173
    return-void
.end method
