.class Lcom/android/server/policy/WakeGestureListener$1;
.super Landroid/hardware/TriggerEventListener;
.source "WakeGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WakeGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/WakeGestureListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/WakeGestureListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/WakeGestureListener;

    .line 84
    iput-object p1, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .line 87
    iget-object v0, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-static {v0}, Lcom/android/server/policy/WakeGestureListener;->access$000(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 88
    :try_start_0
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/policy/WakeGestureListener;->access$102(Lcom/android/server/policy/WakeGestureListener;Z)Z

    .line 89
    iget-object v1, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-static {v1}, Lcom/android/server/policy/WakeGestureListener;->access$300(Lcom/android/server/policy/WakeGestureListener;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/WakeGestureListener$1;->this$0:Lcom/android/server/policy/WakeGestureListener;

    invoke-static {v2}, Lcom/android/server/policy/WakeGestureListener;->access$200(Lcom/android/server/policy/WakeGestureListener;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
