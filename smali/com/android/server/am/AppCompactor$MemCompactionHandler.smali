.class final Lcom/android/server/am/AppCompactor$MemCompactionHandler;
.super Landroid/os/Handler;
.source "AppCompactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppCompactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppCompactor;


# direct methods
.method private constructor <init>(Lcom/android/server/am/AppCompactor;)V
    .locals 0

    .line 523
    iput-object p1, p0, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    .line 524
    iget-object p1, p1, Lcom/android/server/am/AppCompactor;->mCompactionThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 525
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/AppCompactor;Lcom/android/server/am/AppCompactor$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/AppCompactor;
    .param p2, "x1"    # Lcom/android/server/am/AppCompactor$1;

    .line 522
    invoke-direct {p0, p1}, Lcom/android/server/am/AppCompactor$MemCompactionHandler;-><init>(Lcom/android/server/am/AppCompactor;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 61
    .param p1, "msg"    # Landroid/os/Message;

    .line 529
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x40

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    goto/16 :goto_10

    .line 763
    :cond_0
    const-string v0, "compactSystem"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 764
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1800(Lcom/android/server/am/AppCompactor;)V

    .line 765
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_10

    .line 531
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 539
    .local v7, "start":J
    iget v15, v2, Landroid/os/Message;->arg1:I

    .line 540
    .local v15, "lastOomAdj":I
    iget v13, v2, Landroid/os/Message;->arg2:I

    .line 541
    .local v13, "procState":I
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1000(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 542
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1100(Lcom/android/server/am/AppCompactor;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v14, v0

    .line 544
    .local v14, "proc":Lcom/android/server/am/ProcessRecord;
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    move v12, v0

    .line 545
    .local v12, "pendingAction":I
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    move v11, v0

    .line 546
    .local v11, "pid":I
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 550
    .local v40, "name":Ljava/lang/String;
    if-eq v12, v6, :cond_3

    if-ne v12, v5, :cond_2

    goto :goto_0

    :cond_2
    move-object/from16 v4, v40

    goto :goto_2

    :cond_3
    :goto_0
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->setAdj:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_5

    .line 553
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_4

    .line 554
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping compaction as process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v40

    .end local v40    # "name":Ljava/lang/String;
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is now perceptible."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 553
    .end local v4    # "name":Ljava/lang/String;
    .restart local v40    # "name":Ljava/lang/String;
    :cond_4
    move-object/from16 v4, v40

    .line 558
    .end local v40    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 566
    .end local v4    # "name":Ljava/lang/String;
    .end local v11    # "pid":I
    .end local v12    # "pendingAction":I
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v0

    move-wide/from16 v52, v7

    move/from16 v55, v13

    move/from16 v59, v15

    goto/16 :goto_11

    .line 550
    .restart local v11    # "pid":I
    .restart local v12    # "pendingAction":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v40    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v4, v40

    .line 561
    .end local v40    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :goto_2
    :try_start_2
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    move v3, v0

    .line 562
    .local v3, "lastCompactAction":I
    iget-wide v5, v14, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    .line 565
    .local v5, "lastCompactTime":J
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1200(Lcom/android/server/am/AppCompactor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppCompactor$LastCompactionStats;

    move-object/from16 v40, v0

    .line 566
    .local v40, "lastCompactionStats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 568
    if-nez v11, :cond_6

    .line 570
    return-void

    .line 580
    :cond_6
    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_13

    .line 581
    const/4 v0, 0x1

    if-ne v12, v0, :cond_b

    .line 582
    if-ne v3, v0, :cond_8

    sub-long v21, v7, v5

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    cmp-long v0, v21, v9

    if-ltz v0, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v22, v14

    move/from16 v21, v15

    goto :goto_4

    :cond_8
    :goto_3
    const/4 v0, 0x2

    if-ne v3, v0, :cond_a

    sub-long v9, v7, v5

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    move-object/from16 v22, v14

    move/from16 v21, v15

    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "lastOomAdj":I
    .local v21, "lastOomAdj":I
    .local v22, "proc":Lcom/android/server/am/ProcessRecord;
    iget-wide v14, v0, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    cmp-long v0, v9, v14

    if-gez v0, :cond_14

    .line 587
    :goto_4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_9

    .line 588
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping some compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeSome:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleSomeFull:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_9
    return-void

    .line 582
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "lastOomAdj":I
    :cond_a
    move-object/from16 v22, v14

    move/from16 v21, v15

    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "lastOomAdj":I
    .restart local v21    # "lastOomAdj":I
    .restart local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_5

    .line 595
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "lastOomAdj":I
    :cond_b
    move-object/from16 v22, v14

    move/from16 v21, v15

    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "lastOomAdj":I
    .restart local v21    # "lastOomAdj":I
    .restart local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x2

    if-ne v12, v0, :cond_f

    .line 596
    const/4 v9, 0x1

    if-ne v3, v9, :cond_c

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    cmp-long v9, v9, v14

    if-ltz v9, :cond_d

    :cond_c
    const/4 v0, 0x2

    if-ne v3, v0, :cond_14

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_14

    .line 601
    :cond_d
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_e

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping full compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullSome:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleFullFull:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_e
    return-void

    .line 609
    :cond_f
    const/4 v9, 0x3

    if-ne v12, v9, :cond_11

    .line 610
    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_14

    .line 611
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_10

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping persistent compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottlePersistent:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    :cond_10
    return-void

    .line 618
    :cond_11
    const/4 v9, 0x4

    if-ne v12, v9, :cond_14

    .line 619
    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v14, v14, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_14

    .line 620
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_12

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping bfgs compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v9, v9, Lcom/android/server/am/AppCompactor;->mCompactThrottleBFGS:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " last="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v7, v5

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v9, "ms ago"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    :cond_12
    return-void

    .line 580
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "lastOomAdj":I
    :cond_13
    move-object/from16 v22, v14

    move/from16 v21, v15

    .line 630
    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "lastOomAdj":I
    .restart local v21    # "lastOomAdj":I
    .restart local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_14
    :goto_5
    const/4 v9, 0x1

    if-eq v12, v9, :cond_16

    const/4 v0, 0x2

    if-eq v12, v0, :cond_15

    const/4 v9, 0x3

    if-eq v12, v9, :cond_15

    const/4 v9, 0x4

    if-eq v12, v9, :cond_15

    .line 641
    const-string v9, ""

    move-object v15, v9

    .local v9, "action":Ljava/lang/String;
    goto :goto_6

    .line 638
    .end local v9    # "action":Ljava/lang/String;
    :cond_15
    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v9, v9, Lcom/android/server/am/AppCompactor;->mCompactActionFull:Ljava/lang/String;

    .line 639
    .restart local v9    # "action":Ljava/lang/String;
    move-object v15, v9

    goto :goto_6

    .line 632
    .end local v9    # "action":Ljava/lang/String;
    :cond_16
    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v9, v9, Lcom/android/server/am/AppCompactor;->mCompactActionSome:Ljava/lang/String;

    .line 633
    .restart local v9    # "action":Ljava/lang/String;
    move-object v15, v9

    .line 645
    .end local v9    # "action":Ljava/lang/String;
    .local v15, "action":Ljava/lang/String;
    :goto_6
    const-string v9, ""

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 646
    return-void

    .line 649
    :cond_17
    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-object v9, v9, Lcom/android/server/am/AppCompactor;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 650
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_18

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping full compaction for process "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; proc state is "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "ActivityManager"

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_18
    return-void

    .line 657
    :cond_19
    invoke-static {v11}, Landroid/os/Process;->getRss(I)[J

    move-result-object v41

    .line 658
    .local v41, "rssBefore":[J
    const/4 v0, 0x2

    aget-wide v9, v41, v0

    .line 660
    .local v9, "anonRssBefore":J
    const/4 v14, 0x0

    aget-wide v25, v41, v14

    const-wide/16 v19, 0x0

    cmp-long v14, v25, v19

    if-nez v14, :cond_1b

    const/4 v14, 0x1

    aget-wide v25, v41, v14

    cmp-long v14, v25, v19

    if-nez v14, :cond_1b

    aget-wide v25, v41, v0

    cmp-long v14, v25, v19

    if-nez v14, :cond_1b

    const/4 v14, 0x3

    aget-wide v25, v41, v14

    cmp-long v14, v25, v19

    if-nez v14, :cond_1b

    .line 662
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_1a

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Skipping compaction forprocess "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " with no memory usage. Dead?"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "ActivityManager"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1a
    return-void

    .line 669
    :cond_1b
    const-string v14, "all"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    const-string v14, "anon"

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    goto :goto_7

    :cond_1c
    move-wide/from16 v28, v9

    move/from16 v25, v13

    goto/16 :goto_8

    .line 670
    :cond_1d
    :goto_7
    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v0, v14, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    const-wide/16 v19, 0x0

    cmp-long v0, v0, v19

    if-lez v0, :cond_1f

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    move/from16 v25, v13

    .end local v13    # "procState":I
    .local v25, "procState":I
    iget-wide v13, v0, Lcom/android/server/am/AppCompactor;->mFullAnonRssThrottleKb:J

    cmp-long v0, v9, v13

    if-gez v0, :cond_20

    .line 672
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_1e

    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping full compaction for process "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; anon RSS is too small: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "KB."

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "ActivityManager"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_1e
    return-void

    .line 670
    .end local v25    # "procState":I
    .restart local v13    # "procState":I
    :cond_1f
    move-object/from16 v1, p0

    move/from16 v25, v13

    .line 680
    .end local v13    # "procState":I
    .restart local v25    # "procState":I
    :cond_20
    if-eqz v40, :cond_22

    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v13, v0, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    const-wide/16 v19, 0x0

    cmp-long v0, v13, v19

    if-lez v0, :cond_22

    .line 681
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/AppCompactor$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v13

    .line 682
    .local v13, "lastRss":[J
    const/4 v0, 0x1

    aget-wide v19, v41, v0

    aget-wide v26, v13, v0

    sub-long v19, v19, v26

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(J)J

    move-result-wide v19

    const/4 v0, 0x2

    aget-wide v26, v41, v0

    aget-wide v28, v13, v0

    sub-long v26, v26, v28

    .line 683
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    add-long v19, v19, v26

    const/4 v14, 0x3

    aget-wide v26, v41, v14

    aget-wide v28, v13, v14

    sub-long v26, v26, v28

    .line 684
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    move-wide/from16 v28, v9

    .end local v9    # "anonRssBefore":J
    .local v28, "anonRssBefore":J
    add-long v9, v19, v26

    .line 685
    .local v9, "absDelta":J
    iget-object v14, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget-wide v0, v14, Lcom/android/server/am/AppCompactor;->mFullDeltaRssThrottleKb:J

    cmp-long v0, v9, v0

    if-gtz v0, :cond_23

    .line 686
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_21

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping full compaction for process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; abs delta is too small: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "KB."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_21
    return-void

    .line 680
    .end local v13    # "lastRss":[J
    .end local v28    # "anonRssBefore":J
    .local v9, "anonRssBefore":J
    :cond_22
    move-wide/from16 v28, v9

    .line 698
    .end local v9    # "anonRssBefore":J
    .restart local v28    # "anonRssBefore":J
    :cond_23
    :goto_8
    const/4 v0, 0x1

    if-eq v12, v0, :cond_27

    const/4 v0, 0x2

    if-eq v12, v0, :cond_26

    const/4 v1, 0x3

    if-eq v12, v1, :cond_25

    const/4 v1, 0x4

    if-eq v12, v1, :cond_24

    move-object/from16 v1, p0

    goto :goto_9

    .line 709
    :cond_24
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1608(Lcom/android/server/am/AppCompactor;)I

    .line 710
    goto :goto_9

    .line 706
    :cond_25
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1508(Lcom/android/server/am/AppCompactor;)I

    .line 707
    goto :goto_9

    .line 703
    :cond_26
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1408(Lcom/android/server/am/AppCompactor;)I

    .line 704
    goto :goto_9

    .line 700
    :cond_27
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v9}, Lcom/android/server/am/AppCompactor;->access$1308(Lcom/android/server/am/AppCompactor;)I

    .line 701
    nop

    .line 716
    :goto_9
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compact "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 717
    const/4 v10, 0x1

    if-ne v12, v10, :cond_28

    :try_start_4
    const-string/jumbo v10, "some"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    .line 758
    :catchall_1
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    goto/16 :goto_d

    .line 755
    :catch_0
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    const-wide/16 v7, 0x40

    goto/16 :goto_e

    .line 717
    :cond_28
    :try_start_5
    const-string v10, "full"

    :goto_a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 716
    const-wide/16 v13, 0x40

    :try_start_6
    invoke-static {v13, v14, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    .line 719
    :try_start_7
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v9

    move-wide/from16 v42, v9

    .line 720
    .local v42, "zramFreeKbBefore":J
    new-instance v9, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "/proc/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "/reclaim"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v13, v9

    .line 721
    .local v13, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/io/FileOutputStream;->write([B)V

    .line 722
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 723
    invoke-static {v11}, Landroid/os/Process;->getRss(I)[J

    move-result-object v9

    move-object v14, v9

    .line 724
    .local v14, "rssAfter":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 725
    .local v9, "end":J
    sub-long v44, v9, v7

    .line 726
    .local v44, "time":J
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v19

    move-wide/from16 v46, v19

    .line 727
    .local v46, "zramFreeKbAfter":J
    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    const/16 v18, 0x0

    aput-object v20, v0, v18

    const/16 v16, 0x1

    aput-object v4, v0, v16

    const/16 v17, 0x2

    aput-object v15, v0, v17

    aget-wide v26, v41, v18

    .line 728
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v24, 0x3

    aput-object v20, v0, v24

    const/16 v16, 0x1

    aget-wide v26, v41, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    const/16 v23, 0x4

    aput-object v20, v0, v23

    const/16 v20, 0x5

    const/16 v17, 0x2

    aget-wide v26, v41, v17

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x6

    const/16 v23, 0x3

    aget-wide v26, v41, v23

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x7

    const/16 v18, 0x0

    aget-wide v26, v14, v18

    aget-wide v30, v41, v18

    sub-long v26, v26, v30

    .line 729
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x8

    const/16 v16, 0x1

    aget-wide v26, v14, v16

    aget-wide v30, v41, v16

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x9

    const/16 v17, 0x2

    aget-wide v26, v14, v17

    aget-wide v30, v41, v17

    sub-long v26, v26, v30

    .line 730
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xa

    const/16 v23, 0x3

    aget-wide v26, v14, v23

    aget-wide v30, v41, v23

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xb

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xc

    .line 731
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xd

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xe

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0xf

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x10

    .line 732
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    const/16 v20, 0x11

    sub-long v26, v46, v42

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    aput-object v23, v0, v20

    .line 727
    const/16 v2, 0x756f

    invoke-static {v2, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 737
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1700(Lcom/android/server/am/AppCompactor;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v2, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    iget v2, v2, Lcom/android/server/am/AppCompactor;->mStatsdSampleRate:F
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    cmpg-float v0, v0, v2

    if-gez v0, :cond_29

    .line 738
    const/16 v2, 0x73

    const/4 v0, 0x0

    :try_start_8
    aget-wide v19, v41, v0

    const/4 v0, 0x1

    aget-wide v26, v41, v0

    const/4 v0, 0x2

    aget-wide v30, v41, v0

    const/16 v17, 0x3

    aget-wide v32, v41, v17

    const/16 v17, 0x0

    aget-wide v34, v14, v17

    const/16 v16, 0x1

    aget-wide v36, v14, v16

    const/4 v0, 0x2

    aget-wide v38, v14, v0

    const/4 v0, 0x3

    aget-wide v48, v14, v0

    .line 742
    invoke-static/range {v25 .. v25}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 738
    move-wide/from16 v52, v7

    move-wide v7, v9

    move-wide/from16 v50, v28

    .end local v9    # "end":J
    .end local v28    # "anonRssBefore":J
    .local v7, "end":J
    .local v50, "anonRssBefore":J
    .local v52, "start":J
    move v9, v2

    move v10, v11

    move v2, v11

    .end local v11    # "pid":I
    .local v2, "pid":I
    move-object v11, v4

    move/from16 v54, v12

    .end local v12    # "pendingAction":I
    .local v54, "pendingAction":I
    move-object/from16 v57, v13

    move-object/from16 v58, v14

    move-object/from16 v56, v22

    move/from16 v55, v25

    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "rssAfter":[J
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "procState":I
    .local v55, "procState":I
    .local v56, "proc":Lcom/android/server/am/ProcessRecord;
    .local v57, "fos":Ljava/io/FileOutputStream;
    .local v58, "rssAfter":[J
    move-wide/from16 v13, v19

    move-object/from16 v60, v15

    move/from16 v59, v21

    .end local v15    # "action":Ljava/lang/String;
    .end local v21    # "lastOomAdj":I
    .local v59, "lastOomAdj":I
    .local v60, "action":Ljava/lang/String;
    move-wide/from16 v15, v26

    move-wide/from16 v17, v30

    move-wide/from16 v19, v32

    move-wide/from16 v21, v34

    move-wide/from16 v23, v36

    move-wide/from16 v25, v38

    move-wide/from16 v27, v48

    move-wide/from16 v29, v44

    move/from16 v31, v3

    move-wide/from16 v32, v5

    move/from16 v34, v59

    move/from16 v35, v0

    move-wide/from16 v36, v42

    move-wide/from16 v38, v46

    :try_start_9
    invoke-static/range {v9 .. v39}, Landroid/util/StatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    .line 758
    .end local v7    # "end":J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .end local v57    # "fos":Ljava/io/FileOutputStream;
    .end local v58    # "rssAfter":[J
    :catchall_2
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    goto/16 :goto_d

    .line 755
    :catch_1
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    goto/16 :goto_e

    .line 758
    .end local v2    # "pid":I
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pendingAction":I
    .end local v55    # "procState":I
    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v59    # "lastOomAdj":I
    .end local v60    # "action":Ljava/lang/String;
    .local v7, "start":J
    .restart local v11    # "pid":I
    .restart local v12    # "pendingAction":I
    .restart local v15    # "action":Ljava/lang/String;
    .restart local v21    # "lastOomAdj":I
    .restart local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "procState":I
    .restart local v28    # "anonRssBefore":J
    :catchall_3
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move/from16 v59, v21

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move v11, v12

    move-object v12, v15

    move-object/from16 v10, v22

    .end local v7    # "start":J
    .end local v11    # "pid":I
    .end local v12    # "pendingAction":I
    .end local v15    # "action":Ljava/lang/String;
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "procState":I
    .end local v28    # "anonRssBefore":J
    .restart local v2    # "pid":I
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v54    # "pendingAction":I
    .restart local v55    # "procState":I
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v59    # "lastOomAdj":I
    .restart local v60    # "action":Ljava/lang/String;
    goto/16 :goto_d

    .line 755
    .end local v2    # "pid":I
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pendingAction":I
    .end local v55    # "procState":I
    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v59    # "lastOomAdj":I
    .end local v60    # "action":Ljava/lang/String;
    .restart local v7    # "start":J
    .restart local v11    # "pid":I
    .restart local v12    # "pendingAction":I
    .restart local v15    # "action":Ljava/lang/String;
    .restart local v21    # "lastOomAdj":I
    .restart local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "procState":I
    .restart local v28    # "anonRssBefore":J
    :catch_2
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move/from16 v59, v21

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move v11, v12

    move-object v12, v15

    move-object/from16 v10, v22

    const-wide/16 v7, 0x40

    .end local v7    # "start":J
    .end local v11    # "pid":I
    .end local v12    # "pendingAction":I
    .end local v15    # "action":Ljava/lang/String;
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "procState":I
    .end local v28    # "anonRssBefore":J
    .restart local v2    # "pid":I
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v54    # "pendingAction":I
    .restart local v55    # "procState":I
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v59    # "lastOomAdj":I
    .restart local v60    # "action":Ljava/lang/String;
    goto/16 :goto_e

    .line 737
    .end local v2    # "pid":I
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pendingAction":I
    .end local v55    # "procState":I
    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v59    # "lastOomAdj":I
    .end local v60    # "action":Ljava/lang/String;
    .restart local v7    # "start":J
    .restart local v9    # "end":J
    .restart local v11    # "pid":I
    .restart local v12    # "pendingAction":I
    .restart local v13    # "fos":Ljava/io/FileOutputStream;
    .restart local v14    # "rssAfter":[J
    .restart local v15    # "action":Ljava/lang/String;
    .restart local v21    # "lastOomAdj":I
    .restart local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "procState":I
    .restart local v28    # "anonRssBefore":J
    .restart local v42    # "zramFreeKbBefore":J
    .restart local v44    # "time":J
    .restart local v46    # "zramFreeKbAfter":J
    :cond_29
    move-wide/from16 v52, v7

    move-wide v7, v9

    move v2, v11

    move/from16 v54, v12

    move-object/from16 v57, v13

    move-object/from16 v58, v14

    move-object/from16 v60, v15

    move/from16 v59, v21

    move-object/from16 v56, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    .line 746
    .end local v9    # "end":J
    .end local v11    # "pid":I
    .end local v12    # "pendingAction":I
    .end local v13    # "fos":Ljava/io/FileOutputStream;
    .end local v14    # "rssAfter":[J
    .end local v15    # "action":Ljava/lang/String;
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "procState":I
    .end local v28    # "anonRssBefore":J
    .restart local v2    # "pid":I
    .local v7, "end":J
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v54    # "pendingAction":I
    .restart local v55    # "procState":I
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57    # "fos":Ljava/io/FileOutputStream;
    .restart local v58    # "rssAfter":[J
    .restart local v59    # "lastOomAdj":I
    .restart local v60    # "action":Ljava/lang/String;
    :goto_b
    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1000(Lcom/android/server/am/AppCompactor;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    monitor-enter v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 747
    move-object/from16 v10, v56

    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v10, "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_c
    iput-wide v7, v10, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 748
    move/from16 v11, v54

    .end local v54    # "pendingAction":I
    .local v11, "pendingAction":I
    :try_start_d
    iput v11, v10, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    .line 749
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 751
    const-string v0, "all"
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 v12, v60

    .end local v60    # "action":Ljava/lang/String;
    .local v12, "action":Ljava/lang/String;
    :try_start_f
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const-string v0, "anon"

    .line 752
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 753
    :cond_2a
    iget-object v0, v1, Lcom/android/server/am/AppCompactor$MemCompactionHandler;->this$0:Lcom/android/server/am/AppCompactor;

    invoke-static {v0}, Lcom/android/server/am/AppCompactor;->access$1200(Lcom/android/server/am/AppCompactor;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v13, Lcom/android/server/am/AppCompactor$LastCompactionStats;

    move-object/from16 v14, v58

    .end local v58    # "rssAfter":[J
    .restart local v14    # "rssAfter":[J
    invoke-direct {v13, v14}, Lcom/android/server/am/AppCompactor$LastCompactionStats;-><init>([J)V

    invoke-interface {v0, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 758
    .end local v7    # "end":J
    .end local v14    # "rssAfter":[J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .end local v57    # "fos":Ljava/io/FileOutputStream;
    :cond_2b
    const-wide/16 v7, 0x40

    goto/16 :goto_f

    .end local v12    # "action":Ljava/lang/String;
    .restart local v60    # "action":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v12, v60

    .end local v60    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    goto/16 :goto_d

    .line 755
    .end local v12    # "action":Ljava/lang/String;
    .restart local v60    # "action":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    .end local v60    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    goto/16 :goto_e

    .line 749
    .end local v12    # "action":Ljava/lang/String;
    .restart local v7    # "end":J
    .restart local v42    # "zramFreeKbBefore":J
    .restart local v44    # "time":J
    .restart local v46    # "zramFreeKbAfter":J
    .restart local v57    # "fos":Ljava/io/FileOutputStream;
    .restart local v58    # "rssAfter":[J
    .restart local v60    # "action":Ljava/lang/String;
    :catchall_5
    move-exception v0

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    .end local v58    # "rssAfter":[J
    .end local v60    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v14    # "rssAfter":[J
    goto :goto_c

    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v14    # "rssAfter":[J
    .restart local v54    # "pendingAction":I
    .restart local v58    # "rssAfter":[J
    .restart local v60    # "action":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    .end local v54    # "pendingAction":I
    .end local v58    # "rssAfter":[J
    .end local v60    # "action":Ljava/lang/String;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v14    # "rssAfter":[J
    goto :goto_c

    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v14    # "rssAfter":[J
    .restart local v54    # "pendingAction":I
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v58    # "rssAfter":[J
    .restart local v60    # "action":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    .end local v54    # "pendingAction":I
    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v58    # "rssAfter":[J
    .end local v60    # "action":Ljava/lang/String;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v14    # "rssAfter":[J
    :goto_c
    :try_start_10
    monitor-exit v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :try_start_11
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v2    # "pid":I
    .end local v3    # "lastCompactAction":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "lastCompactTime":J
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v40    # "lastCompactionStats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    .end local v41    # "rssBefore":[J
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v55    # "procState":I
    .end local v59    # "lastOomAdj":I
    .end local p0    # "this":Lcom/android/server/am/AppCompactor$MemCompactionHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 758
    .end local v7    # "end":J
    .end local v14    # "rssAfter":[J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .end local v57    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "pid":I
    .restart local v3    # "lastCompactAction":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "lastCompactTime":J
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v40    # "lastCompactionStats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    .restart local v41    # "rssBefore":[J
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v55    # "procState":I
    .restart local v59    # "lastOomAdj":I
    .restart local p0    # "this":Lcom/android/server/am/AppCompactor$MemCompactionHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_8
    move-exception v0

    goto :goto_d

    .line 755
    :catch_4
    move-exception v0

    const-wide/16 v7, 0x40

    goto :goto_e

    .line 749
    .restart local v7    # "end":J
    .restart local v14    # "rssAfter":[J
    .restart local v42    # "zramFreeKbBefore":J
    .restart local v44    # "time":J
    .restart local v46    # "zramFreeKbAfter":J
    .restart local v57    # "fos":Ljava/io/FileOutputStream;
    :catchall_9
    move-exception v0

    goto :goto_c

    .line 758
    .end local v7    # "end":J
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v14    # "rssAfter":[J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .end local v57    # "fos":Ljava/io/FileOutputStream;
    .restart local v54    # "pendingAction":I
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "action":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    .end local v54    # "pendingAction":I
    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "action":Ljava/lang/String;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    goto :goto_d

    .line 755
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .restart local v54    # "pendingAction":I
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v60    # "action":Ljava/lang/String;
    :catch_5
    move-exception v0

    move/from16 v11, v54

    move-object/from16 v10, v56

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    .end local v54    # "pendingAction":I
    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "action":Ljava/lang/String;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    goto :goto_e

    .end local v2    # "pid":I
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v55    # "procState":I
    .end local v59    # "lastOomAdj":I
    .local v7, "start":J
    .local v11, "pid":I
    .local v12, "pendingAction":I
    .restart local v15    # "action":Ljava/lang/String;
    .restart local v21    # "lastOomAdj":I
    .restart local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "procState":I
    .restart local v28    # "anonRssBefore":J
    :catch_6
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move-wide v7, v13

    goto :goto_e

    .line 758
    :catchall_b
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    .end local v7    # "start":J
    .end local v15    # "action":Ljava/lang/String;
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "procState":I
    .end local v28    # "anonRssBefore":J
    .restart local v2    # "pid":I
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v55    # "procState":I
    .restart local v59    # "lastOomAdj":I
    :goto_d
    const-wide/16 v7, 0x40

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    .line 755
    .end local v2    # "pid":I
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v55    # "procState":I
    .end local v59    # "lastOomAdj":I
    .restart local v7    # "start":J
    .local v11, "pid":I
    .local v12, "pendingAction":I
    .restart local v15    # "action":Ljava/lang/String;
    .restart local v21    # "lastOomAdj":I
    .restart local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v25    # "procState":I
    .restart local v28    # "anonRssBefore":J
    :catch_7
    move-exception v0

    move-wide/from16 v52, v7

    move v2, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    const-wide/16 v7, 0x40

    .line 758
    .end local v7    # "start":J
    .end local v15    # "action":Ljava/lang/String;
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "procState":I
    .end local v28    # "anonRssBefore":J
    .restart local v2    # "pid":I
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v55    # "procState":I
    .restart local v59    # "lastOomAdj":I
    :goto_e
    nop

    :goto_f
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 759
    nop

    .line 760
    nop

    .line 769
    .end local v2    # "pid":I
    .end local v3    # "lastCompactAction":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "lastCompactTime":J
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v40    # "lastCompactionStats":Lcom/android/server/am/AppCompactor$LastCompactionStats;
    .end local v41    # "rssBefore":[J
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v55    # "procState":I
    .end local v59    # "lastOomAdj":I
    :goto_10
    return-void

    .line 566
    .restart local v7    # "start":J
    .local v13, "procState":I
    .local v15, "lastOomAdj":I
    :catchall_c
    move-exception v0

    move-wide/from16 v52, v7

    move/from16 v55, v13

    move/from16 v59, v15

    .end local v7    # "start":J
    .end local v13    # "procState":I
    .end local v15    # "lastOomAdj":I
    .restart local v52    # "start":J
    .restart local v55    # "procState":I
    .restart local v59    # "lastOomAdj":I
    :goto_11
    :try_start_12
    monitor-exit v9
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_d
    move-exception v0

    goto :goto_11
.end method
