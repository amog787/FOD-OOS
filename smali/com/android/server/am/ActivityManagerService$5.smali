.class Lcom/android/server/am/ActivityManagerService$5;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2216
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method static synthetic lambda$handleMessage$0(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 4
    .param p0, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .line 2237
    iget-wide v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 46
    .param p1, "msg"    # Landroid/os/Message;

    .line 2220
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BackgroundThread:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v3, 0x40

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2221
    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v0, v7, :cond_7

    if-eq v0, v6, :cond_6

    if-eq v0, v5, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 2369
    :pswitch_0
    invoke-static {}, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->getDeviceTemp()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->updateSystemTempreture(I)V

    .line 2370
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PEEK_SYSTEM_TEMP: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->getSystemTempreture()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ActivityManager"

    invoke-static {v5, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBgHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    const-wide/32 v6, 0xea60

    invoke-virtual {v0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2372
    goto/16 :goto_1

    .line 2362
    :pswitch_1
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_POWER:Z

    if-eqz v0, :cond_1

    const-string v0, "ActivityManager"

    const-string v5, "PERSIST_CPU_TRACKER"

    invoke-static {v0, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :cond_1
    invoke-static {}, Lcom/android/internal/os/ExtProcessCpuTrackerInjector;->tryPersistToDisk()V

    .line 2365
    goto :goto_1

    .line 2378
    :pswitch_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/OomAdjusterInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/OomAdjusterInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjusterInjector;->forceUpdateOnlineConfig()V

    .line 2379
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/am/ColdStartInjector;->getInstance(Landroid/content/Context;)Lcom/android/server/am/ColdStartInjector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ColdStartInjector;->forceUpdateOnlineConfig()V

    goto :goto_1

    .line 2342
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    .line 2343
    .local v0, "nesting":I
    if-gtz v0, :cond_4

    .line 2344
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v5, :cond_3

    .line 2345
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSS activity start deferral interval ended; now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_3
    if-gez v0, :cond_5

    .line 2349
    const-string v5, "ActivityManager"

    const-string v6, "Activity start nesting undercount!"

    invoke-static {v5, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v5}, Lcom/android/server/am/ActivityManagerService;->access$900(Lcom/android/server/am/ActivityManagerService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_0

    .line 2353
    :cond_4
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v5, :cond_5

    .line 2354
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Still deferring PSS, nesting="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2358
    .end local v0    # "nesting":I
    :cond_5
    :goto_0
    goto :goto_1

    .line 2338
    :cond_6
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->access$800(Lcom/android/server/am/ActivityManagerService;)V

    .line 2339
    nop

    .line 2384
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2385
    return-void

    .line 2223
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2224
    .local v8, "start":J
    const/4 v10, 0x0

    .line 2225
    .local v10, "memInfo":Lcom/android/internal/util/MemInfoReader;
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v11

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2226
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    const/4 v12, 0x0

    if-eqz v0, :cond_8

    .line 2227
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-boolean v12, v0, Lcom/android/server/am/ActivityManagerService;->mFullPssPending:Z

    .line 2228
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v0

    .end local v10    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .local v0, "memInfo":Lcom/android/internal/util/MemInfoReader;
    goto :goto_2

    .line 2230
    .end local v0    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    .restart local v10    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    :catchall_0
    move-exception v0

    move-wide/from16 v23, v8

    goto/16 :goto_13

    :cond_8
    :goto_2
    :try_start_2
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2231
    const/4 v0, 0x0

    if-eqz v10, :cond_c

    .line 2232
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 2233
    const-wide/16 v13, 0x0

    .line 2235
    .local v13, "nativeTotalPss":J
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v11

    .line 2236
    :try_start_3
    iget-object v15, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    sget-object v6, Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$5$BegFiGFfKLYS7VRmiWluczgOC5k;

    invoke-virtual {v15, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(Lcom/android/internal/os/ProcessCpuTracker$FilterStats;)Ljava/util/List;

    move-result-object v6

    .line 2239
    .local v6, "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2240
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    .line 2241
    .local v15, "N":I
    const/4 v11, 0x0

    move-wide/from16 v28, v13

    .end local v13    # "nativeTotalPss":J
    .local v11, "j":I
    .local v28, "nativeTotalPss":J
    :goto_3
    if-ge v11, v15, :cond_a

    .line 2242
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v13

    .line 2243
    :try_start_4
    iget-object v14, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v14, v7}, Lcom/android/server/am/ActivityManagerService$PidMap;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_9

    .line 2245
    monitor-exit v13

    goto :goto_4

    .line 2247
    :cond_9
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2248
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getPss_:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v13, v13, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v4, v7}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2249
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v7, v0, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v13

    add-long v28, v28, v13

    .line 2250
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 2241
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v7, 0x1

    goto :goto_3

    .line 2247
    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    .line 2252
    .end local v11    # "j":I
    :cond_a
    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 2253
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v7

    :try_start_6
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2254
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v11, :cond_b

    const-string v11, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Collected native and kernel memory in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    sub-long v3, v17, v8

    invoke-virtual {v13, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2254
    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    :cond_b
    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v3

    .line 2257
    .local v3, "cachedKb":J
    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v13

    .line 2258
    .local v13, "freeKb":J
    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v17

    move-wide/from16 v30, v17

    .line 2259
    .local v30, "zramKb":J
    invoke-virtual {v10}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v17

    move-wide/from16 v32, v17

    .line 2260
    .local v32, "kernelKb":J
    const-wide/16 v17, 0x400

    mul-long v34, v3, v17

    mul-long v36, v13, v17

    mul-long v38, v30, v17

    mul-long v40, v32, v17

    mul-long v42, v28, v17

    invoke-static/range {v34 .. v43}, Lcom/android/server/am/EventLogTags;->writeAmMeminfo(JJJJJ)V

    .line 2262
    iget-object v11, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v17, v11

    move-wide/from16 v18, v3

    move-wide/from16 v20, v13

    move-wide/from16 v22, v30

    move-wide/from16 v24, v32

    move-wide/from16 v26, v28

    invoke-virtual/range {v17 .. v27}, Lcom/android/server/am/ProcessStatsService;->addSysMemUsageLocked(JJJJJ)V

    .line 2264
    .end local v3    # "cachedKb":J
    .end local v13    # "freeKb":J
    .end local v30    # "zramKb":J
    .end local v32    # "kernelKb":J
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_5

    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2239
    .end local v6    # "stats":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/ProcessCpuTracker$Stats;>;"
    .end local v15    # "N":I
    .end local v28    # "nativeTotalPss":J
    .local v13, "nativeTotalPss":J
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v11
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 2267
    .end local v13    # "nativeTotalPss":J
    :cond_c
    :goto_5
    const/4 v3, 0x0

    .line 2268
    .local v3, "num":I
    new-array v4, v5, [J

    .line 2273
    .local v4, "tmp":[J
    :goto_6
    const/4 v5, -0x1

    .line 2275
    .local v5, "pid":I
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2276
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-gtz v7, :cond_f

    .line 2277
    :try_start_a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mTestPssMode:Z

    if-nez v0, :cond_d

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v0, :cond_e

    :cond_d
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Collected pss of "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " processes in "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2279
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v8

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "ms"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2277
    invoke-static {v0, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2280
    :cond_e
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2281
    monitor-exit v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2301
    :catchall_4
    move-exception v0

    move-wide/from16 v23, v8

    goto/16 :goto_12

    .line 2283
    :cond_f
    :try_start_b
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPendingPssProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 2284
    .local v7, "proc":Lcom/android/server/am/ProcessRecord;
    iget v11, v7, Lcom/android/server/am/ProcessRecord;->pssProcState:I

    .line 2285
    .local v11, "procState":I
    iget v13, v7, Lcom/android/server/am/ProcessRecord;->pssStatType:I

    move/from16 v41, v13

    .line 2286
    .local v41, "statType":I
    iget-wide v13, v7, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    .line 2287
    .local v13, "lastPssTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 2288
    .local v17, "now":J
    iget-object v15, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    const-wide/16 v19, 0x3e8

    if-eqz v15, :cond_10

    :try_start_c
    iget v15, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v11, v15, :cond_10

    add-long v21, v13, v19

    cmp-long v15, v21, v17

    if-gez v15, :cond_10

    .line 2291
    iget v15, v7, Lcom/android/server/am/ProcessRecord;->pid:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    move v5, v15

    move-wide/from16 v23, v8

    goto :goto_8

    .line 2293
    :cond_10
    :try_start_d
    iget-object v15, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v15}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2294
    sget-boolean v15, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v15, :cond_11

    const-string v15, "ActivityManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipped pss collection of "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": still need "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    add-long v19, v13, v19

    move-object v0, v7

    move-wide/from16 v23, v8

    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "start":J
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    .local v23, "start":J
    sub-long v7, v19, v17

    :try_start_e
    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ms until safe"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v23    # "start":J
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v8    # "start":J
    :cond_11
    move-object v0, v7

    move-wide/from16 v23, v8

    .line 2298
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v8    # "start":J
    .restart local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v23    # "start":J
    :goto_7
    const/4 v7, 0x0

    .line 2299
    .end local v0    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x0

    .end local v5    # "pid":I
    .local v0, "pid":I
    move v5, v0

    .line 2301
    .end local v0    # "pid":I
    .end local v17    # "now":J
    .restart local v5    # "pid":I
    :goto_8
    monitor-exit v6
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2302
    if-eqz v7, :cond_1b

    .line 2303
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v8

    .line 2306
    .local v8, "startTime":J
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v6, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService;->isCameraActiveForUid(I)Z

    move-result v6

    .line 2307
    .local v6, "usingCamera":Z
    if-nez v6, :cond_12

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getPss:"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v17, v8

    const-wide/16 v8, 0x40

    .end local v8    # "startTime":J
    .local v17, "startTime":J
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_9

    .line 2307
    .end local v17    # "startTime":J
    .restart local v8    # "startTime":J
    :cond_12
    move-wide/from16 v17, v8

    .line 2310
    .end local v8    # "startTime":J
    .restart local v17    # "startTime":J
    :goto_9
    const-wide/16 v8, 0x0

    if-eqz v6, :cond_13

    move-wide/from16 v19, v8

    const/4 v0, 0x0

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    invoke-static {v5, v4, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v19

    .line 2311
    .local v19, "pss":J
    :goto_a
    if-nez v6, :cond_14

    .line 2312
    const-wide/16 v25, 0x40

    invoke-static/range {v25 .. v26}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_b

    .line 2311
    :cond_14
    const-wide/16 v25, 0x40

    .line 2314
    :goto_b
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v27

    .line 2315
    .local v27, "endTime":J
    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v12

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2316
    cmp-long v8, v19, v8

    if-eqz v8, :cond_15

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v8, :cond_15

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v8, v11, :cond_15

    iget v8, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v8, v5, :cond_15

    iget-wide v8, v7, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v8, v8, v13

    if-nez v8, :cond_15

    .line 2318
    add-int/lit8 v3, v3, 0x1

    .line 2319
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v8}, Lcom/android/server/am/ProcessList;->commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2320
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$5;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v9, 0x0

    aget-wide v35, v4, v9

    const/4 v15, 0x1

    aget-wide v37, v4, v15

    const/16 v16, 0x2

    aget-wide v39, v4, v16

    sub-long v42, v27, v17

    .line 2321
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v44

    .line 2320
    move-object/from16 v30, v8

    move-object/from16 v31, v7

    move/from16 v32, v11

    move-wide/from16 v33, v19

    invoke-virtual/range {v30 .. v45}, Lcom/android/server/am/ActivityManagerService;->recordPssSampleLocked(Lcom/android/server/am/ProcessRecord;IJJJJIJJ)V

    goto :goto_10

    .line 2316
    :cond_15
    const/4 v9, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x2

    .line 2323
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->procStateMemTracker:Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    invoke-static {v8}, Lcom/android/server/am/ProcessList;->abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V

    .line 2324
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v8, :cond_1a

    const-string v8, "ActivityManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipped pss collection of "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ": "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v9, :cond_16

    const-string v9, "NO_THREAD "

    goto :goto_c

    :cond_16
    const-string v9, ""

    :goto_c
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2326
    if-eqz v6, :cond_17

    const-string v9, "CAMERA "

    goto :goto_d

    :cond_17
    const-string v9, ""

    :goto_d
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2327
    iget v9, v7, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v9, v5, :cond_18

    const-string v9, "PID_CHANGED "

    goto :goto_e

    :cond_18
    const-string v9, ""

    :goto_e
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " initState="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " curState="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v7, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2330
    iget-wide v1, v7, Lcom/android/server/am/ProcessRecord;->lastPssTime:J

    cmp-long v1, v1, v13

    if-eqz v1, :cond_19

    const-string v1, "TIME_CHANGED"

    goto :goto_f

    :cond_19
    const-string v1, ""

    :goto_f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2324
    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    :cond_1a
    :goto_10
    monitor-exit v12
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_11

    :catchall_5
    move-exception v0

    :try_start_10
    monitor-exit v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2302
    .end local v6    # "usingCamera":Z
    .end local v17    # "startTime":J
    .end local v19    # "pss":J
    .end local v27    # "endTime":J
    :cond_1b
    const/4 v15, 0x1

    const/16 v16, 0x2

    const-wide/16 v25, 0x40

    .line 2334
    .end local v5    # "pid":I
    .end local v7    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v11    # "procState":I
    .end local v13    # "lastPssTime":J
    .end local v41    # "statType":I
    :goto_11
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v8, v23

    const/4 v0, 0x0

    const/4 v12, 0x0

    goto/16 :goto_6

    .line 2301
    .end local v23    # "start":J
    .restart local v5    # "pid":I
    .local v8, "start":J
    :catchall_6
    move-exception v0

    move-wide/from16 v23, v8

    .end local v8    # "start":J
    .restart local v23    # "start":J
    :goto_12
    :try_start_11
    monitor-exit v6
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_12

    .line 2230
    .end local v3    # "num":I
    .end local v4    # "tmp":[J
    .end local v5    # "pid":I
    .end local v23    # "start":J
    .restart local v8    # "start":J
    :catchall_8
    move-exception v0

    move-wide/from16 v23, v8

    .end local v8    # "start":J
    .restart local v23    # "start":J
    :goto_13
    :try_start_12
    monitor-exit v11
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_9
    move-exception v0

    goto :goto_13

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
