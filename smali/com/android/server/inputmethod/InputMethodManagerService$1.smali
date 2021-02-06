.class Lcom/android/server/inputmethod/InputMethodManagerService$1;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
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

    .line 385
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 387
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-boolean v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 390
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$1;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mVisibleBound:Z

    .line 392
    :cond_0
    monitor-exit v0

    .line 393
    return-void

    .line 392
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 396
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 399
    return-void
.end method
