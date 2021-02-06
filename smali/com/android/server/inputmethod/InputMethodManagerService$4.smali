.class Lcom/android/server/inputmethod/InputMethodManagerService$4;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;->hideSoftInputForLongshot(ILandroid/os/ResultReceiver;)Z
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

    .line 3284
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3287
    const-string v0, "InputMethodManagerService"

    const-string/jumbo v1, "reset Longshot Blocking"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$4;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2002(Lcom/android/server/inputmethod/InputMethodManagerService;Z)Z

    .line 3289
    return-void
.end method
