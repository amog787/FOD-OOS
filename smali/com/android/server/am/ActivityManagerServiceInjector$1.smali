.class Lcom/android/server/am/ActivityManagerServiceInjector$1;
.super Ljava/lang/Object;
.source "ActivityManagerServiceInjector.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceInjector;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerServiceInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 158
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AutoShutdown: onPointerEvent() mPointerEventListenerRegistered = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    .line 167
    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$000(Lcom/android/server/am/ActivityManagerServiceInjector;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 164
    const-string v1, "ActivityManagerServiceInjector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$000(Lcom/android/server/am/ActivityManagerServiceInjector;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$200(Lcom/android/server/am/ActivityManagerServiceInjector;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$100(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/view/WindowManagerPolicyConstants$PointerEventListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V

    .line 171
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$002(Lcom/android/server/am/ActivityManagerServiceInjector;Z)Z

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$300(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$300(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$500(Lcom/android/server/am/ActivityManagerServiceInjector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceInjector$1;->this$0:Lcom/android/server/am/ActivityManagerServiceInjector;

    invoke-static {v1}, Lcom/android/server/am/ActivityManagerServiceInjector;->access$400(Lcom/android/server/am/ActivityManagerServiceInjector;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method
