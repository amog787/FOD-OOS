.class Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;
.super Ljava/lang/Thread;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrokerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioDeviceBroker;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioDeviceBroker;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    .line 901
    const-string p1, "AudioDeviceBroker"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 902
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 907
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 909
    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    monitor-enter v0

    .line 910
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    new-instance v2, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    iget-object v3, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;-><init>(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$1;)V

    invoke-static {v1, v2}, Lcom/android/server/audio/AudioDeviceBroker;->access$002(Lcom/android/server/audio/AudioDeviceBroker;Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;)Lcom/android/server/audio/AudioDeviceBroker$BrokerHandler;

    .line 913
    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$BrokerThread;->this$0:Lcom/android/server/audio/AudioDeviceBroker;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 914
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 917
    return-void

    .line 914
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
