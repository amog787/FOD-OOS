.class public final synthetic Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/inputmethod/-$$Lambda$InputMethodManagerService$-9-NV9-J24Jr9m-wcbQnLu0hhjU;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    check-cast p1, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->lambda$handleShellCommandResetInputMethod$2$InputMethodManagerService(Landroid/view/inputmethod/InputMethodInfo;)V

    return-void
.end method
