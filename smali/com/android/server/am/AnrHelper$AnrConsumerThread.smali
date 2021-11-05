.class Lcom/android/server/am/AnrHelper$AnrConsumerThread;
.super Ljava/lang/Thread;
.source "AnrHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AnrHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnrConsumerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AnrHelper;


# direct methods
.method constructor <init>(Lcom/android/server/am/AnrHelper;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    .line 79
    const-string p1, "AnrConsumer"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private next()Lcom/android/server/am/AnrHelper$AnrRecord;
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->access$000(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 84
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v1}, Lcom/android/server/am/AnrHelper;->access$000(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v1}, Lcom/android/server/am/AnrHelper;->access$000(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AnrHelper$AnrRecord;

    :goto_0
    monitor-exit v0

    return-object v1

    .line 85
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 91
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->next()Lcom/android/server/am/AnrHelper$AnrRecord;

    move-result-object v0

    move-object v1, v0

    .local v1, "r":Lcom/android/server/am/AnrHelper$AnrRecord;
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 95
    .local v3, "startTime":J
    iget-wide v5, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    sub-long v5, v3, v5

    .line 96
    .local v5, "reportLatency":J
    invoke-static {}, Lcom/android/server/am/AnrHelper;->access$100()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    move v0, v2

    .line 97
    .local v0, "onlyDumpSelf":Z
    invoke-virtual {v1, v0}, Lcom/android/server/am/AnrHelper$AnrRecord;->appNotResponding(Z)V

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 99
    .local v7, "endTime":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Completed ANR of "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v9, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " in "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v3

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms, latency "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 101
    if-eqz v0, :cond_1

    const-string/jumbo v9, "ms (expired, only dump ANR app)"

    goto :goto_1

    :cond_1
    const-string/jumbo v9, "ms"

    :goto_1
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v9, "ActivityManager"

    invoke-static {v9, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    .end local v0    # "onlyDumpSelf":Z
    .end local v3    # "startTime":J
    .end local v5    # "reportLatency":J
    .end local v7    # "endTime":J
    goto :goto_0

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->access$200(Lcom/android/server/am/AnrHelper;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 105
    iget-object v0, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v0}, Lcom/android/server/am/AnrHelper;->access$000(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 107
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v2}, Lcom/android/server/am/AnrHelper;->access$000(Lcom/android/server/am/AnrHelper;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 108
    iget-object v2, p0, Lcom/android/server/am/AnrHelper$AnrConsumerThread;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {v2}, Lcom/android/server/am/AnrHelper;->access$300(Lcom/android/server/am/AnrHelper;)V

    .line 110
    :cond_3
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
