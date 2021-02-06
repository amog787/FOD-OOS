.class final Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;
.super Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InputMethodPrivilegedOperationsImpl"
.end annotation


# instance fields
.field private final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 6024
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputMethodPrivilegedOperations$Stub;-><init>()V

    .line 6025
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 6026
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    .line 6027
    return-void
.end method


# virtual methods
.method public applyImeVisibility(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "windowToken"    # Landroid/os/IBinder;
    .param p2, "setVisible"    # Z

    .line 6117
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;Z)V

    .line 6118
    return-void
.end method

.method public createInputContentUriToken(Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;
    .locals 2
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 6045
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    return-object v0
.end method

.method public hideMySoftInput(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 6069
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4100(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    .line 6070
    return-void
.end method

.method public notifyUserAction()V
    .locals 2

    .line 6105
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4700(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)V

    .line 6106
    return-void
.end method

.method public reportFullscreenMode(Z)V
    .locals 2
    .param p1, "fullscreen"    # Z

    .line 6051
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)V

    .line 6052
    return-void
.end method

.method public reportPreRendered(Landroid/view/inputmethod/EditorInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/inputmethod/EditorInfo;

    .line 6111
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4800(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;)V

    .line 6112
    return-void
.end method

.method public reportStartInput(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "startInputToken"    # Landroid/os/IBinder;

    .line 6038
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    .line 6039
    return-void
.end method

.method public setImeWindowStatus(II)V
    .locals 2
    .param p1, "vis"    # I
    .param p2, "backDisposition"    # I

    .line 6032
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;II)V

    .line 6033
    return-void
.end method

.method public setInputMethod(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 6057
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$3900(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 6058
    return-void
.end method

.method public setInputMethodAndSubtype(Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "subtype"    # Landroid/view/inputmethod/InputMethodSubtype;

    .line 6063
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4000(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;Landroid/view/inputmethod/InputMethodSubtype;)V

    .line 6064
    return-void
.end method

.method public shouldOfferSwitchingToNextInputMethod()Z
    .locals 2

    .line 6099
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4600(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public showMySoftInput(I)V
    .locals 2
    .param p1, "flags"    # I

    .line 6075
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4200(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;I)V

    .line 6076
    return-void
.end method

.method public switchToNextInputMethod(Z)Z
    .locals 2
    .param p1, "onlyCurrentIme"    # Z

    .line 6093
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4500(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Z)Z

    move-result v0

    return v0
.end method

.method public switchToPreviousInputMethod()Z
    .locals 2

    .line 6087
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4400(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method public updateStatusIcon(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "iconId"    # I

    .line 6081
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$InputMethodPrivilegedOperationsImpl;->mToken:Landroid/os/IBinder;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$4300(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 6082
    return-void
.end method
