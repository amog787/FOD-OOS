.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field private final mAttrs:Landroid/os/VibrationAttributes;

.field private mForceStop:Z

.field private final mUid:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;ILandroid/os/VibrationAttributes;)V
    .locals 1
    .param p2, "waveform"    # Landroid/os/VibrationEffect$Waveform;
    .param p3, "uid"    # I
    .param p4, "attrs"    # Landroid/os/VibrationAttributes;

    .line 1943
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1944
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 1945
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 1946
    iput-object p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/os/VibrationAttributes;

    .line 1947
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    .line 1948
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1949
    return-void
.end method

.method private delayLocked(J)J
    .locals 10
    .param p1, "duration"    # J

    .line 1952
    const-wide/32 v0, 0x800000

    const-string v2, "delayLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1954
    move-wide v2, p1

    .line 1955
    .local v2, "durationRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_2

    .line 1956
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v6, p1

    .line 1959
    .local v6, "bedtime":J
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1961
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_0

    .line 1962
    :goto_1
    :try_start_2
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v8, :cond_1

    .line 1963
    goto :goto_2

    .line 1965
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v2, v6, v8

    .line 1966
    cmp-long v8, v2, v4

    if-gtz v8, :cond_0

    .line 1967
    :goto_2
    sub-long v4, p1, v2

    .line 1971
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1967
    return-wide v4

    .line 1971
    .end local v2    # "durationRemaining":J
    .end local v6    # "bedtime":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1972
    throw v2

    .line 1969
    .restart local v2    # "durationRemaining":J
    :cond_2
    nop

    .line 1971
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1969
    return-wide v4
.end method

.method private getTotalOnDuration([J[III)J
    .locals 6
    .param p1, "timings"    # [J
    .param p2, "amplitudes"    # [I
    .param p3, "startIndex"    # I
    .param p4, "repeatIndex"    # I

    .line 2061
    move v0, p3

    .line 2062
    .local v0, "i":I
    const-wide/16 v1, 0x0

    .line 2063
    .local v1, "timing":J
    :cond_0
    aget v3, p2, v0

    if-eqz v3, :cond_3

    .line 2064
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-wide v4, p1, v0

    add-long/2addr v1, v4

    .line 2065
    array-length v0, p1

    if-lt v3, v0, :cond_2

    .line 2066
    if-ltz p4, :cond_1

    .line 2067
    move v0, p4

    .line 2069
    .end local v3    # "i":I
    .restart local v0    # "i":I
    const/4 p4, -0x1

    goto :goto_0

    .line 2066
    .end local v0    # "i":I
    .restart local v3    # "i":I
    :cond_1
    move v0, v3

    goto :goto_1

    .line 2065
    :cond_2
    move v0, v3

    .line 2074
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :goto_0
    if-ne v0, p3, :cond_0

    .line 2075
    const-wide/16 v3, 0x3e8

    return-wide v3

    .line 2078
    :cond_3
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 2049
    monitor-enter p0

    .line 2050
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 2051
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1600(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2052
    monitor-exit p0

    .line 2053
    return-void

    .line 2052
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playWaveform()Z
    .locals 19

    .line 1994
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string/jumbo v0, "playWaveform"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1996
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1997
    :try_start_1
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    .line 1998
    .local v0, "timings":[J
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    .line 1999
    .local v4, "amplitudes":[I
    array-length v5, v0

    .line 2000
    .local v5, "len":I
    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    .line 2003
    .local v6, "repeat":I
    const/4 v7, 0x1

    if-ltz v6, :cond_0

    .line 2004
    invoke-static {v7}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V

    .line 2006
    :cond_0
    const/4 v8, 0x0

    .line 2007
    .local v8, "index":I
    const-wide/16 v9, 0x0

    .line 2008
    .local v9, "onDuration":J
    :goto_0
    iget-boolean v11, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v11, :cond_7

    .line 2009
    if-ge v8, v5, :cond_5

    .line 2010
    aget v11, v4, v8

    .line 2011
    .local v11, "amplitude":I
    add-int/lit8 v18, v8, 0x1

    .end local v8    # "index":I
    .local v18, "index":I
    aget-wide v12, v0, v8

    .line 2012
    .local v12, "duration":J
    const-wide/16 v14, 0x0

    cmp-long v8, v12, v14

    if-gtz v8, :cond_1

    .line 2013
    move/from16 v8, v18

    goto :goto_0

    .line 2015
    :cond_1
    if-eqz v11, :cond_3

    .line 2016
    cmp-long v8, v9, v14

    if-gtz v8, :cond_2

    .line 2023
    add-int/lit8 v8, v18, -0x1

    invoke-direct {v1, v0, v4, v8, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v14

    move-wide v7, v12

    .end local v12    # "duration":J
    .local v7, "duration":J
    move-wide v13, v14

    .line 2025
    .end local v9    # "onDuration":J
    .local v13, "onDuration":J
    iget-object v12, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v9, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget-object v10, v1, Lcom/android/server/VibratorService$VibrateThread;->mAttrs:Landroid/os/VibrationAttributes;

    move v15, v11

    move/from16 v16, v9

    move-object/from16 v17, v10

    invoke-static/range {v12 .. v17}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;JIILandroid/os/VibrationAttributes;)V

    move-wide v9, v13

    goto :goto_1

    .line 2027
    .end local v7    # "duration":J
    .end local v13    # "onDuration":J
    .restart local v9    # "onDuration":J
    .restart local v12    # "duration":J
    :cond_2
    move-wide v7, v12

    .end local v12    # "duration":J
    .restart local v7    # "duration":J
    iget-object v12, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v12, v11}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;I)V

    goto :goto_1

    .line 2015
    .end local v7    # "duration":J
    .restart local v12    # "duration":J
    :cond_3
    move-wide v7, v12

    .line 2031
    .end local v12    # "duration":J
    .restart local v7    # "duration":J
    :goto_1
    invoke-direct {v1, v7, v8}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v12

    .line 2032
    .local v12, "waitTime":J
    if-eqz v11, :cond_4

    .line 2033
    sub-long/2addr v9, v12

    .line 2035
    .end local v7    # "duration":J
    .end local v11    # "amplitude":I
    .end local v12    # "waitTime":J
    :cond_4
    move/from16 v8, v18

    const/4 v7, 0x1

    goto :goto_0

    .end local v18    # "index":I
    .restart local v8    # "index":I
    :cond_5
    if-gez v6, :cond_6

    .line 2036
    goto :goto_2

    .line 2038
    :cond_6
    move v8, v6

    const/4 v7, 0x1

    goto :goto_0

    .line 2041
    :cond_7
    :goto_2
    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_3

    :cond_8
    const/4 v7, 0x0

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2044
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2041
    return v7

    .line 2042
    .end local v0    # "timings":[J
    .end local v4    # "amplitudes":[I
    .end local v5    # "len":I
    .end local v6    # "repeat":I
    .end local v8    # "index":I
    .end local v9    # "onDuration":J
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/VibratorService$VibrateThread;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2044
    .restart local p0    # "this":Lcom/android/server/VibratorService$VibrateThread;
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2045
    throw v0
.end method

.method public run()V
    .locals 2

    .line 1976
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1977
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1979
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 1980
    .local v0, "finished":Z
    if-eqz v0, :cond_0

    .line 1981
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1984
    .end local v0    # "finished":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1985
    nop

    .line 1986
    return-void

    .line 1984
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1985
    throw v0
.end method
