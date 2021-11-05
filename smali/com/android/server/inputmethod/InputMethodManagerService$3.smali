.class Lcom/android/server/inputmethod/InputMethodManagerService$3;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;->updateKeyboardFromSettingsLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field final synthetic val$hardKeySwitch:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Landroid/widget/Switch;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 3157
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$hardKeySwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3160
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->val$hardKeySwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$3;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1900(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 3161
    return-void
.end method
