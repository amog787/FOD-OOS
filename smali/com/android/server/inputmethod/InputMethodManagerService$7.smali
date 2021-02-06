.class Lcom/android/server/inputmethod/InputMethodManagerService$7;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$adapter:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4977
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->val$adapter:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 4980
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 4981
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2100(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2100(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    array-length v1, v1

    if-le v1, p2, :cond_4

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2200(Lcom/android/server/inputmethod/InputMethodManagerService;)[I

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 4982
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2200(Lcom/android/server/inputmethod/InputMethodManagerService;)[I

    move-result-object v1

    array-length v1, v1

    if-gt v1, p2, :cond_0

    goto :goto_0

    .line 4985
    :cond_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2100(Lcom/android/server/inputmethod/InputMethodManagerService;)[Landroid/view/inputmethod/InputMethodInfo;

    move-result-object v1

    aget-object v1, v1, p2

    .line 4986
    .local v1, "im":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$2200(Lcom/android/server/inputmethod/InputMethodManagerService;)[I

    move-result-object v2

    aget v2, v2, p2

    .line 4987
    .local v2, "subtypeId":I
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->val$adapter:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    iput p2, v3, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->mCheckedItem:I

    .line 4988
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->val$adapter:Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService$ImeSubtypeListAdapter;->notifyDataSetChanged()V

    .line 4989
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->hideInputMethodMenu()V

    .line 4990
    if-eqz v1, :cond_3

    .line 4991
    if-ltz v2, :cond_1

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getSubtypeCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 4992
    :cond_1
    const/4 v2, -0x1

    .line 4994
    :cond_2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$7;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/inputmethod/InputMethodManagerService;->setInputMethodLocked(Ljava/lang/String;I)V

    .line 4996
    .end local v1    # "im":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2    # "subtypeId":I
    :cond_3
    monitor-exit v0

    .line 4997
    return-void

    .line 4983
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    .line 4996
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
