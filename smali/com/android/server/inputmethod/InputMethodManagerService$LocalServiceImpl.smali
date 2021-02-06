.class final Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;
.super Lcom/android/server/inputmethod/InputMethodManagerInternal;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocalServiceImpl"
.end annotation


# instance fields
.field private final mService:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5299
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    .line 5300
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 5301
    return-void
.end method


# virtual methods
.method public getEnabledInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 5323
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2400(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInputMethodListAsUser(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation

    .line 5318
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2300(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideCurrentInputMethod(I)V
    .locals 3
    .param p1, "reason"    # I

    .line 5312
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5313
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5314
    return-void
.end method

.method public onCreateInlineSuggestionsRequest(ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "requestInfo"    # Lcom/android/internal/view/InlineSuggestionsRequestInfo;
    .param p3, "cb"    # Lcom/android/internal/view/IInlineSuggestionsRequestCallback;

    .line 5329
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2500(Lcom/android/server/inputmethod/InputMethodManagerService;ILcom/android/internal/view/InlineSuggestionsRequestInfo;Lcom/android/internal/view/IInlineSuggestionsRequestCallback;)V

    .line 5330
    return-void
.end method

.method public registerInputMethodListListener(Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/inputmethod/InputMethodManagerInternal$InputMethodListListener;

    .line 5339
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2700(Lcom/android/server/inputmethod/InputMethodManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 5340
    return-void
.end method

.method public removeImeSurface()V
    .locals 3

    .line 5355
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x424

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5356
    return-void
.end method

.method public reportImeControl(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "windowToken"    # Landroid/os/IBinder;

    .line 5350
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    .line 5351
    return-void
.end method

.method public setInteractive(Z)V
    .locals 3
    .param p1, "interactive"    # Z

    .line 5306
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0xbd6

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 5307
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5308
    return-void
.end method

.method public switchToInputMethod(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "imeId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5334
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2600(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public transferTouchFocusToImeWindow(Landroid/os/IBinder;I)Z
    .locals 1
    .param p1, "sourceInputToken"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 5345
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)Z

    move-result v0

    return v0
.end method
