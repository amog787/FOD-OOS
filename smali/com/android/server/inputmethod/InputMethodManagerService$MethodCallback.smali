.class final Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;
.super Lcom/android/internal/view/IInputSessionCallback$Stub;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodCallback"
.end annotation


# instance fields
.field private final mChannel:Landroid/view/InputChannel;

.field private final mMethod:Lcom/android/internal/view/IInputMethod;

.field private final mParentIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethod;Landroid/view/InputChannel;)V
    .locals 0
    .param p1, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "method"    # Lcom/android/internal/view/IInputMethod;
    .param p3, "channel"    # Landroid/view/InputChannel;

    .line 1540
    invoke-direct {p0}, Lcom/android/internal/view/IInputSessionCallback$Stub;-><init>()V

    .line 1541
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1542
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    .line 1543
    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    .line 1544
    return-void
.end method


# virtual methods
.method public sessionCreated(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 5
    .param p1, "session"    # Lcom/android/internal/view/IInputMethodSession;

    .line 1548
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1550
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mParentIMMS:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mMethod:Lcom/android/internal/view/IInputMethod;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MethodCallback;->mChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, p1, v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->onSessionCreated(Lcom/android/internal/view/IInputMethod;Lcom/android/internal/view/IInputMethodSession;Landroid/view/InputChannel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    nop

    .line 1554
    return-void

    .line 1552
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1553
    throw v2
.end method
