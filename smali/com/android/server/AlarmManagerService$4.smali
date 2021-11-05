.class Lcom/android/server/AlarmManagerService$4;
.super Landroid/app/IAlarmManager$Stub;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    .line 2287
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Landroid/app/IAlarmManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public currentNetworkTimeMillis()J
    .locals 5

    .line 2409
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    .line 2410
    .local v0, "time":Landroid/util/NtpTrustedTime;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;

    move-result-object v1

    .line 2411
    .local v1, "ntpResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v1, :cond_0

    .line 2412
    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v2

    return-wide v2

    .line 2414
    :cond_0
    new-instance v2, Landroid/os/ParcelableException;

    new-instance v3, Ljava/time/DateTimeException;

    const-string v4, "Missing NTP fix"

    invoke-direct {v3, v4}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2420
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "AlarmManager"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2422
    :cond_0
    array-length v0, p3

    if-lez v0, :cond_1

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2423
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->dumpProto(Ljava/io/FileDescriptor;)V

    goto :goto_0

    .line 2427
    :cond_1
    invoke-static {p2, p3}, Lcom/android/server/OpAlarmAlignmentInjector;->shellCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2428
    return-void

    .line 2434
    :cond_2
    invoke-static {p2, p3}, Lcom/android/server/OpAlarmManagerInjector;->ifHandleCommand(Ljava/io/PrintWriter;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2435
    invoke-static {}, Lcom/android/server/OpAlarmManagerInjector;->ifEnableLogDump()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->localLOGV:Z

    .line 2436
    invoke-static {}, Lcom/android/server/OpAlarmManagerInjector;->ifEnableLogDump()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_BATCH:Z

    .line 2437
    invoke-static {}, Lcom/android/server/OpAlarmManagerInjector;->ifEnableLogDump()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_VALIDATE:Z

    .line 2438
    invoke-static {}, Lcom/android/server/OpAlarmManagerInjector;->ifEnableLogDump()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_ALARM_CLOCK:Z

    .line 2439
    invoke-static {}, Lcom/android/server/OpAlarmManagerInjector;->ifEnableLogDump()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_LISTENER_CALLBACK:Z

    .line 2440
    return-void

    .line 2444
    :cond_3
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    .line 2446
    :goto_0
    return-void
.end method

.method public getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .locals 7
    .param p1, "userId"    # I

    .line 2400
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 2401
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 2400
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "getNextAlarmClock"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 2404
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService;->getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNextWakeFromIdleTime()J
    .locals 2

    .line 2395
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getNextWakeFromIdleTimeImpl()J

    move-result-wide v0

    return-wide v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 2452
    new-instance v0, Lcom/android/server/AlarmManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/AlarmManagerService$ShellCmd;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2453
    return-void
.end method

.method public remove(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .locals 2
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 2384
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 2385
    const-string v0, "AlarmManager"

    const-string/jumbo v1, "remove() with no intent or listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    return-void

    .line 2388
    :cond_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2389
    :try_start_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 2390
    monitor-exit v0

    .line 2391
    return-void

    .line 2390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public set(Ljava/lang/String;IJJJILandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 21
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "triggerAtTime"    # J
    .param p5, "windowLength"    # J
    .param p7, "interval"    # J
    .param p9, "flags"    # I
    .param p10, "operation"    # Landroid/app/PendingIntent;
    .param p11, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p12, "listenerTag"    # Ljava/lang/String;
    .param p13, "workSource"    # Landroid/os/WorkSource;
    .param p14, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2293
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v14, p2

    move-object/from16 v13, p10

    move-object/from16 v12, p14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2297
    .local v11, "callingUid":I
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v11, v15}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 2300
    const-wide/16 v1, 0x0

    cmp-long v3, p7, v1

    if-eqz v3, :cond_1

    .line 2301
    if-nez p11, :cond_0

    goto :goto_0

    .line 2302
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Repeating alarms cannot use AlarmReceivers"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2306
    :cond_1
    :goto_0
    if-eqz p13, :cond_2

    .line 2307
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 2309
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 2307
    const-string v5, "android.permission.UPDATE_DEVICE_STATS"

    const-string v6, "AlarmManager.set"

    invoke-virtual {v3, v5, v4, v11, v6}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 2314
    :cond_2
    and-int/lit8 v3, p9, -0xb

    .line 2319
    .end local p9    # "flags":I
    .local v3, "flags":I
    const/16 v4, 0x3e8

    if-eq v11, v4, :cond_3

    .line 2320
    and-int/lit8 v3, v3, -0x11

    .line 2324
    :cond_3
    cmp-long v1, p5, v1

    if-nez v1, :cond_4

    .line 2325
    or-int/lit8 v3, v3, 0x1

    .line 2330
    :cond_4
    if-eqz v12, :cond_5

    .line 2331
    or-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 2337
    :cond_5
    if-nez p13, :cond_7

    const/16 v1, 0x2710

    if-lt v11, v1, :cond_6

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    iget v1, v1, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    .line 2338
    invoke-static {v11, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2339
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    .line 2340
    invoke-static {v1}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/server/AppStateTracker;->isUidPowerSaveUserWhitelisted(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2341
    :cond_6
    or-int/lit8 v1, v3, 0x8

    .line 2342
    .end local v3    # "flags":I
    .local v1, "flags":I
    and-int/lit8 v3, v1, -0x5

    .line 2347
    .end local v1    # "flags":I
    .restart local v3    # "flags":I
    :cond_7
    :goto_1
    const/4 v1, 0x2

    if-eq v14, v1, :cond_9

    if-nez v14, :cond_8

    goto :goto_2

    :cond_8
    const-string v1, "*alarm*:"

    goto :goto_3

    :cond_9
    :goto_2
    const-string v1, "*walarm*:"

    :goto_3
    move-object v10, v1

    .line 2348
    .local v10, "alarmString":Ljava/lang/String;
    if-eqz v13, :cond_a

    invoke-virtual {v13, v10}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_a
    move-object v1, v10

    :goto_4
    move-object v9, v1

    .line 2349
    .local v9, "lTag":Ljava/lang/String;
    invoke-static {v15, v3, v12, v9}, Lcom/android/server/OpAlarmManagerInjector;->updateFlag(Ljava/lang/String;ILandroid/app/AlarmManager$AlarmClockInfo;Ljava/lang/String;)I

    move-result v17

    .line 2352
    .end local v3    # "flags":I
    .local v17, "flags":I
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v18, v9

    .end local v9    # "lTag":Ljava/lang/String;
    .local v18, "lTag":Ljava/lang/String;
    move-object/from16 v9, p10

    move-object/from16 v19, v10

    .end local v10    # "alarmString":Ljava/lang/String;
    .local v19, "alarmString":Ljava/lang/String;
    move-object/from16 v10, p11

    move/from16 v20, v11

    .end local v11    # "callingUid":I
    .local v20, "callingUid":I
    move-object/from16 v11, p12

    move/from16 v12, v17

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move/from16 v15, v20

    move-object/from16 v16, p1

    invoke-virtual/range {v1 .. v16}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 2354
    return-void
.end method

.method public setTime(J)Z
    .locals 3
    .param p1, "millis"    # J

    .line 2358
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME"

    const-string/jumbo v2, "setTime"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2363
    invoke-static {p1, p2}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doCleanAllData(J)V

    .line 2365
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AlarmManagerService;->setTimeImpl(J)Z

    move-result v0

    return v0
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 3
    .param p1, "tz"    # Ljava/lang/String;

    .line 2370
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.SET_TIME_ZONE"

    const-string/jumbo v2, "setTimeZone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2374
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2376
    .local v0, "oldId":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$4;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2378
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    nop

    .line 2380
    return-void

    .line 2378
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2379
    throw v2
.end method
