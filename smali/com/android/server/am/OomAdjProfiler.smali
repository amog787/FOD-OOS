.class public Lcom/android/server/am/OomAdjProfiler;
.super Ljava/lang/Object;
.source "OomAdjProfiler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    }
.end annotation


# static fields
.field private static final MSG_UPDATE_CPU_TIME:I = 0x2a


# instance fields
.field private mLastScheduledOnBattery:Z

.field private mLastScheduledScreenOff:Z

.field private mLastSystemServerCpuTimeMs:J

.field private mOnBattery:Z

.field private mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

.field final mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/am/OomAdjProfiler$CpuTimes;",
            ">;"
        }
    .end annotation
.end field

.field private mOomAdjStartTimeUs:J

.field private mOomAdjStarted:Z

.field private final mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mScreenOff:Z

.field private mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

.field private mSystemServerCpuTimeUpdateScheduled:Z

.field final mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/am/OomAdjProfiler$CpuTimes;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalOomAdjCalls:I

.field private mTotalOomAdjRunTimeUs:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 54
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 61
    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 63
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    .line 65
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OomAdjProfiler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OomAdjProfiler;

    .line 32
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/OomAdjProfiler;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/OomAdjProfiler;

    .line 32
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    return v0
.end method

.method public static synthetic lambda$oLbVP84ACmxo_1QlnwlSuhi91W4(Lcom/android/server/am/OomAdjProfiler;ZZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjProfiler;->updateSystemServerCpuTime(ZZZ)V

    return-void
.end method

.method private scheduleSystemServerCpuTimeUpdate()V
    .locals 4

    .line 107
    monitor-enter p0

    .line 108
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    if-eqz v0, :cond_0

    .line 109
    monitor-exit p0

    return-void

    .line 111
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledOnBattery:Z

    .line 112
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledScreenOff:Z

    .line 113
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    .line 114
    sget-object v1, Lcom/android/server/am/-$$Lambda$OomAdjProfiler$oLbVP84ACmxo_1QlnwlSuhi91W4;->INSTANCE:Lcom/android/server/am/-$$Lambda$OomAdjProfiler$oLbVP84ACmxo_1QlnwlSuhi91W4;

    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledOnBattery:Z

    .line 116
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledScreenOff:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 114
    invoke-static {v1, p0, v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 117
    .local v0, "scheduledMessage":Landroid/os/Message;
    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Landroid/os/Message;->setWhat(I)Landroid/os/Message;

    .line 119
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 120
    nop

    .end local v0    # "scheduledMessage":Landroid/os/Message;
    monitor-exit p0

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateSystemServerCpuTime(ZZZ)V
    .locals 5
    .param p1, "onBattery"    # Z
    .param p2, "screenOff"    # Z
    .param p3, "onlyIfScheduled"    # Z

    .line 125
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->getCpuTimeForPid(I)J

    move-result-wide v0

    .line 126
    .local v0, "cpuTimeMs":J
    monitor-enter p0

    .line 127
    if-eqz p3, :cond_0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    if-nez v2, :cond_0

    .line 128
    monitor-exit p0

    return-void

    .line 130
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    iget-wide v3, p0, Lcom/android/server/am/OomAdjProfiler;->mLastSystemServerCpuTimeMs:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4, p1, p2}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeMs(JZZ)V

    .line 132
    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastSystemServerCpuTimeMs:J

    .line 133
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    .line 134
    monitor-exit p0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method batteryPowerChanged(Z)V
    .locals 1
    .param p1, "onBattery"    # Z

    .line 74
    monitor-enter p0

    .line 75
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/OomAdjProfiler;->scheduleSystemServerCpuTimeUpdate()V

    .line 76
    iput-boolean p1, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimeUpdateScheduled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x2a

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 155
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledOnBattery:Z

    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mLastScheduledScreenOff:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/am/OomAdjProfiler;->updateSystemServerCpuTime(ZZZ)V

    goto :goto_0

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOnBattery:Z

    iget-boolean v2, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/am/OomAdjProfiler;->updateSystemServerCpuTime(ZZZ)V

    .line 160
    :goto_0
    const-string v0, "System server and oomAdj runtimes (ms) in recent battery sessions (most recent first):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "system_server="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 166
    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "oom_adj="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 171
    .local v0, "systemServerCpuTimes":[Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 172
    .local v1, "oomAdjRunTimes":[Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 173
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    const-string/jumbo v3, "system_server="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 176
    const-string v3, "  "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 177
    const-string/jumbo v3, "oom_adj="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 178
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 172
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 180
    .end local v2    # "i":I
    :cond_2
    iget v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    if-eqz v2, :cond_3

    .line 181
    const-string v2, "System server total oomAdj runtimes (us) since boot:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    const-string v2, "  cpu time spent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 183
    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 184
    const-string v2, "  number of calls="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 185
    iget v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 186
    const-string v2, "  average="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 187
    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    iget v4, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    int-to-long v4, v4

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 189
    .end local v0    # "systemServerCpuTimes":[Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    .end local v1    # "oomAdjRunTimes":[Lcom/android/server/am/OomAdjProfiler$CpuTimes;
    :cond_3
    monitor-exit p0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onWakefulnessChanged(I)V
    .locals 1
    .param p1, "wakefulness"    # I

    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/OomAdjProfiler;->scheduleSystemServerCpuTimeUpdate()V

    .line 83
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mScreenOff:Z

    .line 84
    monitor-exit p0

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method oomAdjEnded()V
    .locals 4

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStarted:Z

    if-nez v0, :cond_0

    .line 97
    monitor-exit p0

    return-void

    .line 99
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStartTimeUs:J

    sub-long/2addr v0, v2

    .line 100
    .local v0, "elapsedUs":J
    iget-object v2, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->addCpuTimeUs(J)V

    .line 101
    iget-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjRunTimeUs:J

    .line 102
    iget v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/OomAdjProfiler;->mTotalOomAdjCalls:I

    .line 103
    .end local v0    # "elapsedUs":J
    monitor-exit p0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method oomAdjStarted()V
    .locals 2

    .line 88
    monitor-enter p0

    .line 89
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMicro()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStartTimeUs:J

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjStarted:Z

    .line 91
    monitor-exit p0

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method reset()V
    .locals 2

    .line 138
    monitor-enter p0

    .line 139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    monitor-exit p0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTimesHist:Lcom/android/internal/util/RingBuffer;

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTimesHist:Lcom/android/internal/util/RingBuffer;

    iget-object v1, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-virtual {v0, v1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mOomAdjRunTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 145
    new-instance v0, Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OomAdjProfiler$CpuTimes;-><init>(Lcom/android/server/am/OomAdjProfiler;Lcom/android/server/am/OomAdjProfiler$1;)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjProfiler;->mSystemServerCpuTime:Lcom/android/server/am/OomAdjProfiler$CpuTimes;

    .line 146
    monitor-exit p0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
