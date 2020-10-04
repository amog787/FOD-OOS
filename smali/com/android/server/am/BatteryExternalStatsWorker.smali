.class Lcom/android/server/am/BatteryExternalStatsWorker;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;


# static fields
.field private static final DEBUG:Z = false

.field private static final EXTERNAL_STATS_SYNC_TIMEOUT_MILLIS:J = 0x7d0L

.field private static final MAX_WIFI_STATS_SAMPLE_ERROR_MILLIS:J = 0x2eeL

.field private static final TAG:Ljava/lang/String; = "BatteryExternalStatsWorker"


# instance fields
.field private mBatteryLevelSync:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentFuture:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mCurrentReason:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mLastCollectionTimeStamp:J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field private mOnBattery:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mOnBatteryScreenOff:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mSyncTask:Ljava/lang/Runnable;

.field private mTelephony:Landroid/telephony/TelephonyManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field private final mUidsToRemove:Landroid/util/IntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mUpdateFlags:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mUseLatestStates:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mWakelockChangesUpdate:Ljava/util/concurrent/Future;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mWifiManager:Landroid/net/wifi/IWifiManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation
.end field

.field private final mWorkerLock:Ljava/lang/Object;

.field private final mWriteTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;

    .line 138
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;->INSTANCE:Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ML8sXrbYk0MflPvsY2cfCYlcU0w;

    .line 75
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 90
    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 93
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 96
    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 105
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 108
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    .line 117
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWorkerLock:Ljava/lang/Object;

    .line 119
    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 122
    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 127
    new-instance v2, Landroid/net/wifi/WifiActivityEnergyInfo;

    new-array v11, v3, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v11, v1

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v19}, Landroid/net/wifi/WifiActivityEnergyInfo;-><init>(JIJ[JJJJJ)V

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 326
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$1;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$1;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    .line 394
    new-instance v1, Lcom/android/server/am/BatteryExternalStatsWorker$2;

    invoke-direct {v1, v0}, Lcom/android/server/am/BatteryExternalStatsWorker$2;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    .line 139
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    .line 140
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 141
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
    .locals 5
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

    .line 525
    const-string v0, "BatteryExternalStatsWorker"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 526
    return-object v1

    .line 530
    :cond_0
    const-wide/16 v2, 0x7d0

    .line 531
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v2

    .line 532
    .local v2, "result":Landroid/os/SynchronousResultReceiver$Result;
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 534
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 536
    iget-object v3, v2, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v4, "controller_activity"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    .line 538
    .local v3, "data":Landroid/os/Parcelable;, "TT;"
    if-eqz v3, :cond_1

    .line 539
    return-object v3

    .line 542
    .end local v3    # "data":Landroid/os/Parcelable;, "TT;"
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no controller energy info supplied for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    nop

    .end local v2    # "result":Landroid/os/SynchronousResultReceiver$Result;
    goto :goto_0

    .line 543
    :catch_0
    move-exception v2

    .line 544
    .local v2, "e":Ljava/util/concurrent/TimeoutException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "timeout reading "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/SynchronousResultReceiver;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .end local v2    # "e":Ljava/util/concurrent/TimeoutException;
    :goto_0
    return-object v1
.end method

.method private cancelSyncDueToBatteryLevelChangeLocked()V
    .locals 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .line 244
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 245
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 248
    :cond_0
    return-void
.end method

.method private extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 40
    .param p1, "latest"    # Landroid/net/wifi/WifiActivityEnergyInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .line 551
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    iget-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    sub-long/2addr v2, v4

    .line 552
    .local v2, "timePeriodMs":J
    iget-object v4, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v4, v4, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 553
    .local v4, "lastScanMs":J
    iget-object v6, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v6, v6, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 554
    .local v6, "lastIdleMs":J
    iget-object v8, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v8, v8, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 555
    .local v8, "lastTxMs":J
    iget-object v10, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v10, v10, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 556
    .local v10, "lastRxMs":J
    iget-object v12, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    iget-wide v12, v12, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 560
    .local v12, "lastEnergy":J
    iget-object v14, v0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 561
    .local v14, "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    move-wide v15, v12

    .end local v12    # "lastEnergy":J
    .local v15, "lastEnergy":J
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getTimeStamp()J

    move-result-wide v12

    iput-wide v12, v14, Landroid/net/wifi/WifiActivityEnergyInfo;->mTimestamp:J

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->getStackState()I

    move-result v12

    iput v12, v14, Landroid/net/wifi/WifiActivityEnergyInfo;->mStackState:I

    .line 564
    iget-wide v12, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    sub-long/2addr v12, v8

    .line 565
    .local v12, "txTimeMs":J
    move-object/from16 v17, v14

    move-wide/from16 v18, v15

    .end local v14    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v15    # "lastEnergy":J
    .local v17, "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .local v18, "lastEnergy":J
    iget-wide v14, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    sub-long/2addr v14, v10

    .line 566
    .local v14, "rxTimeMs":J
    move-wide/from16 v20, v8

    .end local v8    # "lastTxMs":J
    .local v20, "lastTxMs":J
    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    sub-long/2addr v8, v6

    .line 567
    .local v8, "idleTimeMs":J
    move-wide/from16 v22, v10

    .end local v10    # "lastRxMs":J
    .local v22, "lastRxMs":J
    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    sub-long/2addr v10, v4

    .line 569
    .local v10, "scanTimeMs":J
    move-wide/from16 v24, v4

    .end local v4    # "lastScanMs":J
    .local v24, "lastScanMs":J
    const-wide/16 v4, 0x0

    cmp-long v16, v12, v4

    const-string v4, "BatteryExternalStatsWorker"

    const-wide/16 v28, 0x2ee

    if-ltz v16, :cond_3

    const-wide/16 v26, 0x0

    cmp-long v5, v14, v26

    if-ltz v5, :cond_3

    cmp-long v5, v10, v26

    if-ltz v5, :cond_3

    cmp-long v5, v8, v26

    if-gez v5, :cond_0

    move-wide/from16 v34, v6

    move-wide v6, v8

    move-wide/from16 v36, v10

    move-object/from16 v0, v17

    goto/16 :goto_2

    .line 590
    :cond_0
    move-wide/from16 v30, v8

    .end local v8    # "idleTimeMs":J
    .local v30, "idleTimeMs":J
    add-long v8, v12, v14

    .line 592
    .local v8, "totalActiveTimeMs":J
    cmp-long v5, v8, v2

    if-lez v5, :cond_2

    .line 594
    const-wide/16 v32, 0x0

    .line 595
    .local v32, "maxExpectedIdleTimeMs":J
    add-long v28, v2, v28

    cmp-long v5, v8, v28

    if-lez v5, :cond_1

    .line 596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v0, "Total Active time "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    invoke-static {v8, v9, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 599
    const-string v0, " is longer than sample period "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    invoke-static {v2, v3, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 601
    const-string v0, ".\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    const-string v0, "Previous WiFi snapshot: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "idle="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 603
    invoke-static {v6, v7, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 604
    move-wide/from16 v34, v6

    .end local v6    # "lastIdleMs":J
    .local v34, "lastIdleMs":J
    const-string v6, " rx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    move-wide/from16 v36, v10

    move-wide/from16 v10, v22

    .end local v22    # "lastRxMs":J
    .local v10, "lastRxMs":J
    .local v36, "scanTimeMs":J
    invoke-static {v10, v11, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 606
    const-string v7, " tx="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    move-wide/from16 v10, v20

    .end local v20    # "lastTxMs":J
    .local v10, "lastTxMs":J
    .restart local v22    # "lastRxMs":J
    invoke-static {v10, v11, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 608
    nop

    .end local v10    # "lastTxMs":J
    .restart local v20    # "lastTxMs":J
    const-string v10, " e="

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v38, v14

    move-wide/from16 v14, v18

    .end local v18    # "lastEnergy":J
    .local v14, "lastEnergy":J
    .local v38, "rxTimeMs":J
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 609
    const-string v11, "\n"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v11, "Current WiFi snapshot: "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    nop

    .end local v14    # "lastEnergy":J
    .restart local v18    # "lastEnergy":J
    iget-wide v14, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    invoke-static {v14, v15, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 612
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-wide v14, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    invoke-static {v14, v15, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 614
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    iget-wide v6, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    invoke-static {v6, v7, v5}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 616
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    .end local v5    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 595
    .end local v34    # "lastIdleMs":J
    .end local v36    # "scanTimeMs":J
    .end local v38    # "rxTimeMs":J
    .restart local v6    # "lastIdleMs":J
    .local v10, "scanTimeMs":J
    .local v14, "rxTimeMs":J
    :cond_1
    move-wide/from16 v34, v6

    move-wide/from16 v36, v10

    move-wide/from16 v38, v14

    .line 623
    .end local v6    # "lastIdleMs":J
    .end local v10    # "scanTimeMs":J
    .end local v14    # "rxTimeMs":J
    .restart local v34    # "lastIdleMs":J
    .restart local v36    # "scanTimeMs":J
    .restart local v38    # "rxTimeMs":J
    :goto_0
    move-wide/from16 v4, v32

    goto :goto_1

    .line 620
    .end local v32    # "maxExpectedIdleTimeMs":J
    .end local v34    # "lastIdleMs":J
    .end local v36    # "scanTimeMs":J
    .end local v38    # "rxTimeMs":J
    .restart local v6    # "lastIdleMs":J
    .restart local v10    # "scanTimeMs":J
    .restart local v14    # "rxTimeMs":J
    :cond_2
    move-wide/from16 v34, v6

    move-wide/from16 v36, v10

    move-wide/from16 v38, v14

    .end local v6    # "lastIdleMs":J
    .end local v10    # "scanTimeMs":J
    .end local v14    # "rxTimeMs":J
    .restart local v34    # "lastIdleMs":J
    .restart local v36    # "scanTimeMs":J
    .restart local v38    # "rxTimeMs":J
    sub-long v32, v2, v8

    move-wide/from16 v4, v32

    .line 623
    .local v4, "maxExpectedIdleTimeMs":J
    :goto_1
    move-object/from16 v0, v17

    .end local v17    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .local v0, "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    iput-wide v12, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 624
    move-wide/from16 v14, v38

    .end local v38    # "rxTimeMs":J
    .restart local v14    # "rxTimeMs":J
    iput-wide v14, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 625
    move-wide/from16 v10, v36

    .end local v36    # "scanTimeMs":J
    .restart local v10    # "scanTimeMs":J
    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 631
    move-wide/from16 v16, v8

    move-wide/from16 v6, v30

    const-wide/16 v8, 0x0

    .end local v8    # "totalActiveTimeMs":J
    .end local v10    # "scanTimeMs":J
    .end local v30    # "idleTimeMs":J
    .local v6, "idleTimeMs":J
    .local v16, "totalActiveTimeMs":J
    .restart local v36    # "scanTimeMs":J
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 632
    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    sub-long v10, v10, v18

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    goto :goto_4

    .line 569
    .end local v0    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .end local v4    # "maxExpectedIdleTimeMs":J
    .end local v16    # "totalActiveTimeMs":J
    .end local v34    # "lastIdleMs":J
    .end local v36    # "scanTimeMs":J
    .local v6, "lastIdleMs":J
    .local v8, "idleTimeMs":J
    .restart local v10    # "scanTimeMs":J
    .restart local v17    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_3
    move-wide/from16 v34, v6

    move-wide v6, v8

    move-wide/from16 v36, v10

    move-object/from16 v0, v17

    .line 573
    .end local v8    # "idleTimeMs":J
    .end local v10    # "scanTimeMs":J
    .end local v17    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .restart local v0    # "delta":Landroid/net/wifi/WifiActivityEnergyInfo;
    .local v6, "idleTimeMs":J
    .restart local v34    # "lastIdleMs":J
    .restart local v36    # "scanTimeMs":J
    :goto_2
    iget-wide v8, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    add-long/2addr v8, v10

    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    add-long/2addr v8, v10

    .line 575
    .local v8, "totalOnTimeMs":J
    add-long v28, v2, v28

    cmp-long v5, v8, v28

    if-gtz v5, :cond_4

    .line 576
    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 577
    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 578
    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 579
    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 580
    iget-wide v10, v1, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    goto :goto_3

    .line 582
    :cond_4
    const-wide/16 v10, 0x0

    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerEnergyUsed:J

    .line 583
    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerRxTimeMs:J

    .line 584
    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerTxTimeMs:J

    .line 585
    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerIdleTimeMs:J

    .line 586
    iput-wide v10, v0, Landroid/net/wifi/WifiActivityEnergyInfo;->mControllerScanTimeMs:J

    .line 588
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WiFi energy data was reset, new WiFi energy data is "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    .end local v8    # "totalOnTimeMs":J
    nop

    .line 635
    :goto_4
    move-object/from16 v4, p0

    iput-object v1, v4, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastInfo:Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 636
    return-object v0
.end method

.method static synthetic lambda$new$0(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 79
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/ThreadLocalWorkSource;->setUid(I)J

    .line 80
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 81
    return-void
.end method

.method static synthetic lambda$new$1(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .line 77
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ddVY5lmqswnSjXppAxPTOHbuzzQ;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$ddVY5lmqswnSjXppAxPTOHbuzzQ;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "batterystats-worker"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 83
    .local v0, "t":Ljava/lang/Thread;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 84
    return-object v0
.end method

.method private scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;
    .locals 2
    .param p2, "syncRunnable"    # Ljava/lang/Runnable;
    .param p3, "delayMillis"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

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

    .line 263
    .local p1, "lastScheduledSync":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 267
    :cond_0
    if-eqz p1, :cond_2

    .line 270
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 271
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    .line 273
    :cond_1
    return-object p1

    .line 277
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    if-nez v0, :cond_1

    .line 312
    iput p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 313
    iput-object p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentReason:Ljava/lang/String;

    .line 314
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mSyncTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    .line 316
    :cond_1
    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    or-int/2addr v0, p2

    iput v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    .line 317
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mWorkerLock"
        }
    .end annotation

    .line 407
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 408
    .local v2, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v3, 0x0

    .line 409
    .local v3, "bluetoothReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v4, 0x0

    .line 410
    .local v4, "modemReceiver":Landroid/os/SynchronousResultReceiver;
    const/4 v5, 0x0

    .line 412
    .local v5, "railUpdated":Z
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-nez v0, :cond_0

    .line 415
    const-string/jumbo v0, "wifi"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    .line 419
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    if-eqz v0, :cond_2

    .line 422
    :try_start_0
    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()J

    move-result-wide v6

    const-wide/32 v8, 0x10000

    and-long/2addr v6, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_1

    .line 423
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v6, "wifi"

    invoke-direct {v0, v6}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 424
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mWifiManager:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, v2}, Landroid/net/wifi/IWifiManager;->requestActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    :cond_1
    move-object v6, v2

    goto :goto_0

    .line 426
    :catch_0
    move-exception v0

    move-object v6, v2

    goto :goto_0

    .line 419
    :cond_2
    move-object v6, v2

    .line 430
    .end local v2    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .local v6, "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :goto_0
    iget-object v7, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 431
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 432
    monitor-exit v7

    .line 433
    const/4 v5, 0x1

    move-object v2, v6

    goto :goto_1

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 436
    .end local v6    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    .restart local v2    # "wifiReceiver":Landroid/os/SynchronousResultReceiver;
    :cond_3
    :goto_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_4

    .line 438
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 439
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_4

    .line 440
    new-instance v6, Landroid/os/SynchronousResultReceiver;

    const-string v7, "bluetooth"

    invoke-direct {v6, v7}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 441
    invoke-virtual {v0, v3}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    .line 445
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :cond_4
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_7

    .line 447
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_5

    .line 448
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    .line 451
    :cond_5
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_6

    .line 452
    new-instance v0, Landroid/os/SynchronousResultReceiver;

    const-string/jumbo v6, "telephony"

    invoke-direct {v0, v6}, Landroid/os/SynchronousResultReceiver;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 453
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mTelephony:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 455
    :cond_6
    if-nez v5, :cond_7

    .line 456
    iget-object v6, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v6

    .line 457
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRailStatsLocked()V

    .line 458
    monitor-exit v6

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 462
    :cond_7
    :goto_2
    invoke-static {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 463
    .local v6, "wifiInfo":Landroid/net/wifi/WifiActivityEnergyInfo;
    invoke-static {v3}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 464
    .local v7, "bluetoothInfo":Landroid/bluetooth/BluetoothActivityEnergyInfo;
    invoke-static {v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->awaitControllerInfo(Landroid/os/SynchronousResultReceiver;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/telephony/ModemActivityInfo;

    .line 466
    .local v8, "modemInfo":Landroid/telephony/ModemActivityInfo;
    iget-object v9, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v9

    .line 467
    :try_start_3
    iget-object v10, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 469
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    const/16 v15, 0xe

    const/16 v17, 0x0

    .line 467
    move-object/from16 v16, p1

    invoke-virtual/range {v10 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->addHistoryEventLocked(JJILjava/lang/String;I)V

    .line 473
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_9

    .line 474
    if-eqz p5, :cond_8

    .line 475
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryLocked()Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v10, v0

    .line 476
    .end local p3    # "onBattery":Z
    .local v10, "onBattery":Z
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBatteryScreenOffLocked()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move v11, v0

    .end local p4    # "onBatteryScreenOff":Z
    .local v0, "onBatteryScreenOff":Z
    goto :goto_3

    .line 497
    .end local v0    # "onBatteryScreenOff":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :catchall_2
    move-exception v0

    move/from16 v11, p4

    goto/16 :goto_8

    .line 474
    .end local v10    # "onBattery":Z
    .restart local p3    # "onBattery":Z
    :cond_8
    move/from16 v10, p3

    move/from16 v11, p4

    .line 478
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v10    # "onBattery":Z
    .local v11, "onBatteryScreenOff":Z
    :goto_3
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->updateCpuTimeLocked(ZZ)V

    goto :goto_4

    .line 473
    .end local v10    # "onBattery":Z
    .end local v11    # "onBatteryScreenOff":Z
    .restart local p3    # "onBattery":Z
    .restart local p4    # "onBatteryScreenOff":Z
    :cond_9
    move/from16 v10, p3

    move/from16 v11, p4

    .line 481
    .end local p3    # "onBattery":Z
    .end local p4    # "onBatteryScreenOff":Z
    .restart local v10    # "onBattery":Z
    .restart local v11    # "onBatteryScreenOff":Z
    :goto_4
    and-int/lit8 v0, p2, 0x1f

    if-eqz v0, :cond_a

    .line 482
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelWakelocksLocked()V

    .line 483
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateKernelMemoryBandwidthLocked()V

    .line 486
    :cond_a
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_b

    .line 487
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->updateRpmStatsLocked()V

    .line 490
    :cond_b
    if-eqz v7, :cond_d

    .line 491
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 492
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v7}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    goto :goto_5

    .line 494
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

    .line 497
    :cond_d
    :goto_5
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 502
    if-eqz v6, :cond_f

    .line 503
    invoke-virtual {v6}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 504
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, v6}, Lcom/android/server/am/BatteryExternalStatsWorker;->extractDeltaLocked(Landroid/net/wifi/WifiActivityEnergyInfo;)Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    goto :goto_6

    .line 506
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

    .line 510
    :cond_f
    :goto_6
    if-eqz v8, :cond_11

    .line 511
    invoke-virtual {v8}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 512
    iget-object v0, v1, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v8}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    goto :goto_7

    .line 514
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

    .line 517
    :cond_11
    :goto_7
    return-void

    .line 497
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
    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_8
.end method


# virtual methods
.method public cancelCpuSyncDueToWakelockChange()V
    .locals 2

    .line 224
    monitor-enter p0

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 227
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 229
    :cond_0
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getLastCollectionTimeStamp()J
    .locals 2

    .line 321
    monitor-enter p0

    .line 322
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mLastCollectionTimeStamp:J

    monitor-exit p0

    return-wide v0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$2$BatteryExternalStatsWorker()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->postBatteryNeedsCpuUpdateMsg()V

    return-void
.end method

.method public synthetic lambda$scheduleCpuSyncDueToWakelockChange$3$BatteryExternalStatsWorker()V
    .locals 2

    .line 214
    const-string/jumbo v0, "wakelock-change"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 215
    new-instance v0, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;

    invoke-direct {v0, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$PpNEY15dspg9oLlkg1OsyjrPTqw;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-virtual {p0, v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 216
    return-void
.end method

.method public synthetic lambda$scheduleSyncDueToBatteryLevelChange$4$BatteryExternalStatsWorker()V
    .locals 2

    .line 236
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

    .line 181
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 183
    monitor-exit v0

    return-object v2

    .line 185
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    monitor-enter p0

    .line 187
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;->INSTANCE:Lcom/android/server/am/-$$Lambda$7toxTvZDSEytL0rCkoEfGilPDWM;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 190
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 188
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 190
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 188
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 192
    :cond_1
    monitor-exit p0

    .line 193
    return-object v2

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 185
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

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUidsToRemove:Landroid/util/IntArray;

    invoke-virtual {v0, p1}, Landroid/util/IntArray;->add(I)V

    .line 151
    const-string/jumbo v0, "remove-uid"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 149
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

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mCurrentFuture:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUpdateFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 201
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBattery:Z

    .line 202
    iput-boolean p2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mOnBatteryScreenOff:Z

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mUseLatestStates:Z

    .line 205
    :cond_1
    const-string/jumbo v0, "screen-state"

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 206
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

    .line 156
    :try_start_0
    const-string/jumbo v0, "setting-change"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

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

    .line 211
    monitor-enter p0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$r3x3xYmhrLG8kgeNVPXl5EILHwU;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    .line 218
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWakelockChangesUpdate:Ljava/util/concurrent/Future;

    monitor-exit p0

    return-object v0

    .line 219
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

    .line 162
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->trackPerProcStateCpuTimes()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 164
    monitor-exit v0

    return-object v2

    .line 166
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 167
    monitor-enter p0

    .line 168
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v1, Lcom/android/server/am/-$$Lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY;->INSTANCE:Lcom/android/server/am/-$$Lambda$cC4f0pNQX9_D9f8AXLmKk2sArGY;

    iget-object v2, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 171
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 169
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 171
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 169
    invoke-interface {v0, v1, p3, p4, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 174
    :cond_1
    monitor-exit p0

    .line 175
    return-object v2

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 166
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

    .line 296
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_0
    monitor-exit p0

    return-void

    .line 295
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

    .line 145
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

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

    .line 234
    monitor-enter p0

    .line 235
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    new-instance v1, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$xR3yCbbVfCo3oq_xPiH7j5l5uac;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$BatteryExternalStatsWorker$xR3yCbbVfCo3oq_xPiH7j5l5uac;-><init>(Lcom/android/server/am/BatteryExternalStatsWorker;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleDelayedSyncLocked(Ljava/util/concurrent/Future;Ljava/lang/Runnable;J)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    .line 238
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mBatteryLevelSync:Ljava/util/concurrent/Future;

    monitor-exit p0

    return-object v0

    .line 239
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

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "worker shutdown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/CompletableFuture;->failedFuture(Ljava/lang/Throwable;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 285
    .end local p0    # "this":Lcom/android/server/am/BatteryExternalStatsWorker;
    :cond_0
    :try_start_1
    const-string/jumbo v0, "write"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSyncLocked(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 288
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mWriteTask:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public shutdown()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/server/am/BatteryExternalStatsWorker;->mExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 303
    return-void
.end method
