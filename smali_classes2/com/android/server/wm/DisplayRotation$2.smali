.class Lcom/android/server/wm/DisplayRotation$2;
.super Landroid/view/IDisplayWindowRotationCallback$Stub;
.source "DisplayRotation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayRotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayRotation;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayRotation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/DisplayRotation;

    .line 221
    iput-object p1, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-direct {p0}, Landroid/view/IDisplayWindowRotationCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$continueRotateDisplay$0(Ljava/lang/Object;ILandroid/window/WindowContainerTransaction;)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I
    .param p2, "x$1"    # Landroid/window/WindowContainerTransaction;

    .line 227
    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/DisplayRotation;->access$200(Lcom/android/server/wm/DisplayRotation;ILandroid/window/WindowContainerTransaction;)V

    return-void
.end method


# virtual methods
.method public continueRotateDisplay(ILandroid/window/WindowContainerTransaction;)V
    .locals 5
    .param p1, "targetRotation"    # I
    .param p2, "t"    # Landroid/window/WindowContainerTransaction;

    .line 225
    iget-object v0, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v0}, Lcom/android/server/wm/DisplayRotation;->access$300(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    invoke-static {v1}, Lcom/android/server/wm/DisplayRotation;->access$300(Lcom/android/server/wm/DisplayRotation;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    sget-object v2, Lcom/android/server/wm/-$$Lambda$DisplayRotation$2$37vRmD77aVmzN2ixs0KjlN8wUX4;->INSTANCE:Lcom/android/server/wm/-$$Lambda$DisplayRotation$2$37vRmD77aVmzN2ixs0KjlN8wUX4;

    iget-object v3, p0, Lcom/android/server/wm/DisplayRotation$2;->this$0:Lcom/android/server/wm/DisplayRotation;

    .line 228
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 226
    invoke-static {v2, v3, v4, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
