.class Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;
.super Ljava/lang/Thread;
.source "SoundEffectsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SoundEffectsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SfxWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .locals 0

    .line 421
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    .line 422
    const-string p1, "AS.SfxWorker"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 423
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 427
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 428
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;-><init>(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$1;)V

    invoke-static {v1, v2}, Lcom/android/server/audio/SoundEffectsHelper;->access$202(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;)Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 430
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 431
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 433
    return-void

    .line 431
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
