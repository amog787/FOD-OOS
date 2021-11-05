.class Lcom/android/server/am/BatteryExternalStatsWorker$1;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BatteryExternalStatsWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 332
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 342
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I

    move-result v1

    .line 344
    .local v1, "updateFlags":I
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "reason":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    goto :goto_0

    :cond_0
    sget-object v2, Llibcore/util/EmptyArray;->INT:[I

    :goto_0
    move-object v8, v2

    .line 346
    .local v8, "uidsToRemove":[I
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v5

    .line 347
    .local v5, "onBattery":Z
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v6

    .line 348
    .local v6, "onBatteryScreenOff":Z
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z

    move-result v7

    .line 349
    .local v7, "useLatestStates":Z
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v9, 0x0

    invoke-static {v2, v9}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I

    .line 350
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/IntArray;->clear()V

    .line 352
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;

    .line 353
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z

    .line 354
    and-int/lit8 v2, v1, 0x1f

    if-eqz v2, :cond_1

    .line 355
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 357
    :cond_1
    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_2

    .line 358
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelCpuSyncDueToWakelockChange()V

    .line 360
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 363
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 368
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    move v4, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 374
    nop

    .line 375
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 377
    and-int/lit8 v0, v1, 0x1

    if-eqz v0, :cond_3

    .line 378
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->copyFromAllUidsCpuTimes()V

    .line 382
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 383
    :try_start_5
    array-length v2, v8

    move v4, v9

    :goto_1
    if-ge v4, v2, :cond_4

    aget v10, v8, v4

    .line 384
    .local v10, "uid":I
    const/16 v11, 0x2b

    const/4 v12, -0x1

    invoke-static {v11, v12, v10, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 386
    iget-object v11, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v11}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/android/internal/os/BatteryStatsImpl;->removeIsolatedUidLocked(I)V

    .line 383
    .end local v10    # "uid":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 388
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->clearPendingRemovedUids()V

    .line 389
    monitor-exit v0

    .line 392
    goto :goto_2

    .line 389
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v1    # "updateFlags":I
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "useLatestStates":Z
    .end local v8    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 371
    .restart local v1    # "updateFlags":I
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v5    # "onBattery":Z
    .restart local v6    # "onBatteryScreenOff":Z
    .restart local v7    # "useLatestStates":Z
    .restart local v8    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_1
    move-exception v2

    .line 374
    nop

    .end local v1    # "updateFlags":I
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "useLatestStates":Z
    .end local v8    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_7
    throw v2

    .line 375
    .restart local v1    # "updateFlags":I
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v5    # "onBattery":Z
    .restart local v6    # "onBatteryScreenOff":Z
    .restart local v7    # "useLatestStates":Z
    .restart local v8    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catchall_2
    move-exception v2

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .end local v1    # "updateFlags":I
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "useLatestStates":Z
    .end local v8    # "uidsToRemove":[I
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :try_start_8
    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 390
    .restart local v1    # "updateFlags":I
    .restart local v3    # "reason":Ljava/lang/String;
    .restart local v5    # "onBattery":Z
    .restart local v6    # "onBatteryScreenOff":Z
    .restart local v7    # "useLatestStates":Z
    .restart local v8    # "uidsToRemove":[I
    .restart local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker$1;
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "BatteryExternalStatsWorker"

    const-string v4, "Error updating external stats: "

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    monitor-enter v2

    .line 395
    :try_start_9
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker$1;->this$0:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    invoke-static {v0, v9, v10}, Lcom/android/server/am/BatteryExternalStatsWorker;->access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J

    .line 396
    monitor-exit v2

    .line 397
    return-void

    .line 396
    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    .line 360
    .end local v1    # "updateFlags":I
    .end local v3    # "reason":Ljava/lang/String;
    .end local v5    # "onBattery":Z
    .end local v6    # "onBatteryScreenOff":Z
    .end local v7    # "useLatestStates":Z
    .end local v8    # "uidsToRemove":[I
    :catchall_4
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1
.end method
