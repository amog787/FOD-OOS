.class final Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClientDeathRecipient"
.end annotation


# instance fields
.field private final mClient:Lcom/android/internal/view/IInputMethodClient;

.field private final mImms:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/internal/view/IInputMethodClient;)V
    .locals 0
    .param p1, "imms"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "client"    # Lcom/android/internal/view/IInputMethodClient;

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 423
    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mClient:Lcom/android/internal/view/IInputMethodClient;

    .line 424
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mImms:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$ClientDeathRecipient;->mClient:Lcom/android/internal/view/IInputMethodClient;

    invoke-virtual {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->removeClient(Lcom/android/internal/view/IInputMethodClient;)V

    .line 429
    return-void
.end method
