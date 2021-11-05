.class Lcom/android/server/soundtrigger/SoundTriggerHelper$1;
.super Landroid/os/Handler;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;
    .param p2, "arg0"    # Landroid/os/Looper;

    .line 163
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 166
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown message in handler:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundTriggerHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$1;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    const/4 v2, 0x2

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$100(Lcom/android/server/soundtrigger/SoundTriggerHelper;Z)V

    .line 171
    monitor-exit v0

    .line 172
    nop

    .line 177
    :goto_1
    return-void

    .line 171
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
