.class Lcom/android/server/wm/InputManagerCallback$1;
.super Ljava/lang/Thread;
.source "InputManagerCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/InputManagerCallback;->preDumpIfLockTooSlow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/InputManagerCallback;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$monitor:Ljava/lang/Runnable;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$now:J

.field final synthetic val$shouldDumpSf:[Z


# direct methods
.method constructor <init>(Lcom/android/server/wm/InputManagerCallback;Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;JLjava/lang/String;[Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/InputManagerCallback;

    .line 128
    iput-object p1, p0, Lcom/android/server/wm/InputManagerCallback$1;->this$0:Lcom/android/server/wm/InputManagerCallback;

    iput-object p2, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$monitor:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    iput-wide p4, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$now:J

    iput-object p6, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$name:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$shouldDumpSf:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 131
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$monitor:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 132
    iget-object v0, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$now:J

    sub-long/2addr v0, v2

    .line 134
    .local v0, "elapsed":J
    invoke-static {}, Lcom/android/server/wm/InputManagerCallback;->access$000()J

    move-result-wide v2

    cmp-long v2, v0, v2

    const-string v3, "WindowManager"

    if-lez v2, :cond_0

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pre-dump acquired "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "ms"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    iget-object v2, p0, Lcom/android/server/wm/InputManagerCallback$1;->val$shouldDumpSf:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v3

    .line 141
    :cond_1
    :goto_0
    return-void
.end method
