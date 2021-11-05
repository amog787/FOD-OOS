.class Lcom/android/server/AnyMotionDetector$2;
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

    .line 321
    iput-object p1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v0}, Lcom/android/server/AnyMotionDetector;->access$000(Lcom/android/server/AnyMotionDetector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$800(Lcom/android/server/AnyMotionDetector;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/AnyMotionDetector;->access$802(Lcom/android/server/AnyMotionDetector;Z)Z

    .line 327
    iget-object v1, p0, Lcom/android/server/AnyMotionDetector$2;->this$0:Lcom/android/server/AnyMotionDetector;

    invoke-static {v1}, Lcom/android/server/AnyMotionDetector;->access$900(Lcom/android/server/AnyMotionDetector;)V

    .line 329
    :cond_0
    monitor-exit v0

    .line 330
    return-void

    .line 329
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
