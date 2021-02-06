.class public final Lcom/android/server/am/BatteryStatsService;
.super Lcom/android/internal/app/IBatteryStats$Stub;
.source "BatteryStatsService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;
.implements Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;
.implements Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;,
        Lcom/android/server/am/BatteryStatsService$LocalService;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x1000

.field static final TAG:Ljava/lang/String; = "BatteryStatsService"

.field private static sService:Lcom/android/internal/app/IBatteryStats;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDecoderStat:Ljava/nio/charset/CharsetDecoder;

.field private mNoAutoReset:Z

.field private mOpFeatrueCollectBatterystats:Z

.field final mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private final mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

.field private mUtf16BufferStat:Ljava/nio/CharBuffer;

.field private mUtf8BufferStat:Ljava/nio/ByteBuffer;

.field private final mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Handler;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .line 200
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 124
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 125
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 126
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 127
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 128
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 129
    const/16 v0, 0x1000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    .line 130
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    .line 1250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mNoAutoReset:Z

    .line 1251
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x116

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mOpFeatrueCollectBatterystats:Z

    .line 202
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 203
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    .line 213
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 217
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/os/OpBatteryStatsInjector;->initInstance(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/Context;)V

    .line 219
    new-instance v0, Lcom/android/server/am/BatteryExternalStatsWorker;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 220
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 221
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 223
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 224
    return-void
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;

    .line 106
    invoke-static {p0}, Lcom/android/server/am/BatteryStatsService;->nativeWaitWakeup(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method private static awaitUninterruptibly(Ljava/util/concurrent/Future;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "*>;)V"
        }
    .end annotation

    .line 266
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 272
    goto :goto_0

    .line 268
    :catch_1
    move-exception v0

    .line 269
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    return-void
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .line 1420
    add-int/lit8 p2, p2, 0x1

    .line 1421
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 1422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing option argument for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_0

    const-string v2, "--enable"

    goto :goto_0

    :cond_0
    const-string v2, "--disable"

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1424
    return v1

    .line 1426
    :cond_1
    aget-object v0, p3, p2

    const-string v2, "full-wake-history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, p3, p2

    const-string v2, "full-history"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 1430
    :cond_2
    aget-object v0, p3, p2

    const-string/jumbo v2, "no-auto-reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1431
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1432
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 1436
    iput-boolean p4, p0, Lcom/android/server/am/BatteryStatsService;->mNoAutoReset:Z

    .line 1439
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1440
    :cond_3
    aget-object v0, p3, p2

    const-string/jumbo v2, "pretend-screen-off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1441
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1442
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 1443
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1445
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown enable/disable option: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1446
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1447
    return v1

    .line 1427
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1428
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 1429
    monitor-exit v0

    .line 1449
    :goto_2
    return p2

    .line 1429
    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1
.end method

.method private dumpCpuStats(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1414
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1415
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 1416
    monitor-exit v0

    .line 1417
    return-void

    .line 1416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1377
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    const-string v0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    const-string v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1382
    const-string v0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    const-string v0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    const-string v0, "  --history-create-events <num>: create <num> of battery history events."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    const-string v0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    const-string v0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1399
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1400
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1401
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1402
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1403
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1404
    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    return-void
.end method

.method private dumpSettings(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1408
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1409
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 1410
    monitor-exit v0

    .line 1411
    return-void

    .line 1410
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
.end method

.method private native getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .line 309
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 310
    return-object v0

    .line 312
    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 313
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 314
    return-object v1
.end method

.method private native getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private static onlyCaller([I)Z
    .locals 4
    .param p0, "requestUids"    # [I

    .line 1784
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1785
    .local v0, "caller":I
    array-length v1, p0

    .line 1786
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1787
    aget v3, p0, v2

    if-eq v3, v0, :cond_0

    .line 1788
    const/4 v3, 0x0

    return v3

    .line 1786
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1791
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private shouldCollectExternalStats()Z
    .locals 4

    .line 1776
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1777
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1776
    :goto_0
    return v0
.end method

.method private syncStats(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 277
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->awaitUninterruptibly(Ljava/util/concurrent/Future;)V

    .line 278
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 374
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 375
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V

    .line 376
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeBatteryTimeRemaining()J
    .locals 5

    .line 467
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 468
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    .line 469
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    monitor-exit v0

    return-wide v3

    .line 470
    .end local v1    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeChargeTimeRemaining()J
    .locals 5

    .line 474
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 475
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    .line 476
    .local v1, "time":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    const-wide/16 v3, 0x3e8

    div-long v3, v1, v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    monitor-exit v0

    return-wide v3

    .line 477
    .end local v1    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 37
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1455
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v2, "BatteryStatsService"

    invoke-static {v0, v2, v9}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1457
    :cond_0
    const/4 v0, 0x0

    .line 1458
    .local v0, "flags":I
    const/4 v2, 0x0

    .line 1459
    .local v2, "useCheckinFormat":Z
    const/4 v3, 0x0

    .line 1460
    .local v3, "toProto":Z
    const/4 v4, 0x0

    .line 1461
    .local v4, "isRealCheckin":Z
    const/4 v5, 0x0

    .line 1462
    .local v5, "noOutput":Z
    const/4 v6, 0x0

    .line 1463
    .local v6, "writeData":Z
    const-wide/16 v7, -0x1

    .line 1464
    .local v7, "historyStart":J
    const/4 v11, -0x1

    .line 1465
    .local v11, "reqUid":I
    if-eqz v10, :cond_1b

    .line 1466
    const/4 v14, 0x0

    move/from16 v30, v2

    move v2, v0

    move/from16 v31, v3

    move/from16 v3, v30

    move/from16 v32, v4

    move/from16 v4, v31

    move/from16 v33, v5

    move/from16 v5, v32

    move/from16 v34, v6

    move/from16 v6, v33

    move-wide/from16 v35, v7

    move/from16 v7, v34

    move v8, v14

    move-wide/from16 v14, v35

    .end local v0    # "flags":I
    .local v2, "flags":I
    .local v3, "useCheckinFormat":Z
    .local v4, "toProto":Z
    .local v5, "isRealCheckin":Z
    .local v6, "noOutput":Z
    .local v7, "writeData":Z
    .local v8, "i":I
    .local v14, "historyStart":J
    :goto_0
    array-length v0, v10

    if-ge v8, v0, :cond_1a

    .line 1467
    aget-object v13, v10, v8

    .line 1468
    .local v13, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1469
    const/4 v3, 0x1

    .line 1470
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1471
    :cond_1
    const-string v0, "--history"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1472
    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_1

    .line 1473
    :cond_2
    const-string v0, "--history-start"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v18, v13

    .end local v13    # "arg":Ljava/lang/String;
    .local v18, "arg":Ljava/lang/String;
    const-wide/16 v12, 0x0

    if-eqz v0, :cond_4

    .line 1474
    or-int/lit8 v2, v2, 0x8

    .line 1475
    add-int/lit8 v8, v8, 0x1

    .line 1476
    array-length v0, v10

    if-lt v8, v0, :cond_3

    .line 1477
    const-string v0, "Missing time argument for --history-since"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1479
    return-void

    .line 1481
    :cond_3
    aget-object v0, v10, v8

    invoke-static {v0, v12, v13}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1482
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1483
    :cond_4
    const-string v0, "--history-create-events"

    move-object/from16 v12, v18

    .end local v18    # "arg":Ljava/lang/String;
    .local v12, "arg":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1484
    add-int/lit8 v13, v8, 0x1

    .line 1485
    .end local v8    # "i":I
    .local v13, "i":I
    array-length v0, v10

    if-lt v13, v0, :cond_5

    .line 1486
    const-string v0, "Missing events argument for --history-create-events"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1488
    return-void

    .line 1490
    :cond_5
    aget-object v0, v10, v13

    move/from16 v22, v3

    move/from16 v18, v4

    const-wide/16 v3, 0x0

    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .local v18, "toProto":Z
    .local v22, "useCheckinFormat":Z
    invoke-static {v0, v3, v4}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 1491
    .local v3, "events":J
    iget-object v8, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v8

    .line 1492
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    .line 1493
    const-string v0, "Battery history create events started."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    const/4 v6, 0x1

    .line 1495
    monitor-exit v8

    .line 1496
    .end local v3    # "events":J
    move v8, v13

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    .line 1495
    .restart local v3    # "events":J
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1496
    .end local v13    # "i":I
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .local v3, "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v8    # "i":I
    :cond_6
    move/from16 v22, v3

    move/from16 v18, v4

    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .restart local v18    # "toProto":Z
    .restart local v22    # "useCheckinFormat":Z
    const-string v0, "-c"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1497
    const/4 v3, 0x1

    .line 1498
    .end local v22    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    or-int/lit8 v2, v2, 0x10

    move/from16 v4, v18

    goto/16 :goto_1

    .line 1499
    .end local v3    # "useCheckinFormat":Z
    .restart local v22    # "useCheckinFormat":Z
    :cond_7
    const-string v0, "--proto"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1500
    const/4 v4, 0x1

    move/from16 v3, v22

    .end local v18    # "toProto":Z
    .restart local v4    # "toProto":Z
    goto/16 :goto_1

    .line 1501
    .end local v4    # "toProto":Z
    .restart local v18    # "toProto":Z
    :cond_8
    const-string v0, "--charged"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1502
    or-int/lit8 v2, v2, 0x2

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    .line 1503
    :cond_9
    const-string v0, "--daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1504
    or-int/lit8 v2, v2, 0x4

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    .line 1505
    :cond_a
    const-string v0, "--reset"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1506
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1507
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 1508
    const-string v0, "Battery stats reset."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    const/4 v6, 0x1

    .line 1510
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1511
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string v3, "dump"

    const/16 v4, 0x1f

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    .line 1510
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1512
    :cond_b
    const-string v0, "--write"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1513
    const-string v0, "dump"

    const/16 v3, 0x1f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1514
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1515
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 1516
    const-string v0, "Battery stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1517
    const/4 v6, 0x1

    .line 1518
    monitor-exit v3

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 1519
    :cond_c
    const-string v0, "--new-daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1520
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1521
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 1522
    const-string v0, "New daily stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    const/4 v6, 0x1

    .line 1524
    monitor-exit v3

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    .line 1525
    :cond_d
    const-string v0, "--read-daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1526
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1527
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 1528
    const-string v0, "Last daily stats read."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    const/4 v6, 0x1

    .line 1530
    monitor-exit v3

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v0

    .line 1531
    :cond_e
    const-string v0, "--enable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "enable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto/16 :goto_3

    .line 1538
    :cond_f
    const-string v0, "--disable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "disable"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_2

    .line 1545
    :cond_10
    const-string v0, "-h"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1546
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1547
    return-void

    .line 1548
    :cond_11
    const-string v0, "--settings"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1549
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    .line 1550
    return-void

    .line 1551
    :cond_12
    const-string v0, "--cpu"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1552
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    .line 1553
    return-void

    .line 1554
    :cond_13
    const-string v0, "-a"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1555
    or-int/lit8 v2, v2, 0x20

    move/from16 v4, v18

    move/from16 v3, v22

    goto :goto_1

    .line 1556
    :cond_14
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x2d

    if-ne v3, v0, :cond_15

    .line 1557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1559
    return-void

    .line 1563
    :cond_15
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1564
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1563
    invoke-virtual {v0, v12, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    move v11, v0

    .line 1569
    move/from16 v4, v18

    move/from16 v3, v22

    .line 1466
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    :goto_1
    const/4 v0, 0x1

    add-int/2addr v8, v0

    goto/16 :goto_0

    .line 1565
    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .restart local v12    # "arg":Ljava/lang/String;
    .restart local v18    # "toProto":Z
    .restart local v22    # "useCheckinFormat":Z
    :catch_0
    move-exception v0

    .line 1566
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1567
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1568
    return-void

    .line 1539
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_16
    :goto_2
    const/4 v0, 0x0

    invoke-direct {v1, v9, v8, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 1540
    .end local v8    # "i":I
    .local v0, "i":I
    if-gez v0, :cond_17

    .line 1541
    return-void

    .line 1543
    :cond_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1544
    return-void

    .line 1532
    .end local v0    # "i":I
    .restart local v8    # "i":I
    :cond_18
    :goto_3
    const/4 v0, 0x1

    invoke-direct {v1, v9, v8, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 1533
    .end local v8    # "i":I
    .restart local v0    # "i":I
    if-gez v0, :cond_19

    .line 1534
    return-void

    .line 1536
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v10, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    return-void

    .line 1466
    .end local v0    # "i":I
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v8    # "i":I
    :cond_1a
    move/from16 v22, v3

    move/from16 v18, v4

    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .restart local v18    # "toProto":Z
    .restart local v22    # "useCheckinFormat":Z
    move v12, v6

    move v13, v7

    move/from16 v19, v11

    move v11, v5

    goto :goto_4

    .line 1465
    .end local v8    # "i":I
    .end local v14    # "historyStart":J
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .local v0, "flags":I
    .local v2, "useCheckinFormat":Z
    .local v3, "toProto":Z
    .local v4, "isRealCheckin":Z
    .local v5, "noOutput":Z
    .local v6, "writeData":Z
    .local v7, "historyStart":J
    :cond_1b
    move/from16 v22, v2

    move/from16 v18, v3

    move v12, v5

    move v13, v6

    move-wide v14, v7

    move/from16 v19, v11

    move v2, v0

    move v11, v4

    .line 1573
    .end local v0    # "flags":I
    .end local v3    # "toProto":Z
    .end local v4    # "isRealCheckin":Z
    .end local v5    # "noOutput":Z
    .end local v6    # "writeData":Z
    .end local v7    # "historyStart":J
    .local v2, "flags":I
    .local v11, "isRealCheckin":Z
    .local v12, "noOutput":Z
    .local v13, "writeData":Z
    .restart local v14    # "historyStart":J
    .restart local v18    # "toProto":Z
    .local v19, "reqUid":I
    .restart local v22    # "useCheckinFormat":Z
    :goto_4
    if-eqz v12, :cond_1c

    .line 1574
    return-void

    .line 1577
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1579
    .local v20, "ident":J
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1580
    or-int/lit8 v2, v2, 0x40

    .line 1583
    :cond_1d
    const-string v0, "dump"

    const/16 v3, 0x1f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    .line 1585
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1586
    nop

    .line 1588
    if-ltz v19, :cond_1e

    .line 1591
    and-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_1e

    .line 1592
    or-int/lit8 v0, v2, 0x2

    .line 1594
    .end local v2    # "flags":I
    .restart local v0    # "flags":I
    and-int/lit8 v2, v0, -0x11

    move/from16 v17, v2

    .end local v0    # "flags":I
    .restart local v2    # "flags":I
    goto :goto_5

    .line 1598
    :cond_1e
    move/from16 v17, v2

    .end local v2    # "flags":I
    .local v17, "flags":I
    :goto_5
    const/high16 v0, 0x420000

    if-eqz v18, :cond_23

    .line 1599
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1601
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v11, :cond_21

    .line 1604
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v3

    .line 1605
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v0, :cond_20

    .line 1607
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1608
    .local v0, "raw":[B
    if-eqz v0, :cond_1f

    .line 1609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1610
    .local v4, "in":Landroid/os/Parcel;
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1611
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1612
    new-instance v5, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v24, 0x0

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v28, v7

    invoke-direct/range {v23 .. v28}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    .line 1615
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v5, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1616
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1617
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, p1

    move-object/from16 v26, v2

    move/from16 v27, v17

    move-wide/from16 v28, v14

    invoke-virtual/range {v23 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1619
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->delete()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1620
    :try_start_a
    monitor-exit v3

    return-void

    .line 1625
    .end local v0    # "raw":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v5    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_1f
    goto :goto_6

    .line 1622
    :catch_1
    move-exception v0

    .line 1623
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reading checkin file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1624
    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1623
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1627
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    :goto_6
    monitor-exit v3

    goto :goto_7

    :catchall_5
    move-exception v0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v0

    .line 1630
    :cond_21
    :goto_7
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1631
    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v25, p1

    move-object/from16 v26, v2

    move/from16 v27, v17

    move-wide/from16 v28, v14

    invoke-virtual/range {v23 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1632
    if-eqz v13, :cond_22

    .line 1633
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1635
    :cond_22
    monitor-exit v3

    .line 1637
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto/16 :goto_d

    .line 1635
    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    .line 1637
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_23
    if-eqz v22, :cond_28

    .line 1638
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v23

    .line 1640
    .local v23, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v11, :cond_26

    .line 1643
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    monitor-enter v7

    .line 1644
    :try_start_c
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v0, :cond_25

    .line 1646
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1647
    .local v0, "raw":[B
    if-eqz v0, :cond_24

    .line 1648
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v8, v2

    .line 1649
    .local v8, "in":Landroid/os/Parcel;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1650
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1651
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v25, 0x0

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v27, 0x0

    const/16 v28, 0x0

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v24, v2

    move-object/from16 v26, v3

    move-object/from16 v29, v4

    invoke-direct/range {v24 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    move-object v6, v2

    .line 1654
    .local v6, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1655
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1656
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Landroid/os/ParcelFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v2, v6

    move-object/from16 v4, p2

    move-object/from16 v5, v23

    move-object/from16 v16, v6

    .end local v6    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .local v16, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move/from16 v6, v17

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    .end local v8    # "in":Landroid/os/Parcel;
    .local v25, "in":Landroid/os/Parcel;
    move-wide v7, v14

    :try_start_e
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1658
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Landroid/os/ParcelFormatException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1659
    :try_start_f
    monitor-exit v24

    return-void

    .line 1661
    .end local v0    # "raw":[B
    .end local v16    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v25    # "in":Landroid/os/Parcel;
    :catch_2
    move-exception v0

    goto :goto_8

    .line 1647
    .restart local v0    # "raw":[B
    :cond_24
    move-object/from16 v24, v7

    .line 1664
    .end local v0    # "raw":[B
    goto :goto_9

    .line 1661
    :catch_3
    move-exception v0

    move-object/from16 v24, v7

    .line 1662
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Landroid/util/AtomicFile;

    .line 1663
    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1662
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1644
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    move-object/from16 v24, v7

    .line 1666
    :goto_9
    monitor-exit v24

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object/from16 v24, v7

    :goto_a
    monitor-exit v24
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_a

    .line 1669
    :cond_26
    :goto_b
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1670
    :try_start_10
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object/from16 v4, p2

    move-object/from16 v5, v23

    move/from16 v6, v17

    move-object/from16 v16, v7

    move-wide v7, v14

    :try_start_11
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1671
    if-eqz v13, :cond_27

    .line 1672
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1674
    :cond_27
    monitor-exit v16

    .line 1676
    .end local v23    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_d

    .line 1674
    .restart local v23    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_9
    move-exception v0

    move-object/from16 v16, v7

    :goto_c
    monitor-exit v16
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    throw v0

    :catchall_a
    move-exception v0

    goto :goto_c

    .line 1678
    .end local v23    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_28
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1679
    :try_start_12
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-object/from16 v4, p2

    move/from16 v5, v17

    move/from16 v6, v19

    move-object/from16 v16, v7

    move-wide v7, v14

    :try_start_13
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 1680
    if-eqz v13, :cond_29

    .line 1681
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1683
    :cond_29
    monitor-exit v16

    .line 1686
    :goto_d
    return-void

    .line 1683
    :catchall_b
    move-exception v0

    move-object/from16 v16, v7

    :goto_e
    monitor-exit v16
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_e

    .line 1585
    .end local v17    # "flags":I
    .local v2, "flags":I
    :catchall_d
    move-exception v0

    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1586
    throw v0
.end method

.method public enforceCallingPermission()V
    .locals 5

    .line 1308
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1309
    return-void

    .line 1311
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1312
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 1311
    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1313
    return-void
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .locals 1
    .param p1, "rpmStats"    # Lcom/android/internal/os/RpmStats;

    .line 140
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    nop

    .line 144
    return-void

    .line 142
    :catchall_0
    move-exception v0

    .line 143
    throw v0
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .locals 1
    .param p1, "railStats"    # Lcom/android/internal/os/RailStats;

    .line 150
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    nop

    .line 154
    return-void

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    throw v0
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .line 1296
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1298
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 3

    .line 1302
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1304
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .locals 2

    .line 1693
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1694
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1695
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 2

    .line 1713
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1714
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1715
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;
    .locals 4
    .param p1, "requestUid"    # I

    .line 1799
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 1800
    .local v0, "writer":Lcom/android/server/am/HealthStatsBatteryStatsWriter;
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 1801
    .local v1, "uidWriter":Landroid/os/health/HealthStatsWriter;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    .line 1802
    .local v2, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v2, :cond_0

    .line 1803
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 1805
    :cond_0
    new-instance v3, Landroid/os/health/HealthStatsParceler;

    invoke-direct {v3, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object v3
.end method

.method public getPlatformLowPowerStats()Ljava/lang/String;
    .locals 5

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 161
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 162
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 163
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 164
    .local v0, "bytesWritten":I
    if-gez v0, :cond_0

    .line 165
    const/4 v1, 0x0

    return-object v1

    .line 166
    :cond_0
    if-nez v0, :cond_1

    .line 167
    const-string v1, "Empty"

    return-object v1

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 170
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 171
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 172
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 174
    .end local v0    # "bytesWritten":I
    :catchall_0
    move-exception v0

    .line 175
    throw v0
.end method

.method public getServiceType()I
    .locals 1

    .line 319
    const/16 v0, 0x9

    return v0
.end method

.method public getStatistics()[B
    .locals 4

    .line 425
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 430
    .local v0, "out":Landroid/os/Parcel;
    const-string v1, "get-stats"

    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 431
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 432
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 433
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 435
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    return-object v1

    .line 433
    .end local v1    # "data":[B
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getStatisticsStream()Landroid/os/ParcelFileDescriptor;
    .locals 6

    .line 440
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 445
    .local v0, "out":Landroid/os/Parcel;
    const-string v1, "get-stats"

    const/16 v3, 0x1f

    invoke-direct {p0, v1, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 446
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 447
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 448
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 451
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 453
    :try_start_1
    const-string v3, "battery-stats"

    invoke-static {v1, v3}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    .line 454
    :catch_0
    move-exception v3

    .line 455
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    return-object v2

    .line 448
    .end local v1    # "data":[B
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getSubsystemLowPowerStats()Ljava/lang/String;
    .locals 5

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 183
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 184
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 185
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 186
    .local v0, "bytesWritten":I
    if-gez v0, :cond_0

    .line 187
    const/4 v1, 0x0

    return-object v1

    .line 188
    :cond_0
    if-nez v0, :cond_1

    .line 189
    const-string v1, "Empty"

    return-object v1

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 192
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 193
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 194
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 196
    .end local v0    # "bytesWritten":I
    :catchall_0
    move-exception v0

    .line 197
    throw v0
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .locals 2

    .line 1703
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1704
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1705
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initPowerManagement()V
    .locals 4

    .line 285
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 286
    .local v0, "powerMgr":Landroid/os/PowerManagerInternal;
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 287
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 289
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 288
    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 291
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    new-instance v1, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 293
    return-void

    .line 291
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public isCharging()Z
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOnBattery()Z
    .locals 1

    .line 1245
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$setBatteryState$0$BatteryStatsService(IIIIIIIIJ)V
    .locals 14
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J

    .line 1287
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1288
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJ)V

    .line 1290
    monitor-exit v2

    .line 1291
    return-void

    .line 1290
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$setBatteryState$1$BatteryStatsService(IIIIIIIIJ)V
    .locals 25
    .param p1, "plugType"    # I
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J

    .line 1270
    move-object/from16 v13, p0

    iget-object v1, v13, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1271
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v0

    .line 1272
    .local v0, "onBattery":Z
    iget-object v2, v13, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1275
    iget-object v14, v13, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move/from16 v15, p2

    move/from16 v16, p3

    move/from16 v17, p1

    move/from16 v18, p4

    move/from16 v19, p5

    move/from16 v20, p6

    move/from16 v21, p7

    move/from16 v22, p8

    move-wide/from16 v23, p9

    invoke-virtual/range {v14 .. v24}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIIIJ)V

    .line 1277
    monitor-exit v1

    return-void

    .line 1279
    .end local v0    # "onBattery":Z
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    iget-object v0, v13, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/16 v1, 0x1f

    const-string v2, "battery-state"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1286
    iget-object v0, v13, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v14, Lcom/android/server/am/-$$Lambda$BatteryStatsService$TD8vKX9utneO-PRBBmoRe5zlDH8;

    move-object v1, v14

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$TD8vKX9utneO-PRBBmoRe5zlDH8;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJ)V

    invoke-virtual {v0, v14}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1292
    return-void

    .line 1279
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public noteAlarmFinish(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 543
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 544
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 545
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 546
    monitor-exit v0

    .line 547
    return-void

    .line 546
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteAlarmStart(Ljava/lang/String;Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "workSource"    # Landroid/os/WorkSource;
    .param p3, "uid"    # I

    .line 536
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 537
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 538
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 539
    monitor-exit v0

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteBleScanResults(Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "numNewResults"    # I

    .line 1201
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1202
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1203
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1204
    monitor-exit v0

    .line 1205
    return-void

    .line 1204
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteBleScanStarted(Landroid/os/WorkSource;Z)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1178
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1179
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1180
    monitor-exit v0

    .line 1181
    return-void

    .line 1180
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteBleScanStopped(Landroid/os/WorkSource;Z)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "isUnoptimized"    # Z

    .line 1185
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1186
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1187
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1188
    monitor-exit v0

    .line 1189
    return-void

    .line 1188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteBluetoothControllerActivity(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 1221
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1222
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1228
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1229
    monitor-exit v0

    .line 1230
    return-void

    .line 1229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1223
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid bluetooth data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-void
.end method

.method public noteChangeWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 15
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "newWs"    # Landroid/os/WorkSource;
    .param p7, "newPid"    # I
    .param p8, "newName"    # Ljava/lang/String;
    .param p9, "newHistoryName"    # Ljava/lang/String;
    .param p10, "newType"    # I
    .param p11, "newUnimportantForLogging"    # Z

    .line 579
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 580
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 581
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->noteChangeWakelockFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;ILandroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 583
    monitor-exit v2

    .line 584
    return-void

    .line 583
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteConnectivityChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "extra"    # Ljava/lang/String;

    .line 738
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 739
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 740
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V

    .line 741
    monitor-exit v0

    .line 742
    return-void

    .line 741
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteDeviceIdleMode(ILjava/lang/String;I)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "activeReason"    # Ljava/lang/String;
    .param p3, "activeUid"    # I

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1151
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;I)V

    .line 1153
    monitor-exit v0

    .line 1154
    return-void

    .line 1153
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteEvent(ILjava/lang/String;I)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 481
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 482
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V

    .line 484
    monitor-exit v0

    .line 485
    return-void

    .line 484
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFlashlightOff(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 902
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 903
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 904
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V

    .line 905
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 907
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 910
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteFlashlightOff(I)V

    .line 912
    return-void

    .line 907
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteFlashlightOn(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 889
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 890
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V

    .line 892
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 894
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 897
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteFlashlightOn(I)V

    .line 899
    return-void

    .line 894
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteFullWifiLockAcquired(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1049
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1050
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1051
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 1052
    monitor-exit v0

    .line 1053
    return-void

    .line 1052
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1091
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1092
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1093
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1094
    monitor-exit v0

    .line 1095
    return-void

    .line 1094
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFullWifiLockReleased(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1057
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1058
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 1059
    monitor-exit v0

    .line 1060
    return-void

    .line 1059
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1099
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1100
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1101
    monitor-exit v0

    .line 1102
    return-void

    .line 1101
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteGpsChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 678
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 679
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 680
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 681
    monitor-exit v0

    .line 682
    return-void

    .line 681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteGpsSignalQuality(I)V
    .locals 2
    .param p1, "signalLevel"    # I

    .line 685
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsSignalQualityLocked(I)V

    .line 687
    monitor-exit v0

    .line 688
    return-void

    .line 687
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteInteractive(Z)V
    .locals 2
    .param p1, "interactive"    # Z

    .line 731
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 732
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 733
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V

    .line 734
    monitor-exit v0

    .line 735
    return-void

    .line 734
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteJobFinish(Ljava/lang/String;II)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I

    .line 515
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 516
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 517
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;II)V

    .line 518
    monitor-exit v0

    .line 519
    return-void

    .line 518
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteJobStart(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 507
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 508
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 509
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V

    .line 510
    monitor-exit v0

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteJobsDeferred(IIJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "numDeferred"    # I
    .param p3, "sinceLast"    # J

    .line 523
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 524
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobsDeferredLocked(IIJ)V

    .line 525
    monitor-exit v0

    .line 526
    return-void

    .line 525
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 613
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 614
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 615
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

    .line 616
    monitor-exit v0

    .line 617
    return-void

    .line 616
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 622
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 623
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 625
    monitor-exit v0

    .line 626
    return-void

    .line 625
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 596
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 597
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 598
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

    .line 599
    monitor-exit v0

    .line 600
    return-void

    .line 599
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 605
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 606
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 608
    monitor-exit v0

    .line 609
    return-void

    .line 608
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteMobileRadioPowerState(IJI)V
    .locals 4
    .param p1, "powerState"    # I
    .param p2, "timestampNs"    # J
    .param p4, "uid"    # I

    .line 745
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 747
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 748
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJI)Z

    move-result v1

    .line 749
    .local v1, "update":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 751
    if-eqz v1, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v2, 0x4

    const-string/jumbo v3, "modem-data"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 754
    :cond_0
    return-void

    .line 749
    .end local v1    # "update":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteModemControllerActivity(Landroid/telephony/ModemActivityInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/telephony/ModemActivityInfo;

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1236
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    .line 1242
    return-void

    .line 1237
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid modem data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    return-void
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1135
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 1136
    return-void
.end method

.method public noteNetworkStatsEnabled()V
    .locals 3

    .line 1140
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1144
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v1, "network-stats-enabled"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1146
    return-void
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 1157
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1158
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;J)V

    .line 1163
    invoke-static {p1}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->notePackageInstalled(Ljava/lang/String;)V

    .line 1165
    monitor-exit v0

    .line 1166
    return-void

    .line 1165
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePackageUninstalled(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1169
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1170
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V

    .line 1172
    monitor-exit v0

    .line 1173
    return-void

    .line 1172
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneDataConnectionState(IZI)V
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z
    .param p3, "serviceType"    # I

    .line 778
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 779
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZI)V

    .line 781
    monitor-exit v0

    .line 782
    return-void

    .line 781
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneOff()V
    .locals 2

    .line 764
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 765
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 766
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 767
    monitor-exit v0

    .line 768
    return-void

    .line 767
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneOn()V
    .locals 2

    .line 757
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 758
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 759
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 760
    monitor-exit v0

    .line 761
    return-void

    .line 760
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 2
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 771
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 772
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 774
    monitor-exit v0

    .line 775
    return-void

    .line 774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneState(I)V
    .locals 3
    .param p1, "state"    # I

    .line 785
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 786
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 787
    .local v0, "simState":I
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 788
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V

    .line 789
    monitor-exit v1

    .line 790
    return-void

    .line 789
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method noteProcessAnr(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 402
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V

    .line 404
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteProcessCrash(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 394
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 395
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V

    .line 396
    const/16 v1, 0x1c

    const/4 v2, 0x2

    invoke-static {v1, p2, p1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 398
    monitor-exit v0

    .line 399
    return-void

    .line 398
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteProcessFinish(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 408
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 409
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V

    .line 410
    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 412
    monitor-exit v0

    .line 413
    return-void

    .line 412
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteProcessStart(Ljava/lang/String;I)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 386
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 387
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V

    .line 388
    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-static {v1, p2, p1, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;I)V

    .line 390
    monitor-exit v0

    .line 391
    return-void

    .line 390
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetAudio()V
    .locals 5

    .line 863
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 864
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 865
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V

    .line 866
    const/16 v1, 0x17

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 870
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->noteResetAudio()V

    .line 872
    monitor-exit v0

    .line 873
    return-void

    .line 872
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetBleScan()V
    .locals 2

    .line 1193
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1194
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetBluetoothScanLocked()V

    .line 1196
    monitor-exit v0

    .line 1197
    return-void

    .line 1196
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetCamera()V
    .locals 5

    .line 951
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 952
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 953
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V

    .line 954
    const/16 v1, 0x19

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 956
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 959
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsServiceInjector;->noteCameraOn(Z)V

    .line 963
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->noteResetCamera()V

    .line 965
    return-void

    .line 956
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteResetFlashlight()V
    .locals 5

    .line 968
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 969
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 970
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V

    .line 971
    const/16 v1, 0x1a

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 973
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->noteResetFlashlight()V

    .line 978
    return-void

    .line 973
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteResetVideo()V
    .locals 5

    .line 876
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 877
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 878
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V

    .line 879
    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 883
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->noteResetVideo()V

    .line 885
    monitor-exit v0

    .line 886
    return-void

    .line 885
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteScreenBrightness(I)V
    .locals 2
    .param p1, "brightness"    # I

    .line 709
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 710
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 711
    const/16 v1, 0x9

    :try_start_0
    invoke-static {v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 712
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 713
    monitor-exit v0

    .line 714
    return-void

    .line 713
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteScreenState(I)V
    .locals 2
    .param p1, "state"    # I

    .line 691
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 693
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 694
    const/16 v1, 0x1d

    :try_start_0
    invoke-static {v1, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 696
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V

    .line 700
    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->updateScreenState(I)V

    .line 702
    invoke-static {p1}, Lcom/oneplus/android/server/power/StandbyDetectInjector;->updateScreenState(I)V

    .line 704
    monitor-exit v0

    .line 706
    return-void

    .line 704
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStartAudio(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 811
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 812
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 813
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 814
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 818
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStartAudio(I)V

    .line 820
    monitor-exit v0

    .line 821
    return-void

    .line 820
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStartCamera(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 915
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 917
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 918
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V

    .line 919
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 921
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 924
    invoke-static {v3}, Lcom/android/server/am/BatteryStatsServiceInjector;->noteCameraOn(Z)V

    .line 928
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStartCamera(I)V

    .line 931
    return-void

    .line 921
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteStartSensor(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 629
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 630
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 631
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V

    .line 632
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 634
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteStartSensor(II)V

    .line 639
    return-void

    .line 634
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteStartVideo(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 837
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 838
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 839
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 840
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 844
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStartVideo(I)V

    .line 846
    monitor-exit v0

    .line 847
    return-void

    .line 846
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStartWakelock(IILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 15
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .line 551
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 552
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 553
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 553
    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 556
    monitor-exit v2

    .line 557
    return-void

    .line 556
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "unimportantForLogging"    # Z

    .line 569
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 570
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 571
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 573
    monitor-exit v0

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStopAudio(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 824
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 825
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 827
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 831
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStopAudio(I)V

    .line 833
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStopCamera(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 934
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 935
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 936
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V

    .line 937
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 939
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 942
    invoke-static {v3}, Lcom/android/server/am/BatteryStatsServiceInjector;->noteCameraOn(Z)V

    .line 946
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStopCamera(I)V

    .line 948
    return-void

    .line 939
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteStopSensor(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "sensor"    # I

    .line 642
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 643
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 644
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V

    .line 645
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;II)V

    .line 647
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 650
    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteStopSensor(II)V

    .line 652
    return-void

    .line 647
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteStopVideo(I)V
    .locals 4
    .param p1, "uid"    # I

    .line 850
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 851
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 852
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 853
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 857
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStopVideo(I)V

    .line 859
    monitor-exit v0

    .line 860
    return-void

    .line 859
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteStopWakelock(IILjava/lang/String;Ljava/lang/String;I)V
    .locals 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 560
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 561
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 562
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    .line 563
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 562
    move v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 564
    monitor-exit v2

    .line 565
    return-void

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 588
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 589
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 591
    monitor-exit v0

    .line 592
    return-void

    .line 591
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteSyncFinish(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 497
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 498
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V

    .line 500
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, p1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 502
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteSyncStart(Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 488
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 489
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 490
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V

    .line 491
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p2, v2, p1, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)V

    .line 493
    monitor-exit v0

    .line 494
    return-void

    .line 493
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteUidProcessState(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 417
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUidProcessStateLocked(II)V

    .line 419
    monitor-exit v0

    .line 420
    return-void

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteUserActivity(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "event"    # I

    .line 717
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 718
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 719
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 720
    monitor-exit v0

    .line 721
    return-void

    .line 720
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteVibratorOff(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 666
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 667
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V

    .line 669
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteVibratorOff(I)V

    .line 674
    return-void

    .line 669
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteVibratorOn(IJ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "durationMillis"    # J

    .line 655
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 656
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V

    .line 658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OpAppRecordInjector;->noteVibratorOn(IJ)V

    .line 663
    return-void

    .line 658
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteWakeUp(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "reasonUid"    # I

    .line 724
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 725
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V

    .line 727
    monitor-exit v0

    .line 728
    return-void

    .line 727
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWakupAlarm(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "workSource"    # Landroid/os/WorkSource;
    .param p4, "tag"    # Ljava/lang/String;

    .line 529
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 530
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 531
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 532
    monitor-exit v0

    .line 533
    return-void

    .line 532
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "csph"    # I

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1120
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1122
    monitor-exit v0

    .line 1123
    return-void

    .line 1122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1126
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1127
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1128
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1129
    monitor-exit v0

    .line 1130
    return-void

    .line 1129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiControllerActivity(Landroid/os/connectivity/WifiActivityEnergyInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/os/connectivity/WifiActivityEnergyInfo;

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1211
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/connectivity/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1216
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/os/connectivity/WifiActivityEnergyInfo;)V

    .line 1217
    return-void

    .line 1212
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "invalid wifi data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1213
    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1084
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1085
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1086
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 1087
    monitor-exit v0

    .line 1088
    return-void

    .line 1087
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiMulticastEnabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1077
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1078
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1079
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 1080
    monitor-exit v0

    .line 1081
    return-void

    .line 1080
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiOff()V
    .locals 2

    .line 802
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 803
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V

    .line 805
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 808
    return-void

    .line 805
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteWifiOn()V
    .locals 2

    .line 793
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 794
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V

    .line 796
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    const/16 v0, 0x71

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 799
    return-void

    .line 796
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteWifiRadioPowerState(IJI)V
    .locals 6
    .param p1, "powerState"    # I
    .param p2, "tsNanos"    # J
    .param p4, "uid"    # I

    .line 982
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 986
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 987
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 988
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 990
    :cond_0
    const-string v1, "inactive"

    goto :goto_1

    .line 989
    :cond_1
    :goto_0
    const-string v1, "active"

    .line 990
    :goto_1
    nop

    .line 991
    .local v1, "type":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wifi-data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 993
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJI)V

    .line 994
    monitor-exit v0

    .line 995
    return-void

    .line 994
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiRssiChanged(I)V
    .locals 2
    .param p1, "newRssi"    # I

    .line 1042
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1043
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1044
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V

    .line 1045
    monitor-exit v0

    .line 1046
    return-void

    .line 1045
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiRunning(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 998
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 999
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1000
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V

    .line 1001
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    const/16 v0, 0x72

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1005
    return-void

    .line 1001
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "oldWs"    # Landroid/os/WorkSource;
    .param p2, "newWs"    # Landroid/os/WorkSource;

    .line 1008
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1009
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1010
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1011
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1012
    const/4 v0, 0x1

    const/16 v1, 0x72

    invoke-static {v1, p2, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1014
    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1016
    return-void

    .line 1011
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteWifiScanStarted(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1063
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1064
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 1066
    monitor-exit v0

    .line 1067
    return-void

    .line 1066
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1105
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1106
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1107
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1108
    monitor-exit v0

    .line 1109
    return-void

    .line 1108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiScanStopped(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1070
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1071
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1072
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 1073
    monitor-exit v0

    .line 1074
    return-void

    .line 1073
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1113
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1114
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1115
    monitor-exit v0

    .line 1116
    return-void

    .line 1115
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiState(ILjava/lang/String;)V
    .locals 2
    .param p1, "wifiState"    # I
    .param p2, "accessPoint"    # Ljava/lang/String;

    .line 1028
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1029
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1030
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V

    .line 1031
    monitor-exit v0

    .line 1032
    return-void

    .line 1031
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiStopped(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1020
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1021
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V

    .line 1022
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1025
    return-void

    .line 1022
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public noteWifiSupplicantStateChanged(IZ)V
    .locals 2
    .param p1, "supplState"    # I
    .param p2, "failedAuth"    # Z

    .line 1035
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1036
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1037
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V

    .line 1038
    monitor-exit v0

    .line 1039
    return-void

    .line 1038
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onCleanupUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 362
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 363
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onCleanupUserLocked(I)V

    .line 364
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onLowPowerModeChanged(Landroid/os/PowerSaveState;)V
    .locals 3
    .param p1, "result"    # Landroid/os/PowerSaveState;

    .line 324
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 326
    monitor-exit v0

    .line 327
    return-void

    .line 326
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onUserRemoved(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 368
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 369
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 370
    monitor-exit v0

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public publish()V
    .locals 3

    .line 227
    const-class v0, Landroid/os/BatteryStatsInternal;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "batterystats"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/am/BatteryStatsServiceInjector;->initInstance(Lcom/android/server/am/BatteryStatsService;Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 234
    return-void
.end method

.method removeIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 380
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 382
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeUid(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 354
    invoke-static {p1}, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->removeUidStats(I)V

    .line 356
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V

    .line 358
    monitor-exit v0

    .line 359
    return-void

    .line 358
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scheduleWriteToDisk()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleWrite()Ljava/util/concurrent/Future;

    .line 344
    return-void
.end method

.method public setBatteryState(IIIIIIIIJ)V
    .locals 16
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I
    .param p9, "chargeTimeToFullSeconds"    # J

    .line 1258
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1262
    iget-boolean v0, v12, Lcom/android/server/am/BatteryStatsService;->mOpFeatrueCollectBatterystats:Z

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, v12, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v12, Lcom/android/server/am/BatteryStatsService;->mNoAutoReset:Z

    move/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p4

    invoke-static {v0, v14, v13, v15, v1}, Lcom/android/server/am/OpBatteryStatsServiceInjector;->collectBatteryStats(Lcom/android/internal/os/BatteryStatsImpl;IIIZ)V

    goto :goto_0

    .line 1262
    :cond_0
    move/from16 v13, p1

    move/from16 v14, p3

    move/from16 v15, p4

    .line 1269
    :goto_0
    iget-object v10, v12, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v11, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Pej9zCsmgLSgNXX-S6WY0nw2EvI;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object v12, v10

    move-object v13, v11

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$Pej9zCsmgLSgNXX-S6WY0nw2EvI;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIIIJ)V

    invoke-virtual {v12, v13}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1293
    return-void
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .locals 6
    .param p1, "delayMillis"    # I

    .line 1814
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POWER_SAVER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1818
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1819
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "battery_charging_state_update_delay"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1823
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1819
    return v3

    .line 1823
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1824
    throw v2
.end method

.method public shutdown()V
    .locals 2

    .line 296
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 300
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 301
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 302
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->shutdown()V

    .line 306
    return-void

    .line 302
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemServicesReady()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 241
    invoke-static {}, Lcom/android/server/am/BatteryStatsServiceInjector;->systemServicesReady()V

    .line 243
    return-void
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .locals 6
    .param p1, "requestUid"    # I

    .line 1723
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1724
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1729
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1730
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1732
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1733
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1739
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1733
    return-object v3

    .line 1734
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUid":I
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1739
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 1735
    :catch_0
    move-exception v2

    .line 1736
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_4
    const-string v3, "BatteryStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Crashed while writing for takeUidSnapshot("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1737
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUid":I
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1739
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1740
    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .locals 7
    .param p1, "requestUids"    # [I

    .line 1748
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1749
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1753
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 1755
    .local v2, "i":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1756
    const-string v3, "get-health-stats-for-uids"

    const/16 v4, 0x1f

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1758
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1759
    :try_start_1
    array-length v4, p1

    .line 1760
    .local v4, "N":I
    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    .line 1761
    .local v5, "results":[Landroid/os/health/HealthStatsParceler;
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1762
    aget v6, p1, v2

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1761
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1764
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1771
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1764
    return-object v5

    .line 1765
    .end local v4    # "N":I
    .end local v5    # "results":[Landroid/os/health/HealthStatsParceler;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "ident":J
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUids":[I
    :try_start_3
    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1771
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :catchall_1
    move-exception v3

    goto :goto_1

    .line 1766
    :catch_0
    move-exception v3

    .line 1769
    .local v3, "ex":Ljava/lang/Exception;
    nop

    .end local v0    # "ident":J
    .end local v2    # "i":I
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUids":[I
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1771
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1772
    throw v3
.end method
