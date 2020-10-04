.class Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;
.super Landroid/os/Handler;
.source "SyncLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncLogger$RotatingFileLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_LOG_ID:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncLogger$RotatingFileLogger;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 295
    iput-object p1, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    .line 296
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 297
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->this$0:Lcom/android/server/content/SyncLogger$RotatingFileLogger;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v1

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/content/SyncLogger$RotatingFileLogger;->logInner(J[Ljava/lang/Object;)V

    .line 312
    :goto_0
    return-void
.end method

.method public log(J[Ljava/lang/Object;)V
    .locals 3
    .param p1, "now"    # J
    .param p3, "message"    # [Ljava/lang/Object;

    .line 300
    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->first(J)I

    move-result v0

    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->second(J)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1, p3}, Lcom/android/server/content/SyncLogger$RotatingFileLogger$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 302
    return-void
.end method
