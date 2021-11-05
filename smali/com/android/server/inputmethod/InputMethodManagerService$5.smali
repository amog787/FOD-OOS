.class Lcom/android/server/inputmethod/InputMethodManagerService$5;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;->showInputMethodMenu(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4954
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 4957
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$5;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenu()V

    .line 4958
    return-void
.end method
