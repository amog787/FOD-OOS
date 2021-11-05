.class final Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;
.super Landroid/os/Handler;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FreezeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CachedAppOptimizer;


# direct methods
.method private constructor <init>(Lcom/android/server/am/CachedAppOptimizer;)V
    .locals 0

    .line 1015
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    .line 1016
    iget-object p1, p1, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1017
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p2, "x1"    # Lcom/android/server/am/CachedAppOptimizer$1;

    .line 1014
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    return-void
.end method

.method private freezeProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 12
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 1043
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$1300(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1044
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1045
    .local v1, "pid":I
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v8, v2

    .line 1047
    .local v8, "name":Ljava/lang/String;
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v3, 0x384

    if-lt v2, v3, :cond_5

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    .line 1057
    :cond_0
    if-eqz v1, :cond_4

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 1063
    :cond_1
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1066
    .local v2, "unfreezeTime":J
    const/4 v4, 0x1

    :try_start_1
    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1, v5, v4}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 1068
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iput-wide v5, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    .line 1069
    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    goto :goto_0

    .line 1070
    :catch_0
    move-exception v5

    .line 1071
    .local v5, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to freeze "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    iget-wide v5, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    sub-long v9, v5, v2

    .line 1075
    .local v9, "unfrozenDuration":J
    iget-boolean v5, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    move v11, v5

    .line 1076
    .end local v2    # "unfreezeTime":J
    .local v11, "frozen":Z
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1078
    if-eqz v11, :cond_3

    .line 1079
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v0, :cond_2

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "froze "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_2
    const/16 v0, 0x7574

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    aput-object v8, v2, v4

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1086
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->access$2000(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 1087
    const/16 v2, 0xfe

    const/4 v3, 0x1

    move v4, v1

    move-object v5, v8

    move-wide v6, v9

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;J)V

    .line 1094
    :cond_3
    return-void

    .line 1060
    .end local v9    # "unfrozenDuration":J
    .end local v11    # "frozen":Z
    :cond_4
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1049
    :cond_5
    :goto_2
    :try_start_4
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v2, :cond_6

    .line 1050
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping freeze for process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " curAdj = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", shouldNotFreeze = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->shouldNotFreeze:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    :cond_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1076
    .end local v1    # "pid":I
    .end local v8    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private reportUnfreeze(IILjava/lang/String;)V
    .locals 4
    .param p1, "pid"    # I
    .param p2, "frozenDuration"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .line 1098
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/16 v2, 0x7575

    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1101
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->access$2000(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->this$0:Lcom/android/server/am/CachedAppOptimizer;

    iget v2, v2, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1102
    const/16 v1, 0xfe

    invoke-static {v1, v0, p1, p3, p2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;I)V

    .line 1109
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 1021
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1033
    return-void

    .line 1026
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1027
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1028
    .local v1, "frozenDuration":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 1030
    .local v2, "processName":Ljava/lang/String;
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->reportUnfreeze(IILjava/lang/String;)V

    .line 1031
    goto :goto_0

    .line 1023
    .end local v0    # "pid":I
    .end local v1    # "frozenDuration":I
    .end local v2    # "processName":Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, v0}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;->freezeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1024
    nop

    .line 1035
    :goto_0
    return-void
.end method
