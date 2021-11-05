.class Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "SoundTriggerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/soundtrigger/SoundTriggerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/soundtrigger/SoundTriggerHelper;

    .line 1064
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .line 1069
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$200(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v0}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$000(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1071
    :try_start_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$200(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1072
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v1}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$200(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1073
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/soundtrigger/SoundTriggerHelper$MyCallStateListener;->this$0:Lcom/android/server/soundtrigger/SoundTriggerHelper;

    invoke-static {v2}, Lcom/android/server/soundtrigger/SoundTriggerHelper;->access$200(Lcom/android/server/soundtrigger/SoundTriggerHelper;)Landroid/os/Handler;

    move-result-object v2

    .line 1074
    const/4 v3, 0x2

    if-ne v3, p1, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    .line 1075
    :cond_0
    const-wide/16 v3, 0x3e8

    .line 1073
    :goto_0
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1076
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1078
    :cond_1
    :goto_1
    return-void
.end method
