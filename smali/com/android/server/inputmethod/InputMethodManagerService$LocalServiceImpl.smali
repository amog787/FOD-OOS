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

    .line 4725
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;-><init>()V

    .line 4726
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4727
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

    .line 4749
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2100(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;

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

    .line 4744
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2000(Lcom/android/server/inputmethod/InputMethodManagerService;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hideCurrentInputMethod()V
    .locals 2

    .line 4738
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x40b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4739
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 4740
    return-void
.end method

.method public setInteractive(Z)V
    .locals 3
    .param p1, "interactive"    # Z

    .line 4732
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/16 v2, 0xbd6

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 4733
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 4734
    return-void
.end method

.method public updateClientKeyguard()V
    .locals 1

    .line 4756
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$LocalServiceImpl;->mService:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2200(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    .line 4757
    return-void
.end method
