.class Lcom/android/server/inputmethod/InputMethodManagerService$2;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;-><init>(Landroid/content/Context;)V
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

    .line 1702
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public executeMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 1705
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$2;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService;->handleMessage(Landroid/os/Message;)Z

    .line 1706
    return-void
.end method
