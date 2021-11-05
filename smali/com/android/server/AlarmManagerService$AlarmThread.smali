.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field private mFalseWakeups:I

.field private mWtfThreshold:I

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0

    .line 4275
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4276
    const-string p1, "AlarmManager"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 4277
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4278
    const/16 p1, 0x64

    iput p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    .line 4279
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 4283
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 4287
    .local v2, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :goto_0
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->waitForAlarm()I

    move-result v3

    .line 4288
    .local v3, "result":I
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v10

    .line 4289
    .local v10, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v12

    .line 4290
    .local v12, "nowELAPSED":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4291
    :try_start_0
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->access$2402(Lcom/android/server/AlarmManagerService;J)J

    .line 4292
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 4293
    if-nez v3, :cond_0

    .line 4294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "waitForAlarm returned 0, nowRTC = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", nowElapsed = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AlarmManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4297
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4299
    const/high16 v0, 0x10000

    and-int v4, v3, v0

    if-eqz v4, :cond_3

    .line 4304
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 4305
    :try_start_1
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v5, v5, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4306
    .local v5, "lastTimeChangeClockTime":J
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v7, v7, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    sub-long v7, v12, v7

    add-long/2addr v7, v5

    .line 4308
    .local v7, "expectedClockTime":J
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4309
    const-wide/16 v14, 0x0

    cmp-long v4, v5, v14

    if-eqz v4, :cond_1

    const-wide/16 v14, 0x3e8

    sub-long v16, v7, v14

    cmp-long v4, v10, v16

    if-ltz v4, :cond_1

    add-long/2addr v14, v7

    cmp-long v4, v10, v14

    if-lez v4, :cond_3

    .line 4313
    :cond_1
    sget-boolean v4, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    if-eqz v4, :cond_2

    .line 4314
    const-string v4, "AlarmManager"

    const-string v9, "Time changed notification from kernel; rebatching"

    invoke-static {v4, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4317
    :cond_2
    const/16 v4, 0x2d

    invoke-static {v4, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    .line 4318
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v4, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    const/4 v14, 0x0

    invoke-virtual {v4, v14, v9}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4319
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v4, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    invoke-virtual {v4, v9, v14}, Lcom/android/server/AlarmManagerService;->removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 4320
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarms()V

    .line 4321
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 4322
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 4323
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v9, v4, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 4324
    :try_start_2
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v14, v4, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    add-int/lit8 v14, v14, 0x1

    iput v14, v4, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    .line 4325
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v10, v4, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    .line 4326
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v12, v4, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    .line 4327
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4328
    new-instance v4, Landroid/content/Intent;

    const-string v9, "android.intent.action.TIME_SET"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4329
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v9, 0x35200000

    invoke-virtual {v4, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4337
    iget-object v9, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v9

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v4, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 4341
    or-int/lit8 v3, v3, 0x5

    move v14, v3

    goto :goto_1

    .line 4327
    .end local v4    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 4308
    .end local v5    # "lastTimeChangeClockTime":J
    .end local v7    # "expectedClockTime":J
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 4345
    :cond_3
    move v14, v3

    .end local v3    # "result":I
    .local v14, "result":I
    :goto_1
    if-eq v14, v0, :cond_11

    .line 4348
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4349
    :try_start_5
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    if-eqz v0, :cond_4

    const-string v0, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Checking for alarms... rtc="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", elapsed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4353
    :cond_4
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    if-eqz v0, :cond_8

    .line 4354
    and-int/lit8 v0, v14, 0x5

    if-eqz v0, :cond_8

    .line 4355
    const-wide/32 v4, 0x5265c00

    sub-long v15, v10, v4

    .line 4356
    .local v15, "newEarliest":J
    const/4 v0, 0x0

    .line 4357
    .local v0, "n":I
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 4358
    .local v5, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    iget-wide v6, v5, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    cmp-long v6, v6, v15

    if-lez v6, :cond_5

    goto :goto_3

    .line 4359
    :cond_5
    nop

    .end local v5    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    add-int/lit8 v0, v0, 0x1

    .line 4360
    goto :goto_2

    .line 4361
    :cond_6
    :goto_3
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    if-ge v4, v0, :cond_7

    .line 4362
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 4361
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 4365
    .end local v4    # "i":I
    :cond_7
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    move-wide v6, v12

    move-wide v8, v10

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/AlarmManagerService;->recordWakeupAlarms(Ljava/util/ArrayList;JJ)V

    .line 4369
    .end local v0    # "n":I
    .end local v15    # "newEarliest":J
    :cond_8
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v0, v12, v13}, Lcom/android/server/AlarmManagerService;->access$2502(Lcom/android/server/AlarmManagerService;J)J

    .line 4370
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, v2, v12, v13}, Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;J)Z

    move-result v0

    .line 4371
    .local v0, "hasWakeup":Z
    if-nez v0, :cond_a

    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v12, v13}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4374
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_9

    .line 4375
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v12, v4, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 4376
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 4377
    invoke-virtual {v5, v12, v13}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3

    mul-long/2addr v5, v7

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    add-long/2addr v5, v12

    iput-wide v5, v4, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 4379
    :cond_9
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4380
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget v5, v4, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 4381
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4382
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v4}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)V

    goto/16 :goto_7

    .line 4388
    :cond_a
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_c

    .line 4389
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v5, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4390
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 4391
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v2, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4392
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v4, v12, v4

    .line 4393
    .local v4, "thisDelayTime":J
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v7, v6, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v7, v4

    iput-wide v7, v6, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 4394
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v6, v6, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v6, v6, v4

    if-gez v6, :cond_b

    .line 4395
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iput-wide v4, v6, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 4397
    :cond_b
    iget-object v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v6, v6, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 4399
    .end local v4    # "thisDelayTime":J
    :cond_c
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-wide v4, v4, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    cmp-long v4, v4, v12

    if-eqz v4, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 4400
    iget v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    iget v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    if-lt v4, v5, :cond_e

    .line 4401
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Too many ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") false wakeups, nowElapsed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 4403
    iget v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    const v5, 0x186a0

    if-ge v4, v5, :cond_d

    .line 4404
    iget v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    mul-int/lit8 v4, v4, 0xa

    iput v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mWtfThreshold:I

    goto :goto_5

    .line 4406
    :cond_d
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->mFalseWakeups:I

    .line 4410
    :cond_e
    :goto_5
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 4412
    .local v4, "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_10

    .line 4413
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4414
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v7, v6}, Lcom/android/server/AlarmManagerService;->access$2700(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 4415
    iget-object v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v8, v6, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 4416
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 4415
    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 4412
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 4419
    .end local v5    # "i":I
    :cond_10
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v2, v12, v13}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 4420
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/AlarmManagerService;->reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z

    .line 4421
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4422
    iget-object v5, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$2600(Lcom/android/server/AlarmManagerService;)V

    .line 4424
    .end local v0    # "hasWakeup":Z
    .end local v4    # "triggerPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :goto_7
    monitor-exit v3

    goto :goto_8

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 4429
    :cond_11
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4430
    :try_start_6
    iget-object v0, v1, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 4431
    monitor-exit v5

    .line 4433
    .end local v10    # "nowRTC":J
    .end local v12    # "nowELAPSED":J
    .end local v14    # "result":I
    :goto_8
    goto/16 :goto_0

    .line 4431
    .restart local v10    # "nowRTC":J
    .restart local v12    # "nowELAPSED":J
    .restart local v14    # "result":I
    :catchall_3
    move-exception v0

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v0

    .line 4292
    .end local v14    # "result":I
    .restart local v3    # "result":I
    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v0
.end method
