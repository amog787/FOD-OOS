.class Lcom/android/server/wm/LockTaskController$1;
.super Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;
.source "LockTaskController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/LockTaskController;->setKeyguardState(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/LockTaskController;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/LockTaskController;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/LockTaskController;

    .line 790
    iput-object p1, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iput p2, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    invoke-direct {p0}, Lcom/android/internal/policy/IKeyguardDismissCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onDismissSucceeded$0$LockTaskController$1(I)V
    .locals 3
    .param p1, "userId"    # I

    .line 800
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    invoke-static {v0}, Lcom/android/server/wm/LockTaskController;->access$200(Lcom/android/server/wm/LockTaskController;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 801
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    iget-object v0, v0, Lcom/android/server/wm/LockTaskController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    invoke-static {v1}, Lcom/android/server/wm/LockTaskController;->access$300(Lcom/android/server/wm/LockTaskController;)Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "Lock-to-App"

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/wm/WindowManagerService;->disableKeyguard(Landroid/os/IBinder;Ljava/lang/String;I)V

    .line 803
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/server/wm/LockTaskController;->access$202(Lcom/android/server/wm/LockTaskController;I)I

    .line 805
    :cond_0
    return-void
.end method

.method public onDismissCancelled()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 810
    const-string v0, "ActivityTaskManager"

    const-string v1, "setKeyguardState: dismiss cancelled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void
.end method

.method public onDismissError()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 793
    const-string v0, "ActivityTaskManager"

    const-string v1, "setKeyguardState: failed to dismiss keyguard"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void
.end method

.method public onDismissSucceeded()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 798
    iget-object v0, p0, Lcom/android/server/wm/LockTaskController$1;->this$0:Lcom/android/server/wm/LockTaskController;

    invoke-static {v0}, Lcom/android/server/wm/LockTaskController;->access$100(Lcom/android/server/wm/LockTaskController;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/LockTaskController$1;->val$userId:I

    new-instance v2, Lcom/android/server/wm/-$$Lambda$LockTaskController$1$WwLdnVMTh3BcztLd26dCnk4GjpA;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wm/-$$Lambda$LockTaskController$1$WwLdnVMTh3BcztLd26dCnk4GjpA;-><init>(Lcom/android/server/wm/LockTaskController$1;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 806
    return-void
.end method
