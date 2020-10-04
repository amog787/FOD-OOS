.class Lcom/android/server/audio/AudioService$SoundPoolListenerThread;
.super Ljava/lang/Thread;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoundPoolListenerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .line 4356
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    .line 4357
    const-string v0, "SoundPoolListenerThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4358
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 4363
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 4364
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$2402(Lcom/android/server/audio/AudioService;Landroid/os/Looper;)Landroid/os/Looper;

    .line 4366
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 4367
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4368
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    new-instance v2, Lcom/android/server/audio/AudioService$SoundPoolCallback;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioService$SoundPoolCallback;-><init>(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$1;)V

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioService;->access$2702(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$SoundPoolCallback;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    .line 4369
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2600(Lcom/android/server/audio/AudioService;)Landroid/media/SoundPool;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v2}, Lcom/android/server/audio/AudioService;->access$2700(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$SoundPoolCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 4371
    :cond_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$SoundPoolListenerThread;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v1}, Lcom/android/server/audio/AudioService;->access$2500(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 4372
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4373
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 4374
    return-void

    .line 4372
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
