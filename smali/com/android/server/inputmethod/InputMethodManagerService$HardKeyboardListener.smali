.class Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HardKeyboardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .locals 0

    .line 1551
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Lcom/android/server/inputmethod/InputMethodManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/inputmethod/InputMethodManagerService;
    .param p2, "x1"    # Lcom/android/server/inputmethod/InputMethodManagerService$1;

    .line 1551
    invoke-direct {p0, p1}, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;-><init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V

    return-void
.end method


# virtual methods
.method public handleHardKeyboardStatusChange(Z)V
    .locals 3
    .param p1, "available"    # Z

    .line 1563
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1564
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1000(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1100(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1565
    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1000(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1566
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1100(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/view/View;

    move-result-object v1

    const v2, 0x10202e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1568
    if-eqz p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 1567
    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1570
    :cond_1
    monitor-exit v0

    .line 1571
    return-void

    .line 1570
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHardKeyboardStatusChange(Z)V
    .locals 4
    .param p1, "available"    # Z

    .line 1555
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$HardKeyboardListener;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mHandler:Landroid/os/Handler;

    .line 1556
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1555
    const/16 v3, 0xfa0

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1557
    return-void
.end method
