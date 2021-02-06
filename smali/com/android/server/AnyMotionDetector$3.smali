.class Lcom/android/server/AnyMotionDetector$3;
.super Ljava/lang/Object;
.source "AnyMotionDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AnyMotionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AnyMotionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/AnyMotionDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AnyMotionDetector;

    .line 333
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 336
    const/4 v0, -0x1

    .line 337
    .local v0, "status":I
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$000(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 338
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->access$1000(Lcom/android/server/AnyMotionDetector;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 339
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/AnyMotionDetector;->access$1002(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 343
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->access$300(Lcom/android/server/AnyMotionDetector;)I

    move-result v2

    move v0, v2

    .line 344
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 345
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->access$500(Lcom/android/server/AnyMotionDetector;)Landroid/os/Handler;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v4}, Lcom/android/server/AnyMotionDetector;->access$400(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 346
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2, v3}, Lcom/android/server/AnyMotionDetector;->access$602(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 347
    iget-object v2, p0, Lcom/android/server/AnyMotionDetector$3;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v2}, Lcom/android/server/AnyMotionDetector;->access$700(Lcom/android/server/AnyMotionDetector;)Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/AnyMotionDetector$DeviceIdleCallback;->onAnyMotionResult(I)V

    .line 350
    :cond_0
    monitor-exit v1

    .line 351
    return-void

    .line 350
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
