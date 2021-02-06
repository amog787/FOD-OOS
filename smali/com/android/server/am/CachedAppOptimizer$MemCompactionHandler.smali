.class final Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MemCompactionHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 768
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 769
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p2, "x1"    # Lcom/android/server/am/CachedAppOptimizer$1;

    .line 766
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 61
    .param p1, "msg"    # Landroid/os/Message;

    .line 773
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-wide/16 v3, 0x40

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v0, v6, :cond_1

    if-eq v0, v5, :cond_0

    goto/16 :goto_10

    .line 1001
    :cond_0
    const-string v0, "compactSystem"

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1002
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2100(Lcom/android/server/am/CachedAppOptimizer;)V

    .line 1003
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_10

    .line 775
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 783
    .local v7, "start":J
    iget v15, v2, Landroid/os/Message;->arg1:I

    .line 784
    .local v15, "lastOomAdj":I
    iget v13, v2, Landroid/os/Message;->arg2:I

    .line 785
    .local v13, "procState":I
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1300(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 786
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1400(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v14, v0

    .line 788
    .local v14, "proc":Lcom/android/server/am/ProcessRecord;
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    move v12, v0

    .line 789
    .local v12, "pendingAction":I
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->pid:I

    move v11, v0

    .line 790
    .local v11, "pid":I
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v40, v0

    .line 794
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

    .line 797
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_4

    .line 798
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

    .line 797
    .end local v4    # "name":Ljava/lang/String;
    .restart local v40    # "name":Ljava/lang/String;
    :cond_4
    move-object/from16 v4, v40

    .line 802
    .end local v40    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :goto_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 808
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

    .line 794
    .restart local v11    # "pid":I
    .restart local v12    # "pendingAction":I
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v40    # "name":Ljava/lang/String;
    :cond_5
    move-object/from16 v4, v40

    .line 805
    .end local v40    # "name":Ljava/lang/String;
    .restart local v4    # "name":Ljava/lang/String;
    :goto_2
    :try_start_2
    iget v0, v14, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    move v3, v0

    .line 806
    .local v3, "lastCompactAction":I
    iget-wide v5, v14, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    .line 807
    .local v5, "lastCompactTime":J
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    move-object/from16 v40, v0

    .line 808
    .local v40, "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 810
    if-nez v11, :cond_6

    .line 812
    return-void

    .line 822
    :cond_6
    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-eqz v0, :cond_13

    .line 823
    const/4 v0, 0x1

    if-ne v12, v0, :cond_b

    .line 824
    if-ne v3, v0, :cond_8

    sub-long v21, v7, v5

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v9, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

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

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move-object/from16 v22, v14

    move/from16 v21, v15

    .end local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v15    # "lastOomAdj":I
    .local v21, "lastOomAdj":I
    .local v22, "proc":Lcom/android/server/am/ProcessRecord;
    iget-wide v14, v0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    cmp-long v0, v9, v14

    if-gez v0, :cond_14

    .line 829
    :goto_4
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_9

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping some compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

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

    .line 835
    :cond_9
    return-void

    .line 824
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

    .line 837
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

    .line 838
    const/4 v9, 0x1

    if-ne v3, v9, :cond_c

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v14, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    cmp-long v9, v9, v14

    if-ltz v9, :cond_d

    :cond_c
    const/4 v0, 0x2

    if-ne v3, v0, :cond_14

    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v14, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_14

    .line 843
    :cond_d
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_e

    .line 844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping full compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

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

    .line 849
    :cond_e
    return-void

    .line 851
    :cond_f
    const/4 v9, 0x3

    if-ne v12, v9, :cond_11

    .line 852
    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v14, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_14

    .line 853
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_10

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping persistent compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

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

    .line 858
    :cond_10
    return-void

    .line 860
    :cond_11
    const/4 v9, 0x4

    if-ne v12, v9, :cond_14

    .line 861
    sub-long v9, v7, v5

    iget-object v14, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v14, v14, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v9, v9, v14

    if-gez v9, :cond_14

    .line 862
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_12

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping bfgs compaction for "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": too soon. throttle="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

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

    .line 867
    :cond_12
    return-void

    .line 822
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v14    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v15    # "lastOomAdj":I
    :cond_13
    move-object/from16 v22, v14

    move/from16 v21, v15

    .line 872
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

    .line 883
    const-string v9, ""

    move-object v15, v9

    .local v9, "action":Ljava/lang/String;
    goto :goto_6

    .line 880
    .end local v9    # "action":Ljava/lang/String;
    :cond_15
    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    .line 881
    .restart local v9    # "action":Ljava/lang/String;
    move-object v15, v9

    goto :goto_6

    .line 874
    .end local v9    # "action":Ljava/lang/String;
    :cond_16
    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    .line 875
    .restart local v9    # "action":Ljava/lang/String;
    move-object v15, v9

    .line 887
    .end local v9    # "action":Ljava/lang/String;
    .local v15, "action":Ljava/lang/String;
    :goto_6
    const-string v9, ""

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_17

    .line 888
    return-void

    .line 891
    :cond_17
    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v9, v9, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_19

    .line 892
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_18

    .line 893
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

    .line 896
    :cond_18
    return-void

    .line 899
    :cond_19
    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v9

    invoke-interface {v9, v11}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v41

    .line 900
    .local v41, "rssBefore":[J
    const/4 v0, 0x2

    aget-wide v9, v41, v0

    .line 902
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

    .line 904
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_1a

    .line 905
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

    .line 908
    :cond_1a
    return-void

    .line 911
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

    .line 912
    :cond_1d
    :goto_7
    iget-object v14, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v14, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v19, 0x0

    cmp-long v0, v0, v19

    if-lez v0, :cond_1f

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    move/from16 v25, v13

    .end local v13    # "procState":I
    .local v25, "procState":I
    iget-wide v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    cmp-long v0, v9, v13

    if-gez v0, :cond_20

    .line 914
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_1e

    .line 915
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

    .line 919
    :cond_1e
    return-void

    .line 912
    .end local v25    # "procState":I
    .restart local v13    # "procState":I
    :cond_1f
    move-object/from16 v1, p0

    move/from16 v25, v13

    .line 922
    .end local v13    # "procState":I
    .restart local v25    # "procState":I
    :cond_20
    if-eqz v40, :cond_22

    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v13, v0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v19, 0x0

    cmp-long v0, v13, v19

    if-lez v0, :cond_22

    .line 923
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v13

    .line 924
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

    .line 925
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    add-long v19, v19, v26

    const/4 v14, 0x3

    aget-wide v26, v41, v14

    aget-wide v28, v13, v14

    sub-long v26, v26, v28

    .line 926
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->abs(J)J

    move-result-wide v26

    move-wide/from16 v28, v9

    .end local v9    # "anonRssBefore":J
    .local v28, "anonRssBefore":J
    add-long v9, v19, v26

    .line 927
    .local v9, "absDelta":J
    iget-object v14, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-wide v0, v14, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    cmp-long v0, v9, v0

    if-gtz v0, :cond_23

    .line 928
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_21

    .line 929
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

    .line 933
    :cond_21
    return-void

    .line 922
    .end local v13    # "lastRss":[J
    .end local v28    # "anonRssBefore":J
    .local v9, "anonRssBefore":J
    :cond_22
    move-wide/from16 v28, v9

    .line 940
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

    .line 951
    :cond_24
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->access$1908(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 952
    goto :goto_9

    .line 948
    :cond_25
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->access$1808(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 949
    goto :goto_9

    .line 945
    :cond_26
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->access$1708(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 946
    goto :goto_9

    .line 942
    :cond_27
    move-object/from16 v1, p0

    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->access$1608(Lcom/android/server/am/CachedAppOptimizer;)I

    .line 943
    nop

    .line 957
    :goto_9
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compact "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 958
    const/4 v10, 0x1

    if-ne v12, v10, :cond_28

    :try_start_4
    const-string/jumbo v10, "some"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_a

    .line 996
    :catchall_1
    move-exception v0

    move-wide/from16 v52, v7

    move/from16 v54, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    goto/16 :goto_d

    .line 993
    :catch_0
    move-exception v0

    move-wide/from16 v52, v7

    move/from16 v54, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    const-wide/16 v7, 0x40

    goto/16 :goto_e

    .line 958
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

    .line 957
    const-wide/16 v13, 0x40

    :try_start_6
    invoke-static {v13, v14, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_b

    .line 960
    :try_start_7
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v9

    move-wide/from16 v42, v9

    .line 961
    .local v42, "zramFreeKbBefore":J
    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v9

    invoke-interface {v9, v15, v11}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->performCompaction(Ljava/lang/String;I)V

    .line 962
    iget-object v9, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v9}, Lcom/android/server/am/CachedAppOptimizer;->access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    move-result-object v9

    invoke-interface {v9, v11}, Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;->getRss(I)[J

    move-result-object v9

    move-object v13, v9

    .line 963
    .local v13, "rssAfter":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 964
    .local v9, "end":J
    sub-long v44, v9, v7

    .line 965
    .local v44, "time":J
    invoke-static {}, Landroid/os/Debug;->getZramFreeKb()J

    move-result-wide v19

    move-wide/from16 v46, v19

    .line 966
    .local v46, "zramFreeKbAfter":J
    const/16 v14, 0x756f

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v18, 0x0

    aput-object v19, v0, v18

    const/16 v16, 0x1

    aput-object v4, v0, v16

    const/16 v17, 0x2

    aput-object v15, v0, v17

    aget-wide v26, v41, v18

    .line 967
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v20, 0x3

    aput-object v17, v0, v20

    const/16 v16, 0x1

    aget-wide v26, v41, v16

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    const/16 v20, 0x4

    aput-object v17, v0, v20

    const/16 v17, 0x5

    const/16 v19, 0x2

    aget-wide v26, v41, v19

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0x6

    const/16 v20, 0x3

    aget-wide v26, v41, v20

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0x7

    const/16 v18, 0x0

    aget-wide v26, v13, v18

    aget-wide v30, v41, v18

    sub-long v26, v26, v30

    .line 968
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0x8

    const/16 v16, 0x1

    aget-wide v26, v13, v16

    aget-wide v30, v41, v16

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0x9

    const/16 v19, 0x2

    aget-wide v26, v13, v19

    aget-wide v30, v41, v19

    sub-long v26, v26, v30

    .line 969
    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0xa

    const/16 v20, 0x3

    aget-wide v26, v13, v20

    aget-wide v30, v41, v20

    sub-long v26, v26, v30

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0xb

    invoke-static/range {v44 .. v45}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0xc

    .line 970
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0xd

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0xe

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0xf

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0x10

    .line 971
    invoke-static/range {v42 .. v43}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    const/16 v17, 0x11

    sub-long v26, v46, v42

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v0, v17

    .line 966
    invoke-static {v14, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 975
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2000(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v14, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v14, v14, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    cmpg-float v0, v0, v14

    if-gez v0, :cond_29

    .line 976
    const/16 v14, 0x73

    const/4 v0, 0x0

    :try_start_8
    aget-wide v26, v41, v0

    const/4 v0, 0x1

    aget-wide v30, v41, v0

    const/4 v0, 0x2

    aget-wide v19, v41, v0

    const/16 v17, 0x3

    aget-wide v32, v41, v17

    const/16 v17, 0x0

    aget-wide v34, v13, v17

    const/16 v16, 0x1

    aget-wide v36, v13, v16

    const/4 v0, 0x2

    aget-wide v38, v13, v0

    const/4 v0, 0x3

    aget-wide v48, v13, v0

    .line 980
    invoke-static/range {v25 .. v25}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 976
    move-wide/from16 v52, v7

    move-wide v7, v9

    move-wide/from16 v50, v28

    .end local v9    # "end":J
    .end local v28    # "anonRssBefore":J
    .local v7, "end":J
    .local v50, "anonRssBefore":J
    .local v52, "start":J
    move v9, v14

    move v10, v11

    move/from16 v54, v11

    .end local v11    # "pid":I
    .local v54, "pid":I
    move-object v11, v4

    move v14, v12

    .end local v12    # "pendingAction":I
    .local v14, "pendingAction":I
    move-object/from16 v58, v13

    move/from16 v57, v14

    move-object/from16 v56, v22

    move/from16 v55, v25

    .end local v13    # "rssAfter":[J
    .end local v14    # "pendingAction":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "procState":I
    .local v55, "procState":I
    .local v56, "proc":Lcom/android/server/am/ProcessRecord;
    .local v57, "pendingAction":I
    .local v58, "rssAfter":[J
    move-wide/from16 v13, v26

    move-object/from16 v60, v15

    move/from16 v59, v21

    .end local v15    # "action":Ljava/lang/String;
    .end local v21    # "lastOomAdj":I
    .local v59, "lastOomAdj":I
    .local v60, "action":Ljava/lang/String;
    move-wide/from16 v15, v30

    move-wide/from16 v17, v19

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
    invoke-static/range {v9 .. v39}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IJJJJJJJJJIJIIJJ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_b

    .line 996
    .end local v7    # "end":J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .end local v58    # "rssAfter":[J
    :catchall_2
    move-exception v0

    move-object/from16 v10, v56

    move/from16 v11, v57

    move-object/from16 v12, v60

    goto/16 :goto_d

    .line 993
    :catch_1
    move-exception v0

    move-object/from16 v10, v56

    move/from16 v11, v57

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    goto/16 :goto_e

    .line 996
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pid":I
    .end local v55    # "procState":I
    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "pendingAction":I
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

    move/from16 v54, v11

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
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v54    # "pid":I
    .restart local v55    # "procState":I
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57    # "pendingAction":I
    .restart local v59    # "lastOomAdj":I
    .restart local v60    # "action":Ljava/lang/String;
    goto/16 :goto_d

    .line 993
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pid":I
    .end local v55    # "procState":I
    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "pendingAction":I
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

    move/from16 v54, v11

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
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v54    # "pid":I
    .restart local v55    # "procState":I
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57    # "pendingAction":I
    .restart local v59    # "lastOomAdj":I
    .restart local v60    # "action":Ljava/lang/String;
    goto/16 :goto_e

    .line 975
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pid":I
    .end local v55    # "procState":I
    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "pendingAction":I
    .end local v59    # "lastOomAdj":I
    .end local v60    # "action":Ljava/lang/String;
    .restart local v7    # "start":J
    .restart local v9    # "end":J
    .restart local v11    # "pid":I
    .restart local v12    # "pendingAction":I
    .restart local v13    # "rssAfter":[J
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

    move/from16 v54, v11

    move/from16 v57, v12

    move-object/from16 v58, v13

    move-object/from16 v60, v15

    move/from16 v59, v21

    move-object/from16 v56, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    .line 983
    .end local v9    # "end":J
    .end local v11    # "pid":I
    .end local v12    # "pendingAction":I
    .end local v13    # "rssAfter":[J
    .end local v15    # "action":Ljava/lang/String;
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "procState":I
    .end local v28    # "anonRssBefore":J
    .local v7, "end":J
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v54    # "pid":I
    .restart local v55    # "procState":I
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57    # "pendingAction":I
    .restart local v58    # "rssAfter":[J
    .restart local v59    # "lastOomAdj":I
    .restart local v60    # "action":Ljava/lang/String;
    :goto_b
    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1300(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v9

    monitor-enter v9
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    :try_start_b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 984
    move-object/from16 v10, v56

    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v10, "proc":Lcom/android/server/am/ProcessRecord;
    :try_start_c
    iput-wide v7, v10, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 985
    move/from16 v11, v57

    .end local v57    # "pendingAction":I
    .local v11, "pendingAction":I
    :try_start_d
    iput v11, v10, Lcom/android/server/am/ProcessRecord;->lastCompactAction:I

    .line 986
    monitor-exit v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 987
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

    .line 988
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 990
    :cond_2a
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    iget-object v0, v1, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget-object v0, v0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v13, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    move-object/from16 v14, v58

    .end local v58    # "rssAfter":[J
    .local v14, "rssAfter":[J
    invoke-direct {v13, v14}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;-><init>([J)V

    invoke-virtual {v0, v9, v13}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 996
    .end local v7    # "end":J
    .end local v14    # "rssAfter":[J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
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

    .line 993
    .end local v12    # "action":Ljava/lang/String;
    .restart local v60    # "action":Ljava/lang/String;
    :catch_3
    move-exception v0

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    .end local v60    # "action":Ljava/lang/String;
    .restart local v12    # "action":Ljava/lang/String;
    goto/16 :goto_e

    .line 986
    .end local v12    # "action":Ljava/lang/String;
    .restart local v7    # "end":J
    .restart local v42    # "zramFreeKbBefore":J
    .restart local v44    # "time":J
    .restart local v46    # "zramFreeKbAfter":J
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
    .restart local v57    # "pendingAction":I
    .restart local v58    # "rssAfter":[J
    .restart local v60    # "action":Ljava/lang/String;
    :catchall_6
    move-exception v0

    move/from16 v11, v57

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    .end local v57    # "pendingAction":I
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
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57    # "pendingAction":I
    .restart local v58    # "rssAfter":[J
    .restart local v60    # "action":Ljava/lang/String;
    :catchall_7
    move-exception v0

    move-object/from16 v10, v56

    move/from16 v11, v57

    move-object/from16 v14, v58

    move-object/from16 v12, v60

    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "pendingAction":I
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

    .end local v3    # "lastCompactAction":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "lastCompactTime":J
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v40    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .end local v41    # "rssBefore":[J
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pid":I
    .end local v55    # "procState":I
    .end local v59    # "lastOomAdj":I
    .end local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .end local p1    # "msg":Landroid/os/Message;
    throw v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 996
    .end local v7    # "end":J
    .end local v14    # "rssAfter":[J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .restart local v3    # "lastCompactAction":I
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "lastCompactTime":J
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    .restart local v40    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .restart local v41    # "rssBefore":[J
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v54    # "pid":I
    .restart local v55    # "procState":I
    .restart local v59    # "lastOomAdj":I
    .restart local p0    # "this":Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;
    .restart local p1    # "msg":Landroid/os/Message;
    :catchall_8
    move-exception v0

    goto :goto_d

    .line 993
    :catch_4
    move-exception v0

    const-wide/16 v7, 0x40

    goto :goto_e

    .line 986
    .restart local v7    # "end":J
    .restart local v14    # "rssAfter":[J
    .restart local v42    # "zramFreeKbBefore":J
    .restart local v44    # "time":J
    .restart local v46    # "zramFreeKbAfter":J
    :catchall_9
    move-exception v0

    goto :goto_c

    .line 996
    .end local v7    # "end":J
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v14    # "rssAfter":[J
    .end local v42    # "zramFreeKbBefore":J
    .end local v44    # "time":J
    .end local v46    # "zramFreeKbAfter":J
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57    # "pendingAction":I
    .restart local v60    # "action":Ljava/lang/String;
    :catchall_a
    move-exception v0

    move-object/from16 v10, v56

    move/from16 v11, v57

    move-object/from16 v12, v60

    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "pendingAction":I
    .end local v60    # "action":Ljava/lang/String;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    goto :goto_d

    .line 993
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .restart local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v57    # "pendingAction":I
    .restart local v60    # "action":Ljava/lang/String;
    :catch_5
    move-exception v0

    move-object/from16 v10, v56

    move/from16 v11, v57

    move-object/from16 v12, v60

    const-wide/16 v7, 0x40

    .end local v56    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v57    # "pendingAction":I
    .end local v60    # "action":Ljava/lang/String;
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "pendingAction":I
    .restart local v12    # "action":Ljava/lang/String;
    goto :goto_e

    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pid":I
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

    move/from16 v54, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    move-wide v7, v13

    goto :goto_e

    .line 996
    :catchall_b
    move-exception v0

    move-wide/from16 v52, v7

    move/from16 v54, v11

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
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v54    # "pid":I
    .restart local v55    # "procState":I
    .restart local v59    # "lastOomAdj":I
    :goto_d
    const-wide/16 v7, 0x40

    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 997
    throw v0

    .line 993
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pid":I
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

    move/from16 v54, v11

    move v11, v12

    move-object v12, v15

    move/from16 v59, v21

    move-object/from16 v10, v22

    move/from16 v55, v25

    move-wide/from16 v50, v28

    const-wide/16 v7, 0x40

    .line 996
    .end local v7    # "start":J
    .end local v15    # "action":Ljava/lang/String;
    .end local v21    # "lastOomAdj":I
    .end local v22    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v25    # "procState":I
    .end local v28    # "anonRssBefore":J
    .restart local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .local v11, "pendingAction":I
    .local v12, "action":Ljava/lang/String;
    .restart local v50    # "anonRssBefore":J
    .restart local v52    # "start":J
    .restart local v54    # "pid":I
    .restart local v55    # "procState":I
    .restart local v59    # "lastOomAdj":I
    :goto_e
    nop

    :goto_f
    invoke-static {v7, v8}, Landroid/os/Trace;->traceEnd(J)V

    .line 997
    nop

    .line 998
    nop

    .line 1007
    .end local v3    # "lastCompactAction":I
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "lastCompactTime":J
    .end local v10    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "pendingAction":I
    .end local v12    # "action":Ljava/lang/String;
    .end local v40    # "lastCompactionStats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    .end local v41    # "rssBefore":[J
    .end local v50    # "anonRssBefore":J
    .end local v52    # "start":J
    .end local v54    # "pid":I
    .end local v55    # "procState":I
    .end local v59    # "lastOomAdj":I
    :goto_10
    return-void

    .line 808
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
