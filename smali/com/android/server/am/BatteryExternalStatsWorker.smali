.class Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final RUN_AGING:Z

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"


# instance fields
.field private mBatteryLevelSync:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentReason:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mLastCollectionTimeStamp:J

.field private mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

.field private mOnBattery:Z

.field private mOnBatteryScreenOff:Z

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;

.field private final mUidsToRemove:Landroid/util/IntArray;

.field private mUpdateFlags:I

.field private mUseLatestStates:Z

.field private mWakelockChangesUpdate:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    const-string/jumbo v0, "sys.debug.watchdog"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/BatteryExternalStatsWorker;->RUN_AGING:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 144
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;

    .line 81
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 96
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 99
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 102
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 111
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 114
    new-instance v2, Landroid/util/IntArray;

    invoke-direct {v2}, Landroid/util/IntArray;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    .line 123
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 125
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 128
    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 133
    new-instance v1, Landroid/os/connectivity/WifiActivityEnergyInfo;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v14}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJ)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 332
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 400
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 145
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    .line 146
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BatteryExternalStatsWorker;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/am/BatteryExternalStatsWorker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/BatteryExternalStatsWorker;)Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/server/am/BatteryExternalStatsWorker;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # J

    .line 62
    iput-wide p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/server/am/BatteryExternalStatsWorker;)Landroid/util/IntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/BatteryExternalStatsWorker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/BatteryExternalStatsWorker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Z

    .line 62
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/util/concurrent/Future;)Ljava/util/concurrent/Future;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/util/concurrent/Future;

    .line 62
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/am/BatteryExternalStatsWorker;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    invoke-direct {p0}, Lcom/android/server/am/BatteryExternalStatsWorker;->cancelSyncDueToBatteryLevelChangeLocked()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/BatteryExternalStatsWorker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 62
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/BatteryExternalStatsWorker;Ljava/lang/String;IZZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BatteryExternalStatsWorker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z

    .line 62
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/BatteryExternalStatsWorker;->updateExternalStatsLocked(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method private static awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;
    .locals 4
    .param p0, "receiver"    # Landroid/os/SynchronousResultReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/SynchronousResultReceiver;",
            ")TT;"
        }
    .end annotation

    .line 551
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 552
    return-object v0

    .line 556
    :cond_0
    const-wide/16 v1, 0x7d0

    .line 557
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    .line 558
    .local v1, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_1

    .line 560
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 562
    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    .local v2, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v2, :cond_1

    .line 565
    return-object v2

    .line 570
    .end local v1    # "result":Landroid/os/SynchronousResultReceiver$Result;
    .end local v2    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1
    goto :goto_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "timeout reading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " stats"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BatteryExternalStatsWorker"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    return-object v0
.end method

.method private cancelSyncDueToBatteryLevelChangeLocked()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 251
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 254
    :cond_0
    return-void
.end method

.method private extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;
    .locals 51
    .param p1, "latest"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 576
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 577
    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 578
    .local v1, "timePeriodMs":J
    iget-object v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v3}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v3

    .line 579
    .local v3, "lastScanMs":J
    iget-object v5, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v5}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v5

    .line 580
    .local v5, "lastIdleMs":J
    iget-object v7, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v7}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v7

    .line 581
    .local v7, "lastTxMs":J
    iget-object v9, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v9}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v9

    .line 582
    .local v9, "lastRxMs":J
    iget-object v11, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    invoke-virtual {v11}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v11

    .line 584
    .local v11, "lastEnergy":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getTimeSinceBootMillis()J

    move-result-wide v27

    .line 585
    .local v27, "deltaTimeSinceBootMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getStackState()I

    move-result v29

    .line 592
    .local v29, "deltaStackState":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v13

    sub-long v30, v13, v7

    .line 593
    .local v30, "txTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v13

    sub-long v32, v13, v9

    .line 594
    .local v32, "rxTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v13

    sub-long v14, v13, v5

    .line 595
    .local v14, "idleTimeMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v16

    sub-long v34, v16, v3

    .line 598
    .local v34, "scanTimeMs":J
    move-wide/from16 v36, v3

    .end local v3    # "lastScanMs":J
    .local v36, "lastScanMs":J
    const-wide/16 v3, 0x0

    cmp-long v13, v30, v3

    const-string v3, "BatteryExternalStatsWorker"

    const-wide/16 v18, 0x2ee

    if-ltz v13, :cond_3

    const-wide/16 v16, 0x0

    cmp-long v4, v32, v16

    if-ltz v4, :cond_3

    cmp-long v4, v34, v16

    if-ltz v4, :cond_3

    cmp-long v4, v14, v16

    if-gez v4, :cond_0

    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    move-wide v6, v14

    goto/16 :goto_2

    .line 620
    :cond_0
    move-wide/from16 v20, v14

    .end local v14    # "idleTimeMs":J
    .local v20, "idleTimeMs":J
    add-long v13, v30, v32

    .line 622
    .local v13, "totalActiveTimeMs":J
    cmp-long v4, v13, v1

    if-lez v4, :cond_2

    .line 624
    const-wide/16 v22, 0x0

    .line 625
    .local v22, "maxExpectedIdleTimeMs":J
    add-long v18, v1, v18

    cmp-long v4, v13, v18

    if-lez v4, :cond_1

    .line 626
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string v15, "Total Active time "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    invoke-static {v13, v14, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 629
    const-string v15, " is longer than sample period "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    invoke-static {v1, v2, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 631
    const-string v15, ".\n"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v15, "Previous WiFi snapshot: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "idle="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    invoke-static {v5, v6, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 634
    move-wide/from16 v38, v5

    .end local v5    # "lastIdleMs":J
    .local v38, "lastIdleMs":J
    const-string v5, " rx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-static {v9, v10, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 636
    const-string v6, " tx="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-static {v7, v8, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 638
    move-wide/from16 v40, v7

    .end local v7    # "lastTxMs":J
    .local v40, "lastTxMs":J
    const-string v7, " e="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 639
    const-string v8, "\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    const-string v8, "Current WiFi snapshot: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    move-wide/from16 v42, v9

    .end local v9    # "lastRxMs":J
    .local v42, "lastRxMs":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 642
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    invoke-static {v8, v9, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 644
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 646
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 625
    .end local v38    # "lastIdleMs":J
    .end local v40    # "lastTxMs":J
    .end local v42    # "lastRxMs":J
    .restart local v5    # "lastIdleMs":J
    .restart local v7    # "lastTxMs":J
    .restart local v9    # "lastRxMs":J
    :cond_1
    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    .line 653
    .end local v5    # "lastIdleMs":J
    .end local v7    # "lastTxMs":J
    .end local v9    # "lastRxMs":J
    .restart local v38    # "lastIdleMs":J
    .restart local v40    # "lastTxMs":J
    .restart local v42    # "lastRxMs":J
    :goto_0
    move-wide/from16 v4, v22

    goto :goto_1

    .line 650
    .end local v22    # "maxExpectedIdleTimeMs":J
    .end local v38    # "lastIdleMs":J
    .end local v40    # "lastTxMs":J
    .end local v42    # "lastRxMs":J
    .restart local v5    # "lastIdleMs":J
    .restart local v7    # "lastTxMs":J
    .restart local v9    # "lastRxMs":J
    :cond_2
    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    .end local v5    # "lastIdleMs":J
    .end local v7    # "lastTxMs":J
    .end local v9    # "lastRxMs":J
    .restart local v38    # "lastIdleMs":J
    .restart local v40    # "lastTxMs":J
    .restart local v42    # "lastRxMs":J
    sub-long v22, v1, v13

    move-wide/from16 v4, v22

    .line 653
    .local v4, "maxExpectedIdleTimeMs":J
    :goto_1
    move-wide/from16 v6, v30

    .line 654
    .local v6, "deltaControllerTxDurationMillis":J
    move-wide/from16 v8, v32

    .line 655
    .local v8, "deltaControllerRxDurationMillis":J
    move-wide/from16 v18, v34

    .line 661
    .local v18, "deltaControllerScanDurationMillis":J
    nop

    .line 662
    move-wide/from16 v22, v6

    move-wide v15, v8

    move-wide/from16 v6, v20

    const-wide/16 v8, 0x0

    move-wide/from16 v20, v13

    .end local v8    # "deltaControllerRxDurationMillis":J
    .end local v13    # "totalActiveTimeMs":J
    .local v6, "idleTimeMs":J
    .local v15, "deltaControllerRxDurationMillis":J
    .local v20, "totalActiveTimeMs":J
    .local v22, "deltaControllerTxDurationMillis":J
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v13

    .line 663
    .local v13, "deltaControllerIdleDurationMillis":J
    nop

    .line 664
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v24

    move-wide/from16 v44, v4

    .end local v4    # "maxExpectedIdleTimeMs":J
    .local v44, "maxExpectedIdleTimeMs":J
    sub-long v4, v24, v11

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 665
    .local v4, "deltaControllerEnergyUsedMicroJoules":J
    const/4 v8, 0x0

    move v10, v8

    move-wide/from16 v46, v13

    move-wide/from16 v44, v15

    move-wide/from16 v48, v18

    move-wide/from16 v8, v22

    .local v8, "wasReset":Z
    goto :goto_4

    .line 598
    .end local v4    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v6    # "idleTimeMs":J
    .end local v8    # "wasReset":Z
    .end local v13    # "deltaControllerIdleDurationMillis":J
    .end local v15    # "deltaControllerRxDurationMillis":J
    .end local v18    # "deltaControllerScanDurationMillis":J
    .end local v20    # "totalActiveTimeMs":J
    .end local v22    # "deltaControllerTxDurationMillis":J
    .end local v38    # "lastIdleMs":J
    .end local v40    # "lastTxMs":J
    .end local v42    # "lastRxMs":J
    .end local v44    # "maxExpectedIdleTimeMs":J
    .restart local v5    # "lastIdleMs":J
    .restart local v7    # "lastTxMs":J
    .restart local v9    # "lastRxMs":J
    .restart local v14    # "idleTimeMs":J
    :cond_3
    move-wide/from16 v38, v5

    move-wide/from16 v40, v7

    move-wide/from16 v42, v9

    move-wide v6, v14

    .line 602
    .end local v5    # "lastIdleMs":J
    .end local v7    # "lastTxMs":J
    .end local v9    # "lastRxMs":J
    .end local v14    # "idleTimeMs":J
    .restart local v6    # "idleTimeMs":J
    .restart local v38    # "lastIdleMs":J
    .restart local v40    # "lastTxMs":J
    .restart local v42    # "lastRxMs":J
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v4

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 604
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 605
    .local v4, "totalOnTimeMs":J
    add-long v18, v1, v18

    cmp-long v8, v4, v18

    if-gtz v8, :cond_4

    .line 606
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerEnergyUsedMicroJoules()J

    move-result-wide v8

    .line 607
    .local v8, "deltaControllerEnergyUsedMicroJoules":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerRxDurationMillis()J

    move-result-wide v13

    .line 608
    .local v13, "deltaControllerRxDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerTxDurationMillis()J

    move-result-wide v15

    .line 609
    .local v15, "deltaControllerTxDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerIdleDurationMillis()J

    move-result-wide v17

    .line 610
    .local v17, "deltaControllerIdleDurationMillis":J
    invoke-virtual/range {p1 .. p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->getControllerScanDurationMillis()J

    move-result-wide v19

    .local v19, "deltaControllerScanDurationMillis":J
    goto :goto_3

    .line 612
    .end local v8    # "deltaControllerEnergyUsedMicroJoules":J
    .end local v13    # "deltaControllerRxDurationMillis":J
    .end local v15    # "deltaControllerTxDurationMillis":J
    .end local v17    # "deltaControllerIdleDurationMillis":J
    .end local v19    # "deltaControllerScanDurationMillis":J
    :cond_4
    const-wide/16 v8, 0x0

    .line 613
    .restart local v8    # "deltaControllerEnergyUsedMicroJoules":J
    const-wide/16 v13, 0x0

    .line 614
    .restart local v13    # "deltaControllerRxDurationMillis":J
    const-wide/16 v15, 0x0

    .line 615
    .restart local v15    # "deltaControllerTxDurationMillis":J
    const-wide/16 v17, 0x0

    .line 616
    .restart local v17    # "deltaControllerIdleDurationMillis":J
    const-wide/16 v19, 0x0

    .line 618
    .restart local v19    # "deltaControllerScanDurationMillis":J
    :goto_3
    const/4 v4, 0x1

    .line 619
    .local v4, "wasReset":Z
    move v10, v4

    move-wide v4, v8

    move-wide/from16 v44, v13

    move-wide v8, v15

    move-wide/from16 v46, v17

    move-wide/from16 v48, v19

    .line 668
    .end local v13    # "deltaControllerRxDurationMillis":J
    .end local v15    # "deltaControllerTxDurationMillis":J
    .end local v17    # "deltaControllerIdleDurationMillis":J
    .end local v19    # "deltaControllerScanDurationMillis":J
    .local v4, "deltaControllerEnergyUsedMicroJoules":J
    .local v8, "deltaControllerTxDurationMillis":J
    .local v10, "wasReset":Z
    .local v44, "deltaControllerRxDurationMillis":J
    .local v46, "deltaControllerIdleDurationMillis":J
    .local v48, "deltaControllerScanDurationMillis":J
    :goto_4
    move-object/from16 v14, p1

    iput-object v14, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 669
    new-instance v50, Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-object/from16 v13, v50

    move-wide/from16 v14, v27

    move/from16 v16, v29

    move-wide/from16 v17, v8

    move-wide/from16 v19, v44

    move-wide/from16 v21, v48

    move-wide/from16 v23, v46

    move-wide/from16 v25, v4

    invoke-direct/range {v13 .. v26}, Landroid/os/connectivity/WifiActivityEnergyInfo;-><init>(JIJJJJJ)V

    .line 677
    .local v13, "delta":Landroid/os/connectivity/WifiActivityEnergyInfo;
    if-eqz v10, :cond_5

    .line 678
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v3, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    :cond_5
    return-object v13
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 85
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 86
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 87
    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ddVY5lmqswnSjXppAxPTOHbuzzQ;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ddVY5lmqswnSjXppAxPTOHbuzzQ;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "batterystats-worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 89
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 90
    return-object v0
.end method

.method static synthetic lambda$updateExternalStatsLocked$5(Landroid/os/SynchronousResultReceiver;Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2
    .param p0, "tempWifiReceiver"    # Landroid/os/SynchronousResultReceiver;
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 449
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "controller_activity"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 451
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/os/SynchronousResultReceiver;->send(ILandroid/os/Bundle;)V

    .line 452
    return-void
.end method

.method private scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 2
    .param p2, "syncRunnable"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;",
            "Ljava/lang/Runnable;",
            "J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 269
    .local p1, "lastScheduledSync":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 273
    :cond_0
    if-eqz p1, :cond_2

    .line 276
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 277
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 279
    :cond_1
    return-object p1

    .line 283
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p2, p3, p4, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    return-object v0
.end method

.method private scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    .line 318
    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 319
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 322
    :cond_1
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 323
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method private updateExternalStatsLocked(Ljava/lang/String;IZZZ)V
    .locals 18
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "updateFlags"    # I
    .param p3, "onBattery"    # Z
    .param p4, "onBatteryScreenOff"    # Z
    .param p5, "useLatestStates"    # Z

    .line 413
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 414
    .local v0, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v2, 0x0

    .line 415
    .local v2, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v3, 0x0

    .line 416
    .local v3, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v4, 0x0

    .line 421
    .local v4, "railUpdated":Z
    sget-boolean v5, Lcom/android/server/am/BatteryExternalStatsWorker;->RUN_AGING:Z

    if-eqz v5, :cond_0

    .line 422
    return-void

    .line 426
    :cond_0
    and-int/lit8 v5, p2, 0x2

    if-eqz v5, :cond_3

    .line 428
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v5, :cond_1

    const-string/jumbo v5, "wifi"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 433
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    const-class v6, Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    iput-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 437
    :cond_1
    iget-object v5, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 438
    new-instance v5, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v6, "wifi"

    invoke-direct {v5, v6}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    .line 439
    .local v5, "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v7, Lcom/android/server/am/BatteryExternalStatsWorker$3;

    invoke-direct {v7, v1}, Lcom/android/server/am/BatteryExternalStatsWorker$3;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    new-instance v8, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$MJXTdtPzBwRCdTjCDCE77VXPHBk;

    invoke-direct {v8, v5}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$MJXTdtPzBwRCdTjCDCE77VXPHBk;-><init>(Landroid/os/SynchronousResultReceiver;)V

    invoke-virtual {v6, v7, v8}, Landroid/net/wifi/WifiManager;->getWifiActivityEnergyInfoAsync(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$OnWifiActivityEnergyInfoListener;)V

    .line 454
    move-object v0, v5

    goto :goto_0

    .line 456
    .end local v5    # "tempWifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_2
    move-object v5, v0

    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .local v5, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_0
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 457
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 458
    monitor-exit v6

    .line 459
    const/4 v4, 0x1

    goto :goto_1

    .line 458
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 426
    .end local v5    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_3
    move-object v5, v0

    .line 462
    .end local v0    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v5    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 464
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 465
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    .line 466
    new-instance v6, Landroid/os/SynchronousResultReceiver;

    const-string v7, "bluetooth"

    invoke-direct {v6, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v2, v6

    .line 467
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 471
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_4
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_7

    .line 473
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_5

    .line 474
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    const-class v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 477
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    .line 478
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v6, "telephony"

    invoke-direct {v0, v6}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 479
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 481
    :cond_6
    if-nez v4, :cond_7

    .line 482
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 483
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 484
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 488
    :cond_7
    :goto_2
    invoke-static {v5}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 489
    .local v6, "wifiInfo":Landroid/os/connectivity/WifiActivityEnergyInfo;
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 490
    .local v7, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-static {v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/telephony/ModemActivityInfo;

    .line 492
    .local v8, "modemInfo":Landroid/telephony/ModemActivityInfo;
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v9

    .line 493
    :try_start_2
    iget-object v10, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/16 v15, 0xe

    const/16 v17, 0x0

    .line 493
    move-object/from16 v16, p1

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 499
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    .line 500
    if-eqz p5, :cond_8

    .line 501
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move v10, v0

    .line 502
    .end local p3    # "onBattery":Z
    .local v10, "onBattery":Z
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v11, v0

    .end local p4    # "onBatteryScreenOff":Z
    .local v0, "onBatteryScreenOff":Z
    goto :goto_3

    .line 523
    .end local v0    # "onBatteryScreenOff":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_2
    move-exception v0

    move/from16 v11, p4

    goto/16 :goto_8

    .line 500
    .end local v10    # "onBattery":Z
    .restart local p3    # "onBattery":Z
    :cond_8
    move/from16 v10, p3

    move/from16 v11, p4

    .line 504
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v10    # "onBattery":Z
    .local v11, "onBatteryScreenOff":Z
    :goto_3
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(ZZ)V

    goto :goto_4

    .line 499
    .end local v10    # "onBattery":Z
    .end local v11    # "onBatteryScreenOff":Z
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :cond_9
    move/from16 v10, p3

    move/from16 v11, p4

    .line 507
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v10    # "onBattery":Z
    .restart local v11    # "onBatteryScreenOff":Z
    :goto_4
    and-int/lit8 v0, p2, 0x1f

    if-eqz v0, :cond_a

    .line 508
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 509
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked()V

    .line 512
    :cond_a
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_b

    .line 513
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked()V

    .line 516
    :cond_b
    if-eqz v7, :cond_d

    .line 517
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 518
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    goto :goto_5

    .line 520
    :cond_c
    const-string v0, "BatteryExternalStatsWorker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "bluetooth info is invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    :cond_d
    :goto_5
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 528
    if-eqz v6, :cond_f

    .line 529
    invoke-virtual {v6}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 530
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/os/connectivity/WifiActivityEnergyInfo;)Landroid/os/connectivity/WifiActivityEnergyInfo;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    goto :goto_6

    .line 532
    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "wifi info is invalid: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "BatteryExternalStatsWorker"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_f
    :goto_6
    if-eqz v8, :cond_11

    .line 537
    invoke-virtual {v8}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 538
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v8}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    goto :goto_7

    .line 540
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "modem info is invalid: "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v9, "BatteryExternalStatsWorker"

    invoke-static {v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_11
    :goto_7
    return-void

    .line 523
    .end local v10    # "onBattery":Z
    .end local v11    # "onBatteryScreenOff":Z
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_3
    move-exception v0

    move/from16 v10, p3

    move/from16 v11, p4

    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v10    # "onBattery":Z
    .restart local v11    # "onBatteryScreenOff":Z
    :goto_8
    :try_start_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_8
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .locals 2

    .line 230
    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 233
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 235
    :cond_0
    monitor-exit p0

    .line 236
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastCollectionTimeStamp()J
    .locals 2

    .line 327
    monitor-enter p0

    .line 328
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$2$BatteryExternalStatsWorker()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$3$BatteryExternalStatsWorker()V
    .locals 2

    .line 220
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 221
    new-instance v0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 222
    return-void
.end method

.method public synthetic lambda$scheduleSyncDueToBatteryLevelChange$4$BatteryExternalStatsWorker()V
    .locals 2

    .line 242
    const-string v0, "battery-level"

    const/16 v1, 0x1f

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    return-void
.end method

.method public scheduleCopyFromAllUidsCpuTimes(ZZ)Ljava/util/concurrent/Future;
    .locals 5
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 189
    monitor-exit v0

    return-object v2

    .line 191
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    monitor-enter p0

    .line 193
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;->INSTANCE:Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 196
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 194
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 196
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 194
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 198
    :cond_1
    monitor-exit p0

    .line 199
    return-object v2

    .line 198
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 191
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public declared-synchronized scheduleCpuSyncDueToRemovedUid(I)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 157
    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 155
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    .end local p1    # "uid":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleCpuSyncDueToScreenStateChange(ZZ)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 205
    monitor-enter p0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 207
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 208
    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 209
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 211
    :cond_1
    const-string/jumbo v0, "screen-state"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized scheduleCpuSyncDueToSettingChange()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    const-string/jumbo v0, "setting-change"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 162
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public scheduleCpuSyncDueToWakelockChange(J)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 224
    monitor-exit p0

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleReadProcStateCpuTimes(ZZJ)Ljava/util/concurrent/Future;
    .locals 5
    .param p1, "onBattery"    # Z
    .param p2, "onBatteryScreenOff"    # Z
    .param p3, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZJ)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 170
    monitor-exit v0

    return-object v2

    .line 172
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    monitor-enter p0

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY;->INSTANCE:Lcom/android/server/am/-$$Lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 177
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 175
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 177
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 175
    invoke-interface {v0, v1, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 180
    :cond_1
    monitor-exit p0

    .line 181
    return-object v2

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 172
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public declared-synchronized scheduleRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 302
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_0
    monitor-exit p0

    return-void

    .line 301
    .end local p1    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 151
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 151
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    .end local p1    # "reason":Ljava/lang/String;
    .end local p2    # "flags":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public scheduleSyncDueToBatteryLevelChange(J)Ljava/util/concurrent/Future;
    .locals 2
    .param p1, "delayMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$xR3yCbbVfCo3oq_xPiH7j5l5uac;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$xR3yCbbVfCo3oq_xPiH7j5l5uac;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 244
    monitor-exit p0

    return-object v0

    .line 245
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized scheduleWrite()Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 291
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_0
    :try_start_1
    const-string/jumbo v0, "write"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 294
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 309
    return-void
.end method
