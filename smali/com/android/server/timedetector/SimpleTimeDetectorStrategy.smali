.class public final Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;
.super Ljava/lang/Object;
.source "SimpleTimeDetectorStrategy.java"

# interfaces
.implements Lcom/android/server/timedetector/TimeDetectorStrategy;


# static fields
.field private static final SYSTEM_CLOCK_PARANOIA_THRESHOLD_MILLIS:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "timedetector.SimpleTimeDetectorStrategy"


# instance fields
.field private mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

.field private mLastNitzTime:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSystemClockTime:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSystemClockTimeSendNetworkBroadcast:Z

.field private mLastSystemClockTimeSet:Landroid/util/TimestampedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private adjustAndSetDeviceSystemClock(Landroid/util/TimestampedValue;ZJJLjava/lang/String;)V
    .locals 15
    .param p2, "sendNetworkBroadcast"    # Z
    .param p3, "elapsedRealtimeMillis"    # J
    .param p5, "actualSystemClockMillis"    # J
    .param p7, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;ZJJ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 197
    .local p1, "newTime":Landroid/util/TimestampedValue;, "Landroid/util/TimestampedValue<Ljava/lang/Long;>;"
    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p3

    move-object/from16 v4, p7

    invoke-static {v1, v2, v3}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/util/TimestampedValue;J)J

    move-result-wide v5

    .line 201
    .local v5, "newSystemClockMillis":J
    sub-long v7, v5, p5

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 202
    .local v7, "absTimeDifference":J
    iget-object v9, v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v9}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockUpdateThresholdMillis()I

    move-result v9

    int-to-long v9, v9

    .line 203
    .local v9, "systemClockUpdateThreshold":J
    cmp-long v11, v7, v9

    const-string v12, " reason="

    const-string/jumbo v13, "timedetector.SimpleTimeDetectorStrategy"

    if-gez v11, :cond_0

    .line 204
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "adjustAndSetDeviceSystemClock: Not setting system clock. New time and system clock are close enough. elapsedRealtimeMillis="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " newTime="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " systemClockUpdateThreshold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " absTimeDifference="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    return-void

    .line 214
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Setting system clock using time="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " elapsedRealtimeMillis="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " newTimeMillis="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v13, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v11, v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v11, v5, v6}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->setSystemClock(J)V

    .line 221
    iput-object v1, v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    .line 223
    if-eqz p2, :cond_1

    .line 226
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.NETWORK_SET_TIME"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v11, "intent":Landroid/content/Intent;
    const/high16 v12, 0x20000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 228
    const-string/jumbo v12, "time"

    invoke-virtual {v11, v12, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 229
    iget-object v12, v0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v12, v11}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 231
    .end local v11    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private setSystemClockIfRequired(Landroid/util/TimestampedValue;Z)V
    .locals 16
    .param p2, "sendNetworkBroadcast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 119
    .local p1, "time":Landroid/util/TimestampedValue;, "Landroid/util/TimestampedValue<Ljava/lang/Long;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iput-object v10, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    .line 120
    move/from16 v11, p2

    iput-boolean v11, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSendNetworkBroadcast:Z

    .line 122
    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->isTimeDetectionEnabled()Z

    move-result v0

    const-string/jumbo v1, "timedetector.SimpleTimeDetectorStrategy"

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemClockIfRequired: Time detection is not enabled. time="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return-void

    .line 127
    :cond_0
    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->acquireWakeLock()V

    .line 129
    :try_start_0
    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v2

    move-wide v12, v2

    .line 130
    .local v12, "elapsedRealtimeMillis":J
    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockMillis()J

    move-result-wide v2

    move-wide v14, v2

    .line 134
    .local v14, "actualTimeMillis":J
    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    if-eqz v0, :cond_1

    .line 135
    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    invoke-static {v0, v12, v13}, Lcom/android/server/timedetector/TimeDetectorStrategy;->getTimeAt(Landroid/util/TimestampedValue;J)J

    move-result-wide v2

    .line 137
    .local v2, "expectedTimeMillis":J
    sub-long v4, v2, v14

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 138
    .local v4, "absSystemClockDifference":J
    const-wide/16 v6, 0x7d0

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System clock has not tracked elapsed real time clock. A clock may be inaccurate or something unexpectedly set the system clock. elapsedRealtimeMillis="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " expectedTimeMillis="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " actualTimeMillis="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .end local v2    # "expectedTimeMillis":J
    .end local v4    # "absSystemClockDifference":J
    :cond_1
    const-string v0, "New time signal"

    .line 148
    .local v0, "reason":Ljava/lang/String;
    const-string v8, "New time signal"

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-wide v4, v12

    move-wide v6, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->adjustAndSetDeviceSystemClock(Landroid/util/TimestampedValue;ZJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .end local v0    # "reason":Ljava/lang/String;
    .end local v12    # "elapsedRealtimeMillis":J
    .end local v14    # "actualTimeMillis":J
    iget-object v0, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    .line 152
    nop

    .line 153
    return-void

    .line 151
    :catchall_0
    move-exception v0

    iget-object v1, v9, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    throw v0
.end method

.method private static validateNewNitzTime(Landroid/util/TimestampedValue;Landroid/util/TimestampedValue;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/TimestampedValue<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 99
    .local p0, "newNitzUtcTime":Landroid/util/TimestampedValue;, "Landroid/util/TimestampedValue<Ljava/lang/Long;>;"
    .local p1, "lastNitzTime":Landroid/util/TimestampedValue;, "Landroid/util/TimestampedValue<Ljava/lang/Long;>;"
    if-eqz p1, :cond_1

    .line 100
    nop

    .line 101
    invoke-static {p0, p1}, Landroid/util/TimestampedValue;->referenceTimeDifference(Landroid/util/TimestampedValue;Landroid/util/TimestampedValue;)J

    move-result-wide v0

    .line 102
    .local v0, "referenceTimeDifference":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 104
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "validateNewNitzTime: Bad NITZ signal received. referenceTimeDifference="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " lastNitzTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " newNitzUtcTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "timedetector.SimpleTimeDetectorStrategy"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v2, 0x0

    return v2

    .line 111
    .end local v0    # "referenceTimeDifference":J
    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastNitzTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastNitzTime:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastSystemClockTimeSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastSystemClockTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastSystemClockTimeSendNetworkBroadcast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSendNetworkBroadcast:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public handleAutoTimeDetectionToggle(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .line 159
    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    if-eqz v0, :cond_1

    .line 162
    iget-boolean v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSendNetworkBroadcast:Z

    .line 164
    .local v0, "sendNetworkBroadcast":Z
    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->acquireWakeLock()V

    .line 166
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->elapsedRealtimeMillis()J

    move-result-wide v4

    .line 167
    .local v4, "elapsedRealtimeMillis":J
    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->systemClockMillis()J

    move-result-wide v6

    .line 169
    .local v6, "actualTimeMillis":J
    const-string v1, "Automatic time detection enabled."

    move-object v9, v1

    .line 170
    .local v9, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTime:Landroid/util/TimestampedValue;

    const-string v8, "Automatic time detection enabled."

    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->adjustAndSetDeviceSystemClock(Landroid/util/TimestampedValue;ZJJLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v4    # "elapsedRealtimeMillis":J
    .end local v6    # "actualTimeMillis":J
    .end local v9    # "reason":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v1}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    .line 174
    nop

    .line 175
    .end local v0    # "sendNetworkBroadcast":Z
    goto :goto_0

    .line 173
    .restart local v0    # "sendNetworkBroadcast":Z
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    invoke-interface {v2}, Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;->releaseWakeLock()V

    throw v1

    .line 179
    .end local v0    # "sendNetworkBroadcast":Z
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastSystemClockTimeSet:Landroid/util/TimestampedValue;

    .line 181
    :cond_1
    :goto_0
    return-void
.end method

.method public initialize(Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    .line 64
    iput-object p1, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mCallback:Lcom/android/server/timedetector/TimeDetectorStrategy$Callback;

    .line 65
    return-void
.end method

.method public suggestTime(Landroid/app/timedetector/TimeSignal;)V
    .locals 4
    .param p1, "timeSignal"    # Landroid/app/timedetector/TimeSignal;

    .line 69
    invoke-virtual {p1}, Landroid/app/timedetector/TimeSignal;->getSourceId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "nitz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring signal from unsupported source: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timedetector.SimpleTimeDetectorStrategy"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 76
    :cond_0
    invoke-virtual {p1}, Landroid/app/timedetector/TimeSignal;->getUtcTime()Landroid/util/TimestampedValue;

    move-result-object v0

    .line 77
    .local v0, "newNitzUtcTime":Landroid/util/TimestampedValue;, "Landroid/util/TimestampedValue<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastNitzTime:Landroid/util/TimestampedValue;

    invoke-static {v0, v2}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->validateNewNitzTime(Landroid/util/TimestampedValue;Landroid/util/TimestampedValue;)Z

    move-result v2

    .line 78
    .local v2, "nitzTimeIsValid":Z
    if-nez v2, :cond_1

    .line 79
    return-void

    .line 83
    :cond_1
    iput-object v0, p0, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->mLastNitzTime:Landroid/util/TimestampedValue;

    .line 89
    nop

    .line 90
    invoke-virtual {p1}, Landroid/app/timedetector/TimeSignal;->getSourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 92
    .local v1, "sendNetworkBroadcast":Z
    move-object v3, v0

    .line 93
    .local v3, "newUtcTime":Landroid/util/TimestampedValue;, "Landroid/util/TimestampedValue<Ljava/lang/Long;>;"
    invoke-direct {p0, v3, v1}, Lcom/android/server/timedetector/SimpleTimeDetectorStrategy;->setSystemClockIfRequired(Landroid/util/TimestampedValue;Z)V

    .line 94
    return-void
.end method
