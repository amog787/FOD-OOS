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
.field private mForceStop:Z

.field private final mUid:I

.field private final mUsageHint:I

.field private final mWaveform:Landroid/os/VibrationEffect$Waveform;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V
    .locals 1
    .param p2, "waveform"    # Landroid/os/VibrationEffect$Waveform;
    .param p3, "uid"    # I
    .param p4, "usageHint"    # I

    .line 1500
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1501
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    .line 1502
    iput p3, p0, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    .line 1503
    iput p4, p0, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    .line 1504
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/os/WorkSource;->set(I)V

    .line 1505
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$1100(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1506
    return-void
.end method

.method private delayLocked(J)J
    .locals 10
    .param p1, "duration"    # J

    .line 1509
    const-wide/32 v0, 0x800000

    const-string v2, "delayLocked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1511
    move-wide v2, p1

    .line 1512
    .local v2, "durationRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v6, p1, v4

    if-lez v6, :cond_2

    .line 1513
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-long/2addr v6, p1

    .line 1516
    .local v6, "bedtime":J
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1518
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_0

    .line 1519
    :goto_1
    :try_start_2
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-eqz v8, :cond_1

    .line 1520
    goto :goto_2

    .line 1522
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sub-long v2, v6, v8

    .line 1523
    cmp-long v8, v2, v4

    if-gtz v8, :cond_0

    .line 1524
    :goto_2
    sub-long v4, p1, v2

    .line 1528
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1524
    return-wide v4

    .line 1528
    .end local v2    # "durationRemaining":J
    .end local v6    # "bedtime":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw v2

    .line 1526
    .restart local v2    # "durationRemaining":J
    :cond_2
    nop

    .line 1528
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 1526
    return-wide v4
.end method

.method private getTotalOnDuration([J[III)J
    .locals 6
    .param p1, "timings"    # [J
    .param p2, "amplitudes"    # [I
    .param p3, "startIndex"    # I
    .param p4, "repeatIndex"    # I

    .line 1618
    move v0, p3

    .line 1619
    .local v0, "i":I
    const-wide/16 v1, 0x0

    .line 1620
    .local v1, "timing":J
    :cond_0
    aget v3, p2, v0

    if-eqz v3, :cond_3

    .line 1621
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aget-wide v4, p1, v0

    add-long/2addr v1, v4

    .line 1622
    array-length v0, p1

    if-lt v3, v0, :cond_2

    .line 1623
    if-ltz p4, :cond_1

    .line 1624
    move v0, p4

    .line 1626
    .end local v3    # "i":I
    .restart local v0    # "i":I
    const/4 p4, -0x1

    goto :goto_0

    .line 1623
    .end local v0    # "i":I
    .restart local v3    # "i":I
    :cond_1
    move v0, v3

    goto :goto_1

    .line 1622
    :cond_2
    move v0, v3

    .line 1631
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :goto_0
    if-ne v0, p3, :cond_0

    .line 1632
    const-wide/16 v3, 0x3e8

    return-wide v3

    .line 1635
    :cond_3
    :goto_1
    return-wide v1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1606
    monitor-enter p0

    .line 1607
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    .line 1608
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1500(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 1609
    monitor-exit p0

    .line 1610
    return-void

    .line 1609
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public playWaveform()Z
    .locals 22

    .line 1551
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string/jumbo v0, "playWaveform"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1553
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1554
    :try_start_1
    iget-object v0, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$Waveform;->getTimings()[J

    move-result-object v0

    .line 1555
    .local v0, "timings":[J
    iget-object v4, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v4}, Landroid/os/VibrationEffect$Waveform;->getAmplitudes()[I

    move-result-object v4

    .line 1556
    .local v4, "amplitudes":[I
    array-length v5, v0

    .line 1557
    .local v5, "len":I
    iget-object v6, v1, Lcom/android/server/VibratorService$VibrateThread;->mWaveform:Landroid/os/VibrationEffect$Waveform;

    invoke-virtual {v6}, Landroid/os/VibrationEffect$Waveform;->getRepeatIndex()I

    move-result v6

    .line 1560
    .local v6, "repeat":I
    const/4 v7, 0x1

    if-ltz v6, :cond_0

    .line 1561
    invoke-static {v7}, Lcom/android/server/OpVibratorServiceInjector;->setRepeatVibrate(Z)V

    .line 1563
    :cond_0
    const/4 v8, 0x0

    .line 1564
    .local v8, "index":I
    const-wide/16 v9, 0x0

    move-wide v11, v9

    .line 1565
    .local v11, "onDuration":J
    :goto_0
    iget-boolean v13, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v13, :cond_7

    .line 1566
    if-ge v8, v5, :cond_5

    .line 1567
    aget v13, v4, v8

    .line 1568
    .local v13, "amplitude":I
    add-int/lit8 v20, v8, 0x1

    .end local v8    # "index":I
    .local v20, "index":I
    aget-wide v14, v0, v8

    .line 1569
    .local v14, "duration":J
    cmp-long v8, v14, v9

    if-gtz v8, :cond_1

    .line 1570
    move/from16 v8, v20

    goto :goto_0

    .line 1572
    :cond_1
    if-eqz v13, :cond_3

    .line 1573
    cmp-long v8, v11, v9

    if-gtz v8, :cond_2

    .line 1580
    add-int/lit8 v8, v20, -0x1

    invoke-direct {v1, v0, v4, v8, v6}, Lcom/android/server/VibratorService$VibrateThread;->getTotalOnDuration([J[III)J

    move-result-wide v16

    move-wide v7, v14

    .end local v14    # "duration":J
    .local v7, "duration":J
    move-wide/from16 v15, v16

    .line 1582
    .end local v11    # "onDuration":J
    .local v15, "onDuration":J
    iget-object v14, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget v11, v1, Lcom/android/server/VibratorService$VibrateThread;->mUid:I

    iget v12, v1, Lcom/android/server/VibratorService$VibrateThread;->mUsageHint:I

    move/from16 v17, v13

    move/from16 v18, v11

    move/from16 v19, v12

    invoke-static/range {v14 .. v19}, Lcom/android/server/VibratorService;->access$1300(Lcom/android/server/VibratorService;JIII)V

    goto :goto_2

    .line 1584
    .end local v7    # "duration":J
    .end local v15    # "onDuration":J
    .restart local v11    # "onDuration":J
    .restart local v14    # "duration":J
    :cond_2
    move-wide v7, v14

    .end local v14    # "duration":J
    .restart local v7    # "duration":J
    iget-object v14, v1, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v14, v13}, Lcom/android/server/VibratorService;->access$1400(Lcom/android/server/VibratorService;I)V

    goto :goto_1

    .line 1572
    .end local v7    # "duration":J
    .restart local v14    # "duration":J
    :cond_3
    move-wide v7, v14

    .line 1588
    .end local v14    # "duration":J
    .restart local v7    # "duration":J
    :goto_1
    move-wide v15, v11

    .end local v11    # "onDuration":J
    .restart local v15    # "onDuration":J
    :goto_2
    invoke-direct {v1, v7, v8}, Lcom/android/server/VibratorService$VibrateThread;->delayLocked(J)J

    move-result-wide v11

    .line 1589
    .local v11, "waitTime":J
    if-eqz v13, :cond_4

    .line 1590
    sub-long/2addr v15, v11

    move-wide v11, v15

    goto :goto_3

    .line 1589
    :cond_4
    move-wide v11, v15

    .line 1592
    .end local v7    # "duration":J
    .end local v13    # "amplitude":I
    .end local v15    # "onDuration":J
    .local v11, "onDuration":J
    :goto_3
    move/from16 v8, v20

    const/4 v7, 0x1

    goto :goto_0

    .end local v20    # "index":I
    .restart local v8    # "index":I
    :cond_5
    if-gez v6, :cond_6

    .line 1593
    goto :goto_4

    .line 1595
    :cond_6
    move v8, v6

    const/4 v7, 0x1

    goto :goto_0

    .line 1598
    :cond_7
    :goto_4
    iget-boolean v7, v1, Lcom/android/server/VibratorService$VibrateThread;->mForceStop:Z

    if-nez v7, :cond_8

    const/16 v21, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    move/from16 v21, v7

    :goto_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1601
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1598
    return v21

    .line 1599
    .end local v0    # "timings":[J
    .end local v4    # "amplitudes":[I
    .end local v5    # "len":I
    .end local v6    # "repeat":I
    .end local v8    # "index":I
    .end local v11    # "onDuration":J
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

    .line 1601
    .restart local p0    # "this":Lcom/android/server/VibratorService$VibrateThread;
    :catchall_1
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public run()V
    .locals 2

    .line 1533
    const/4 v0, -0x8

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1534
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1536
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibrateThread;->playWaveform()Z

    move-result v0

    .line 1537
    .local v0, "finished":Z
    if-eqz v0, :cond_0

    .line 1538
    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-virtual {v1}, Lcom/android/server/VibratorService;->onVibrationFinished()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1541
    .end local v0    # "finished":Z
    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1542
    nop

    .line 1543
    return-void

    .line 1541
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1200(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method
