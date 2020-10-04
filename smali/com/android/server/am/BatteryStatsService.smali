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

.field private static final MAX_LOW_POWER_STATS_SIZE:I = 0x800

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

    .line 188
    invoke-direct {p0}, Lcom/android/internal/app/IBatteryStats$Stub;-><init>()V

    .line 112
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 113
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 114
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 115
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 116
    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->replaceWith(Ljava/lang/String;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    .line 117
    const/16 v0, 0x800

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    .line 118
    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    .line 1238
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mNoAutoReset:Z

    .line 1239
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x13e

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/BatteryStatsService;->mOpFeatrueCollectBatterystats:Z

    .line 190
    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 191
    new-instance v0, Lcom/android/server/am/BatteryStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/BatteryStatsService$1;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    .line 201
    new-instance v0, Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, p0, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object v1, v0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 205
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Landroid/os/OpBatteryStatsInjector;->initInstance(Lcom/android/internal/os/BatteryStatsImpl;Landroid/content/Context;)V

    .line 207
    new-instance v0, Lcom/android/server/am/BatteryExternalStatsWorker;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;-><init>(Landroid/content/Context;Lcom/android/internal/os/BatteryStatsImpl;)V

    iput-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    .line 208
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setExternalStatsSyncLocked(Lcom/android/internal/os/BatteryStatsImpl$ExternalStatsSync;)V

    .line 209
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->setRadioScanningTimeoutLocked(J)V

    .line 211
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    new-instance v1, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v1, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->setPowerProfileLocked(Lcom/android/internal/os/PowerProfile;)V

    .line 212
    return-void
.end method

.method static synthetic access$100(Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "x0"    # Ljava/nio/ByteBuffer;

    .line 94
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

    .line 249
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_0
    :try_start_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    return-void

    .line 253
    :catch_0
    move-exception v0

    .line 255
    goto :goto_0

    .line 251
    :catch_1
    move-exception v0

    .line 252
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    return-void
.end method

.method private doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "i"    # I
    .param p3, "args"    # [Ljava/lang/String;
    .param p4, "enable"    # Z

    .line 1413
    add-int/lit8 p2, p2, 0x1

    .line 1414
    array-length v0, p3

    const/4 v1, -0x1

    if-lt p2, v0, :cond_1

    .line 1415
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

    .line 1416
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1417
    return v1

    .line 1419
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

    .line 1423
    :cond_2
    aget-object v0, p3, p2

    const-string/jumbo v2, "no-auto-reset"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1424
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1425
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setNoAutoReset(Z)V

    .line 1428
    iput-boolean p4, p0, Lcom/android/server/am/BatteryStatsService;->mNoAutoReset:Z

    .line 1430
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1431
    :cond_3
    aget-object v0, p3, p2

    const-string/jumbo v2, "pretend-screen-off"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1432
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1433
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setPretendScreenOff(Z)V

    .line 1434
    monitor-exit v0

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    .line 1436
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

    .line 1437
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1438
    return v1

    .line 1420
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1421
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/BatteryStatsImpl;->setRecordAllHistoryLocked(Z)V

    .line 1422
    monitor-exit v0

    .line 1440
    :goto_2
    return p2

    .line 1422
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

    .line 1407
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1408
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCpuStatsLocked(Ljava/io/PrintWriter;)V

    .line 1409
    monitor-exit v0

    .line 1410
    return-void

    .line 1409
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

    .line 1370
    const-string v0, "Battery stats (batterystats) dump options:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    const-string v0, "  [--checkin] [--proto] [--history] [--history-start] [--charged] [-c]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1372
    const-string v0, "  [--daily] [--reset] [--write] [--new-daily] [--read-daily] [-h] [<package.name>]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    const-string v0, "  --checkin: generate output for a checkin report; will write (and clear) the"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    const-string v0, "             last old completed stats when they had been reset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1375
    const-string v0, "  -c: write the current stats in checkin format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1376
    const-string v0, "  --proto: write the current aggregate stats (without history) in proto format."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1377
    const-string v0, "  --history: show only history data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1378
    const-string v0, "  --history-start <num>: show only history data starting at given time offset."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1379
    const-string v0, "  --history-create-events <num>: create <num> of battery history events."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1380
    const-string v0, "  --charged: only output data since last charged."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    const-string v0, "  --daily: only output full daily data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1382
    const-string v0, "  --reset: reset the stats, clearing all current data."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1383
    const-string v0, "  --write: force write current collected stats to disk."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1384
    const-string v0, "  --new-daily: immediately create and write new daily stats record."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    const-string v0, "  --read-daily: read-load last written daily stats."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    const-string v0, "  --settings: dump the settings key/values related to batterystats"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1387
    const-string v0, "  --cpu: dump cpu stats for debugging purpose"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1388
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1389
    const-string v0, "  -h: print this help text."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    const-string v0, "Battery stats (batterystats) commands:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1391
    const-string v0, "  enable|disable <option>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1392
    const-string v0, "    Enable or disable a running option.  Option state is not saved across boots."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1393
    const-string v0, "    Options are:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    const-string v0, "      full-history: include additional detailed events in battery history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1395
    const-string v0, "          wake_lock_in, alarms and proc events"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1396
    const-string v0, "      no-auto-reset: don\'t automatically reset stats when unplugged"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1397
    const-string v0, "      pretend-screen-off: pretend the screen is off, even if screen state changes"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    return-void
.end method

.method private dumpSettings(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1401
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1402
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->dumpConstantsLocked(Ljava/io/PrintWriter;)V

    .line 1403
    monitor-exit v0

    .line 1404
    return-void

    .line 1403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private enforceSelfOrCallingPermission(I)V
    .locals 1
    .param p1, "uid"    # I

    .line 1302
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 1303
    return-void

    .line 1305
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1306
    return-void
.end method

.method private native getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
.end method

.method private native getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private native getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
.end method

.method public static getService()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .line 292
    sget-object v0, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 293
    return-object v0

    .line 295
    :cond_0
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 296
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    .line 297
    sget-object v1, Lcom/android/server/am/BatteryStatsService;->sService:Lcom/android/internal/app/IBatteryStats;

    return-object v1
.end method

.method private native getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I
.end method

.method private static native nativeWaitWakeup(Ljava/nio/ByteBuffer;)I
.end method

.method private static onlyCaller([I)Z
    .locals 4
    .param p0, "requestUids"    # [I

    .line 1775
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1776
    .local v0, "caller":I
    array-length v1, p0

    .line 1777
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1778
    aget v3, p0, v2

    if-eq v3, v0, :cond_0

    .line 1779
    const/4 v3, 0x0

    return v3

    .line 1777
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1782
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private shouldCollectExternalStats()Z
    .locals 4

    .line 1767
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->getLastCollectionTimeStamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 1768
    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getExternalStatsCollectionRateLimitMs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1767
    :goto_0
    return v0
.end method

.method private syncStats(Ljava/lang/String;I)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "flags"    # I

    .line 260
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsService;->awaitUninterruptibly(Ljava/util/concurrent/Future;)V

    .line 261
    return-void
.end method


# virtual methods
.method addIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 357
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 358
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->addIsolatedUidLocked(II)V

    .line 359
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public computeBatteryTimeRemaining()J
    .locals 5

    .line 453
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 454
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryTimeRemaining(J)J

    move-result-wide v1

    .line 455
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

    .line 456
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

    .line 460
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeChargeTimeRemaining(J)J

    move-result-wide v1

    .line 462
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

    .line 463
    .end local v1    # "time":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1446
    move-object/from16 v1, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v2, "BatteryStatsService"

    invoke-static {v0, v2, v9}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1448
    :cond_0
    const/4 v0, 0x0

    .line 1449
    .local v0, "flags":I
    const/4 v2, 0x0

    .line 1450
    .local v2, "useCheckinFormat":Z
    const/4 v3, 0x0

    .line 1451
    .local v3, "toProto":Z
    const/4 v4, 0x0

    .line 1452
    .local v4, "isRealCheckin":Z
    const/4 v5, 0x0

    .line 1453
    .local v5, "noOutput":Z
    const/4 v6, 0x0

    .line 1454
    .local v6, "writeData":Z
    const-wide/16 v7, -0x1

    .line 1455
    .local v7, "historyStart":J
    const/4 v11, -0x1

    .line 1456
    .local v11, "reqUid":I
    if-eqz v10, :cond_1b

    .line 1457
    const/4 v14, 0x0

    move v15, v11

    move v11, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v0

    .end local v0    # "flags":I
    .local v2, "flags":I
    .local v3, "useCheckinFormat":Z
    .local v4, "toProto":Z
    .local v5, "isRealCheckin":Z
    .local v6, "noOutput":Z
    .local v11, "writeData":Z
    .local v14, "i":I
    .local v15, "reqUid":I
    :goto_0
    array-length v0, v10

    if-ge v14, v0, :cond_1a

    .line 1458
    aget-object v13, v10, v14

    .line 1459
    .local v13, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1460
    const/4 v3, 0x1

    .line 1461
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1462
    :cond_1
    const-string v0, "--history"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1463
    or-int/lit8 v2, v2, 0x8

    goto/16 :goto_1

    .line 1464
    :cond_2
    const-string v0, "--history-start"

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v18, v13

    .end local v13    # "arg":Ljava/lang/String;
    .local v18, "arg":Ljava/lang/String;
    const-wide/16 v12, 0x0

    if-eqz v0, :cond_4

    .line 1465
    or-int/lit8 v2, v2, 0x8

    .line 1466
    add-int/lit8 v14, v14, 0x1

    .line 1467
    array-length v0, v10

    if-lt v14, v0, :cond_3

    .line 1468
    const-string v0, "Missing time argument for --history-since"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1470
    return-void

    .line 1472
    :cond_3
    aget-object v0, v10, v14

    invoke-static {v0, v12, v13}, Lcom/android/internal/util/ParseUtils;->parseLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1473
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 1474
    :cond_4
    const-string v0, "--history-create-events"

    move-object/from16 v12, v18

    .end local v18    # "arg":Ljava/lang/String;
    .local v12, "arg":Ljava/lang/String;
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1475
    add-int/lit8 v13, v14, 0x1

    .line 1476
    .end local v14    # "i":I
    .local v13, "i":I
    array-length v0, v10

    if-lt v13, v0, :cond_5

    .line 1477
    const-string v0, "Missing events argument for --history-create-events"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1479
    return-void

    .line 1481
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

    .line 1482
    .local v3, "events":J
    iget-object v14, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v14

    .line 1483
    :try_start_0
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->createFakeHistoryEvents(J)V

    .line 1484
    const-string v0, "Battery history create events started."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    const/4 v6, 0x1

    .line 1486
    monitor-exit v14

    .line 1487
    .end local v3    # "events":J
    move v14, v13

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    .line 1486
    .restart local v3    # "events":J
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1487
    .end local v13    # "i":I
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .local v3, "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v14    # "i":I
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

    .line 1488
    const/4 v3, 0x1

    .line 1489
    .end local v22    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    or-int/lit8 v2, v2, 0x10

    move/from16 v4, v18

    goto/16 :goto_1

    .line 1490
    .end local v3    # "useCheckinFormat":Z
    .restart local v22    # "useCheckinFormat":Z
    :cond_7
    const-string v0, "--proto"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1491
    const/4 v4, 0x1

    move/from16 v3, v22

    .end local v18    # "toProto":Z
    .restart local v4    # "toProto":Z
    goto/16 :goto_1

    .line 1492
    .end local v4    # "toProto":Z
    .restart local v18    # "toProto":Z
    :cond_8
    const-string v0, "--charged"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1493
    or-int/lit8 v2, v2, 0x2

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    .line 1494
    :cond_9
    const-string v0, "--daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1495
    or-int/lit8 v2, v2, 0x4

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    .line 1496
    :cond_a
    const-string v0, "--reset"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1497
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1498
    :try_start_1
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->resetAllStatsCmdLocked()V

    .line 1499
    const-string v0, "Battery stats reset."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1500
    const/4 v6, 0x1

    .line 1501
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1502
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string v3, "dump"

    const/16 v4, 0x1f

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    move/from16 v4, v18

    move/from16 v3, v22

    goto/16 :goto_1

    .line 1501
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 1503
    :cond_b
    const-string v0, "--write"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1504
    const-string v0, "dump"

    const/16 v3, 0x1f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1505
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1506
    :try_start_3
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeSyncLocked()V

    .line 1507
    const-string v0, "Battery stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1508
    const/4 v6, 0x1

    .line 1509
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

    .line 1510
    :cond_c
    const-string v0, "--new-daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1511
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1512
    :try_start_4
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->recordDailyStatsLocked()V

    .line 1513
    const-string v0, "New daily stats written."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1514
    const/4 v6, 0x1

    .line 1515
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

    .line 1516
    :cond_d
    const-string v0, "--read-daily"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1517
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1518
    :try_start_5
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->readDailyStatsLocked()V

    .line 1519
    const-string v0, "Last daily stats read."

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1520
    const/4 v6, 0x1

    .line 1521
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

    .line 1522
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

    .line 1529
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

    .line 1536
    :cond_10
    const-string v0, "-h"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1537
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1538
    return-void

    .line 1539
    :cond_11
    const-string v0, "--settings"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1540
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpSettings(Ljava/io/PrintWriter;)V

    .line 1541
    return-void

    .line 1542
    :cond_12
    const-string v0, "--cpu"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1543
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpCpuStats(Ljava/io/PrintWriter;)V

    .line 1544
    return-void

    .line 1545
    :cond_13
    const-string v0, "-a"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1546
    or-int/lit8 v2, v2, 0x20

    move/from16 v4, v18

    move/from16 v3, v22

    goto :goto_1

    .line 1547
    :cond_14
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_15

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v0, 0x2d

    if-ne v3, v0, :cond_15

    .line 1548
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1549
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1550
    return-void

    .line 1554
    :cond_15
    :try_start_6
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1555
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v3

    .line 1554
    invoke-virtual {v0, v12, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v0
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1560
    .end local v15    # "reqUid":I
    .local v0, "reqUid":I
    move v15, v0

    move/from16 v4, v18

    move/from16 v3, v22

    .line 1457
    .end local v0    # "reqUid":I
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v15    # "reqUid":I
    :goto_1
    const/4 v0, 0x1

    add-int/2addr v14, v0

    goto/16 :goto_0

    .line 1556
    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .restart local v12    # "arg":Ljava/lang/String;
    .restart local v18    # "toProto":Z
    .restart local v22    # "useCheckinFormat":Z
    :catch_0
    move-exception v0

    .line 1557
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1558
    invoke-direct {v1, v9}, Lcom/android/server/am/BatteryStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1559
    return-void

    .line 1530
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_16
    :goto_2
    const/4 v0, 0x0

    invoke-direct {v1, v9, v14, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 1531
    .end local v14    # "i":I
    .local v0, "i":I
    if-gez v0, :cond_17

    .line 1532
    return-void

    .line 1534
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

    .line 1535
    return-void

    .line 1523
    .end local v0    # "i":I
    .restart local v14    # "i":I
    :cond_18
    :goto_3
    const/4 v0, 0x1

    invoke-direct {v1, v9, v14, v10, v0}, Lcom/android/server/am/BatteryStatsService;->doEnableOrDisable(Ljava/io/PrintWriter;I[Ljava/lang/String;Z)I

    move-result v0

    .line 1524
    .end local v14    # "i":I
    .restart local v0    # "i":I
    if-gez v0, :cond_19

    .line 1525
    return-void

    .line 1527
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

    .line 1528
    return-void

    .line 1457
    .end local v0    # "i":I
    .end local v12    # "arg":Ljava/lang/String;
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .restart local v3    # "useCheckinFormat":Z
    .restart local v4    # "toProto":Z
    .restart local v14    # "i":I
    :cond_1a
    move/from16 v22, v3

    move/from16 v18, v4

    .end local v3    # "useCheckinFormat":Z
    .end local v4    # "toProto":Z
    .restart local v18    # "toProto":Z
    .restart local v22    # "useCheckinFormat":Z
    move v12, v5

    move-wide/from16 v19, v7

    move v13, v11

    move v11, v6

    goto :goto_4

    .line 1456
    .end local v14    # "i":I
    .end local v15    # "reqUid":I
    .end local v18    # "toProto":Z
    .end local v22    # "useCheckinFormat":Z
    .local v0, "flags":I
    .local v2, "useCheckinFormat":Z
    .local v3, "toProto":Z
    .local v4, "isRealCheckin":Z
    .local v5, "noOutput":Z
    .local v6, "writeData":Z
    .local v11, "reqUid":I
    :cond_1b
    move/from16 v22, v2

    move/from16 v18, v3

    move v12, v4

    move v13, v6

    move-wide/from16 v19, v7

    move v15, v11

    move v2, v0

    move v11, v5

    .line 1564
    .end local v0    # "flags":I
    .end local v3    # "toProto":Z
    .end local v4    # "isRealCheckin":Z
    .end local v5    # "noOutput":Z
    .end local v6    # "writeData":Z
    .end local v7    # "historyStart":J
    .local v2, "flags":I
    .local v11, "noOutput":Z
    .local v12, "isRealCheckin":Z
    .local v13, "writeData":Z
    .restart local v15    # "reqUid":I
    .restart local v18    # "toProto":Z
    .local v19, "historyStart":J
    .restart local v22    # "useCheckinFormat":Z
    :goto_4
    if-eqz v11, :cond_1c

    .line 1565
    return-void

    .line 1568
    :cond_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 1570
    .local v30, "ident":J
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1571
    or-int/lit8 v2, v2, 0x40

    .line 1574
    :cond_1d
    const-string v0, "dump"

    const/16 v3, 0x1f

    invoke-direct {v1, v0, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_d

    .line 1576
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1577
    nop

    .line 1579
    if-ltz v15, :cond_1e

    .line 1582
    and-int/lit8 v0, v2, 0xa

    if-nez v0, :cond_1e

    .line 1583
    or-int/lit8 v0, v2, 0x2

    .line 1585
    .end local v2    # "flags":I
    .restart local v0    # "flags":I
    and-int/lit8 v0, v0, -0x11

    move v14, v0

    goto :goto_5

    .line 1589
    .end local v0    # "flags":I
    .restart local v2    # "flags":I
    :cond_1e
    move v14, v2

    .end local v2    # "flags":I
    .local v14, "flags":I
    :goto_5
    const/high16 v0, 0x420000

    if-eqz v18, :cond_23

    .line 1590
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 1592
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v12, :cond_21

    .line 1595
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v3

    .line 1596
    :try_start_8
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->exists()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v0, :cond_20

    .line 1598
    :try_start_9
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1599
    .local v0, "raw":[B
    if-eqz v0, :cond_1f

    .line 1600
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1601
    .local v4, "in":Landroid/os/Parcel;
    array-length v5, v0

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1602
    invoke-virtual {v4, v6}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1603
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

    .line 1606
    .local v5, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v5, v4}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1607
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1608
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, p1

    move-object/from16 v26, v2

    move/from16 v27, v14

    move-wide/from16 v28, v19

    invoke-virtual/range {v23 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1610
    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/ParcelFormatException; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1611
    :try_start_a
    monitor-exit v3

    return-void

    .line 1616
    .end local v0    # "raw":[B
    .end local v4    # "in":Landroid/os/Parcel;
    .end local v5    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_1f
    goto :goto_6

    .line 1613
    :catch_1
    move-exception v0

    .line 1614
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "BatteryStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure reading checkin file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v6, v6, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 1615
    invoke-virtual {v6}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1614
    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1618
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

    .line 1621
    :cond_21
    :goto_7
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3

    .line 1622
    :try_start_b
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v24, v4

    move-object/from16 v25, p1

    move-object/from16 v26, v2

    move/from16 v27, v14

    move-wide/from16 v28, v19

    invoke-virtual/range {v23 .. v29}, Lcom/android/internal/os/BatteryStatsImpl;->dumpProtoLocked(Landroid/content/Context;Ljava/io/FileDescriptor;Ljava/util/List;IJ)V

    .line 1623
    if-eqz v13, :cond_22

    .line 1624
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1626
    :cond_22
    monitor-exit v3

    .line 1628
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto/16 :goto_d

    .line 1626
    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :catchall_6
    move-exception v0

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v0

    .line 1628
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_23
    if-eqz v22, :cond_28

    .line 1629
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v17

    .line 1631
    .local v17, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v12, :cond_26

    .line 1634
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v7, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v7

    .line 1635
    :try_start_c
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->exists()Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz v0, :cond_25

    .line 1637
    :try_start_d
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v0, v0, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->readFully()[B

    move-result-object v0

    .line 1638
    .local v0, "raw":[B
    if-eqz v0, :cond_24

    .line 1639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    move-object v8, v2

    .line 1640
    .local v8, "in":Landroid/os/Parcel;
    array-length v2, v0

    const/4 v3, 0x0

    invoke-virtual {v8, v0, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 1641
    invoke-virtual {v8, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1642
    new-instance v2, Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v24, 0x0

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v3, Lcom/android/internal/os/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    const/16 v26, 0x0

    const/16 v27, 0x0

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mUserManagerUserInfoProvider:Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;

    move-object/from16 v23, v2

    move-object/from16 v25, v3

    move-object/from16 v28, v4

    invoke-direct/range {v23 .. v28}, Lcom/android/internal/os/BatteryStatsImpl;-><init>(Ljava/io/File;Landroid/os/Handler;Lcom/android/internal/os/BatteryStatsImpl$PlatformIdleStateCallback;Lcom/android/internal/os/BatteryStatsImpl$RailEnergyDataCallback;Lcom/android/internal/os/BatteryStatsImpl$UserInfoProvider;)V

    move-object v6, v2

    .line 1645
    .local v6, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v6, v8}, Lcom/android/internal/os/BatteryStatsImpl;->readSummaryFromParcel(Landroid/os/Parcel;)V

    .line 1646
    invoke-virtual {v8}, Landroid/os/Parcel;->recycle()V

    .line 1647
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Landroid/os/ParcelFormatException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    move-object v2, v6

    move-object/from16 v4, p2

    move-object/from16 v5, v17

    move-object/from16 v16, v6

    .end local v6    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .local v16, "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    move v6, v14

    move-object/from16 v21, v7

    move-object/from16 v23, v8

    .end local v8    # "in":Landroid/os/Parcel;
    .local v23, "in":Landroid/os/Parcel;
    move-wide/from16 v7, v19

    :try_start_e
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1649
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->delete()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_2
    .catch Landroid/os/ParcelFormatException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 1650
    :try_start_f
    monitor-exit v21

    return-void

    .line 1652
    .end local v0    # "raw":[B
    .end local v16    # "checkinStats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v23    # "in":Landroid/os/Parcel;
    :catch_2
    move-exception v0

    goto :goto_8

    .line 1638
    .restart local v0    # "raw":[B
    :cond_24
    move-object/from16 v21, v7

    .line 1655
    .end local v0    # "raw":[B
    goto :goto_9

    .line 1652
    :catch_3
    move-exception v0

    move-object/from16 v21, v7

    .line 1653
    .local v0, "e":Ljava/lang/Exception;
    :goto_8
    const-string v2, "BatteryStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure reading checkin file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v4, v4, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    .line 1654
    invoke-virtual {v4}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1653
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1635
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    move-object/from16 v21, v7

    .line 1657
    :goto_9
    monitor-exit v21

    goto :goto_b

    :catchall_7
    move-exception v0

    move-object/from16 v21, v7

    :goto_a
    monitor-exit v21
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_a

    .line 1660
    :cond_26
    :goto_b
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1661
    :try_start_10
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object/from16 v4, p2

    move-object/from16 v5, v17

    move v6, v14

    move-object/from16 v16, v7

    move-wide/from16 v7, v19

    :try_start_11
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V

    .line 1662
    if-eqz v13, :cond_27

    .line 1663
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1665
    :cond_27
    monitor-exit v16

    .line 1667
    .end local v17    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    goto :goto_d

    .line 1665
    .restart local v17    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
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

    .line 1669
    .end local v17    # "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :cond_28
    iget-object v7, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v7

    .line 1670
    :try_start_12
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-object/from16 v4, p2

    move v5, v14

    move v6, v15

    move-object/from16 v16, v7

    move-wide/from16 v7, v19

    :try_start_13
    invoke-virtual/range {v2 .. v8}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V

    .line 1671
    if-eqz v13, :cond_29

    .line 1672
    iget-object v0, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->writeAsyncLocked()V

    .line 1674
    :cond_29
    monitor-exit v16

    .line 1677
    :goto_d
    return-void

    .line 1674
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

    .line 1576
    .end local v14    # "flags":I
    .local v2, "flags":I
    :catchall_d
    move-exception v0

    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public enforceCallingPermission()V
    .locals 5

    .line 1294
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1295
    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    .line 1298
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v3, 0x0

    .line 1297
    const-string v4, "android.permission.UPDATE_DEVICE_STATS"

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    .line 1299
    return-void
.end method

.method public fillLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    .locals 1
    .param p1, "rpmStats"    # Lcom/android/internal/os/RpmStats;

    .line 128
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getLowPowerStats(Lcom/android/internal/os/RpmStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    nop

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public fillRailDataStats(Lcom/android/internal/os/RailStats;)V
    .locals 1
    .param p1, "railStats"    # Lcom/android/internal/os/RailStats;

    .line 138
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getRailEnergyPowerStats(Lcom/android/internal/os/RailStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    nop

    .line 142
    return-void

    .line 140
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public getAwakeTimeBattery()J
    .locals 3

    .line 1282
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimeBattery()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAwakeTimePlugged()J
    .locals 3

    .line 1288
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getAwakeTimePlugged()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;
    .locals 2

    .line 1684
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1685
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getCellularBatteryStats()Landroid/os/connectivity/CellularBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1686
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;
    .locals 2

    .line 1704
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1705
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGpsBatteryStats()Landroid/os/connectivity/GpsBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1706
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

    .line 1790
    new-instance v0, Lcom/android/server/am/HealthStatsBatteryStatsWriter;

    invoke-direct {v0}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;-><init>()V

    .line 1791
    .local v0, "writer":Lcom/android/server/am/HealthStatsBatteryStatsWriter;
    new-instance v1, Landroid/os/health/HealthStatsWriter;

    sget-object v2, Landroid/os/health/UidHealthStats;->CONSTANTS:Landroid/os/health/HealthKeys$Constants;

    invoke-direct {v1, v2}, Landroid/os/health/HealthStatsWriter;-><init>(Landroid/os/health/HealthKeys$Constants;)V

    .line 1792
    .local v1, "uidWriter":Landroid/os/health/HealthStatsWriter;
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BatteryStats$Uid;

    .line 1793
    .local v2, "uid":Landroid/os/BatteryStats$Uid;
    if-eqz v2, :cond_0

    .line 1794
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/HealthStatsBatteryStatsWriter;->writeUid(Landroid/os/health/HealthStatsWriter;Landroid/os/BatteryStats;Landroid/os/BatteryStats$Uid;)V

    .line 1796
    :cond_0
    new-instance v3, Landroid/os/health/HealthStatsParceler;

    invoke-direct {v3, v1}, Landroid/os/health/HealthStatsParceler;-><init>(Landroid/os/health/HealthStatsWriter;)V

    return-object v3
.end method

.method public getPlatformLowPowerStats()Ljava/lang/String;
    .locals 5

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 149
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 150
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 151
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getPlatformLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 152
    .local v0, "bytesWritten":I
    if-gez v0, :cond_0

    .line 153
    const/4 v1, 0x0

    return-object v1

    .line 154
    :cond_0
    if-nez v0, :cond_1

    .line 155
    const-string v1, "Empty"

    return-object v1

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 158
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 159
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 160
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 162
    .end local v0    # "bytesWritten":I
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public getServiceType()I
    .locals 1

    .line 302
    const/16 v0, 0x9

    return v0
.end method

.method public getStatistics()[B
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.BATTERY_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 416
    .local v0, "out":Landroid/os/Parcel;
    const-string v1, "get-stats"

    const/16 v2, 0x1f

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 417
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 418
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 421
    .local v1, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 422
    return-object v1

    .line 419
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

    .line 426
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 431
    .local v0, "out":Landroid/os/Parcel;
    const-string v2, "get-stats"

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 432
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 433
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcel(Landroid/os/Parcel;I)V

    .line 434
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    .line 437
    .local v2, "data":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 439
    :try_start_1
    const-string v3, "battery-stats"

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->fromData([BLjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    .line 440
    :catch_0
    move-exception v3

    .line 441
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "BatteryStatsService"

    const-string v5, "Unable to create shared memory"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 442
    return-object v1

    .line 434
    .end local v2    # "data":[B
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSubsystemLowPowerStats()Ljava/lang/String;
    .locals 5

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 171
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 172
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 173
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0}, Lcom/android/server/am/BatteryStatsService;->getSubsystemLowPowerStats(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 174
    .local v0, "bytesWritten":I
    if-gez v0, :cond_0

    .line 175
    const/4 v1, 0x0

    return-object v1

    .line 176
    :cond_0
    if-nez v0, :cond_1

    .line 177
    const-string v1, "Empty"

    return-object v1

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 180
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mDecoderStat:Ljava/nio/charset/CharsetDecoder;

    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mUtf8BufferStat:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 181
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 182
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mUtf16BufferStat:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 184
    .end local v0    # "bytesWritten":I
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;
    .locals 2

    .line 1694
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1695
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiBatteryStats()Landroid/os/connectivity/WifiBatteryStats;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 1696
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initPowerManagement()V
    .locals 4

    .line 268
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 269
    .local v0, "powerMgr":Landroid/os/PowerManagerInternal;
    invoke-virtual {v0, p0}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    .line 270
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 271
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/16 v3, 0x9

    .line 272
    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v3

    iget-boolean v3, v3, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    .line 271
    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 274
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    new-instance v1, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;

    invoke-direct {v1, p0}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;-><init>(Lcom/android/server/am/BatteryStatsService;)V

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService$WakeupReasonThread;->start()V

    .line 276
    return-void

    .line 274
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

    .line 447
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 448
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isCharging()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 449
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOnBattery()Z
    .locals 1

    .line 1233
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$setBatteryState$0$BatteryStatsService(IIIIIIII)V
    .locals 12
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I

    .line 1273
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 1274
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIII)V

    .line 1276
    monitor-exit v2

    .line 1277
    return-void

    .line 1276
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public synthetic lambda$setBatteryState$1$BatteryStatsService(IIIIIIII)V
    .locals 21
    .param p1, "plugType"    # I
    .param p2, "status"    # I
    .param p3, "health"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I

    .line 1255
    move-object/from16 v11, p0

    iget-object v1, v11, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 1256
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery(II)Z

    move-result v0

    .line 1258
    .local v0, "onBattery":Z
    iget-object v2, v11, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1261
    iget-object v12, v11, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move/from16 v13, p2

    move/from16 v14, p3

    move/from16 v15, p1

    move/from16 v16, p4

    move/from16 v17, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move/from16 v20, p8

    invoke-virtual/range {v12 .. v20}, Lcom/android/internal/os/BatteryStatsImpl;->setBatteryStateLocked(IIIIIIII)V

    .line 1263
    monitor-exit v1

    return-void

    .line 1265
    .end local v0    # "onBattery":Z
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1271
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/16 v1, 0x1f

    const-string v2, "battery-state"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1272
    iget-object v0, v11, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v12, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;

    move-object v1, v12

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p1

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$rRONgIFHr4sujxPESRmo9P5RJ6w;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V

    invoke-virtual {v0, v12}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1278
    return-void

    .line 1265
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

    .line 535
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 536
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 537
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmFinishLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 538
    monitor-exit v0

    .line 539
    return-void

    .line 538
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

    .line 528
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 529
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 530
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteAlarmStartLocked(Ljava/lang/String;Landroid/os/WorkSource;I)V

    .line 531
    monitor-exit v0

    .line 532
    return-void

    .line 531
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

    .line 1189
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1190
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1191
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanResultsFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1192
    monitor-exit v0

    .line 1193
    return-void

    .line 1192
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

    .line 1165
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1166
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStartedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1168
    monitor-exit v0

    .line 1169
    return-void

    .line 1168
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

    .line 1173
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1174
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1175
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteBluetoothScanStoppedFromSourceLocked(Landroid/os/WorkSource;Z)V

    .line 1176
    monitor-exit v0

    .line 1177
    return-void

    .line 1176
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

    .line 1209
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1210
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1215
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1216
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateBluetoothStateLocked(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V

    .line 1217
    monitor-exit v0

    .line 1218
    return-void

    .line 1217
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1211
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid bluetooth data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
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

    .line 571
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 572
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 573
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

    .line 575
    monitor-exit v2

    .line 576
    return-void

    .line 575
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

    .line 729
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 730
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 731
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteConnectivityChangedLocked(ILjava/lang/String;)V

    .line 732
    monitor-exit v0

    .line 733
    return-void

    .line 732
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

    .line 1143
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1144
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1145
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteDeviceIdleModeLocked(ILjava/lang/String;I)V

    .line 1146
    monitor-exit v0

    .line 1147
    return-void

    .line 1146
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

    .line 467
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 468
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 469
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteEventLocked(ILjava/lang/String;I)V

    .line 470
    monitor-exit v0

    .line 471
    return-void

    .line 470
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

    .line 893
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 894
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 895
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOffLocked(I)V

    .line 896
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 898
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 901
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteFlashlightOff(I)V

    .line 903
    return-void

    .line 898
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

    .line 880
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 881
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 882
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFlashlightOnLocked(I)V

    .line 883
    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 885
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 888
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteFlashlightOn(I)V

    .line 890
    return-void

    .line 885
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

    .line 1040
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1041
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1042
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredLocked(I)V

    .line 1043
    monitor-exit v0

    .line 1044
    return-void

    .line 1043
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

    .line 1082
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1083
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockAcquiredFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1085
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
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

    .line 1047
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1048
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1049
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedLocked(I)V

    .line 1050
    monitor-exit v0

    .line 1051
    return-void

    .line 1050
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

    .line 1089
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1090
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1091
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteFullWifiLockReleasedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1092
    monitor-exit v0

    .line 1093
    return-void

    .line 1092
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

    .line 671
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 672
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 674
    monitor-exit v0

    .line 675
    return-void

    .line 674
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

    .line 678
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteGpsSignalQualityLocked(I)V

    .line 680
    monitor-exit v0

    .line 681
    return-void

    .line 680
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

    .line 722
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 723
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteInteractiveLocked(Z)V

    .line 725
    monitor-exit v0

    .line 726
    return-void

    .line 725
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteJobFinish(Ljava/lang/String;IIII)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "stopReason"    # I
    .param p4, "standbyBucket"    # I
    .param p5, "jobid"    # I

    .line 504
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 505
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 506
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobFinishLocked(Ljava/lang/String;II)V

    .line 507
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v3, p2

    move-object v5, p1

    move v7, p3

    move v8, p4

    move v9, p5

    invoke-static/range {v2 .. v9}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIII)I

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

.method public noteJobStart(Ljava/lang/String;III)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "standbyBucket"    # I
    .param p4, "jobid"    # I

    .line 493
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 494
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 495
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobStartLocked(Ljava/lang/String;I)V

    .line 496
    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, -0x1

    move v3, p2

    move-object v5, p1

    move v8, p3

    move v9, p4

    invoke-static/range {v2 .. v9}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;IIII)I

    .line 499
    monitor-exit v0

    .line 500
    return-void

    .line 499
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

    .line 515
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 516
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteJobsDeferredLocked(IIJ)V

    .line 517
    monitor-exit v0

    .line 518
    return-void

    .line 517
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

    .line 605
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 606
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 607
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinish(Ljava/lang/String;Ljava/lang/String;I)V

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

.method public noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 614
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 615
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 616
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockFinishFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 617
    monitor-exit v0

    .line 618
    return-void

    .line 617
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

    .line 588
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 589
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 590
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStart(Ljava/lang/String;Ljava/lang/String;I)V

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

.method public noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "historyName"    # Ljava/lang/String;
    .param p3, "workSource"    # Landroid/os/WorkSource;

    .line 597
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 598
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 599
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteLongPartialWakelockStartFromSource(Ljava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;)V

    .line 600
    monitor-exit v0

    .line 601
    return-void

    .line 600
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

    .line 736
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 738
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 739
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteMobileRadioPowerStateLocked(IJI)Z

    move-result v1

    .line 740
    .local v1, "update":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 742
    if-eqz v1, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const/4 v2, 0x4

    const-string/jumbo v3, "modem-data"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 745
    :cond_0
    return-void

    .line 740
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

    .line 1222
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1224
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ModemActivityInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateMobileRadioState(Landroid/telephony/ModemActivityInfo;)V

    .line 1230
    return-void

    .line 1225
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid modem data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    return-void
.end method

.method public noteNetworkInterfaceType(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "networkType"    # I

    .line 1125
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1126
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1127
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteNetworkInterfaceTypeLocked(Ljava/lang/String;I)V

    .line 1128
    monitor-exit v0

    .line 1129
    return-void

    .line 1128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteNetworkStatsEnabled()V
    .locals 3

    .line 1133
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1137
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    const-string/jumbo v1, "network-stats-enabled"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleSync(Ljava/lang/String;I)Ljava/util/concurrent/Future;

    .line 1139
    return-void
.end method

.method public notePackageInstalled(Ljava/lang/String;J)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "versionCode"    # J

    .line 1150
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1151
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageInstalledLocked(Ljava/lang/String;J)V

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

.method public notePackageUninstalled(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 1157
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1158
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePackageUninstalledLocked(Ljava/lang/String;)V

    .line 1160
    monitor-exit v0

    .line 1161
    return-void

    .line 1160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneDataConnectionState(IZ)V
    .locals 2
    .param p1, "dataType"    # I
    .param p2, "hasData"    # Z

    .line 769
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 770
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneDataConnectionStateLocked(IZ)V

    .line 772
    monitor-exit v0

    .line 773
    return-void

    .line 772
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneOff()V
    .locals 2

    .line 755
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 756
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 757
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOffLocked()V

    .line 758
    monitor-exit v0

    .line 759
    return-void

    .line 758
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notePhoneOn()V
    .locals 2

    .line 748
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 749
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 750
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneOnLocked()V

    .line 751
    monitor-exit v0

    .line 752
    return-void

    .line 751
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

    .line 762
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 763
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 764
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneSignalStrengthLocked(Landroid/telephony/SignalStrength;)V

    .line 765
    monitor-exit v0

    .line 766
    return-void

    .line 765
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

    .line 776
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 777
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 778
    .local v0, "simState":I
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v1

    .line 779
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/os/BatteryStatsImpl;->notePhoneStateLocked(II)V

    .line 780
    monitor-exit v1

    .line 781
    return-void

    .line 780
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

    .line 385
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 386
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessAnrLocked(Ljava/lang/String;I)V

    .line 387
    monitor-exit v0

    .line 388
    return-void

    .line 387
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

    .line 377
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessCrashLocked(Ljava/lang/String;I)V

    .line 379
    const/16 v1, 0x1c

    const/4 v2, 0x2

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 381
    monitor-exit v0

    .line 382
    return-void

    .line 381
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

    .line 391
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 392
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessFinishLocked(Ljava/lang/String;I)V

    .line 393
    const/16 v1, 0x1c

    const/4 v2, 0x0

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 395
    monitor-exit v0

    .line 396
    return-void

    .line 395
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

    .line 369
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteProcessStartLocked(Ljava/lang/String;I)V

    .line 371
    const/16 v1, 0x1c

    const/4 v2, 0x1

    invoke-static {v1, p2, p1, v2}, Landroid/util/StatsLog;->write(IILjava/lang/String;I)I

    .line 373
    monitor-exit v0

    .line 374
    return-void

    .line 373
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetAudio()V
    .locals 5

    .line 854
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 855
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetAudioLocked()V

    .line 857
    const/16 v1, 0x17

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 861
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->noteResetAudio()V

    .line 863
    monitor-exit v0

    .line 864
    return-void

    .line 863
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetBleScan()V
    .locals 2

    .line 1181
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1182
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1183
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetBluetoothScanLocked()V

    .line 1184
    monitor-exit v0

    .line 1185
    return-void

    .line 1184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteResetCamera()V
    .locals 5

    .line 942
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 943
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 944
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetCameraLocked()V

    .line 945
    const/16 v1, 0x19

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 947
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 950
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/BatteryStatsServiceInjector;->noteCameraOn(Z)V

    .line 954
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->noteResetCamera()V

    .line 956
    return-void

    .line 947
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

    .line 959
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 960
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 961
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetFlashlightLocked()V

    .line 962
    const/16 v1, 0x1a

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 964
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 967
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->noteResetFlashlight()V

    .line 969
    return-void

    .line 964
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

    .line 867
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 868
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 869
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteResetVideoLocked()V

    .line 870
    const/16 v1, 0x18

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 874
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->noteResetVideo()V

    .line 876
    monitor-exit v0

    .line 877
    return-void

    .line 876
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

    .line 700
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 701
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 702
    const/16 v1, 0x9

    :try_start_0
    invoke-static {v1, p1}, Landroid/util/StatsLog;->write(II)I

    .line 703
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenBrightnessLocked(I)V

    .line 704
    monitor-exit v0

    .line 705
    return-void

    .line 704
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

    .line 684
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 686
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 687
    const/16 v1, 0x1d

    :try_start_0
    invoke-static {v1, p1}, Landroid/util/StatsLog;->write(II)I

    .line 689
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteScreenStateLocked(I)V

    .line 693
    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStatsInjector;->updateScreenState(I)V

    .line 695
    monitor-exit v0

    .line 697
    return-void

    .line 695
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

    .line 802
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->enforceSelfOrCallingPermission(I)V

    .line 803
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOnLocked(I)V

    .line 805
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 809
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStartAudio(I)V

    .line 811
    monitor-exit v0

    .line 812
    return-void

    .line 811
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

    .line 906
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 908
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 909
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOnLocked(I)V

    .line 910
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 912
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    invoke-static {v3}, Lcom/android/server/am/BatteryStatsServiceInjector;->noteCameraOn(Z)V

    .line 919
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStartCamera(I)V

    .line 922
    return-void

    .line 912
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

    .line 621
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 622
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartSensorLocked(II)V

    .line 624
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, p2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I

    .line 626
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteStartSensor(II)V

    .line 632
    return-void

    .line 626
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

    .line 828
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->enforceSelfOrCallingPermission(I)V

    .line 829
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOnLocked(I)V

    .line 831
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 835
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStartVideo(I)V

    .line 837
    monitor-exit v0

    .line 838
    return-void

    .line 837
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

    .line 543
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 544
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 545
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    .line 546
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    .line 547
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 545
    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v14}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IZJJ)V

    .line 548
    monitor-exit v2

    .line 549
    return-void

    .line 548
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

    .line 561
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 562
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 563
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/os/BatteryStatsImpl;->noteStartWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;IZ)V

    .line 565
    monitor-exit v0

    .line 566
    return-void

    .line 565
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

    .line 815
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->enforceSelfOrCallingPermission(I)V

    .line 816
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 817
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteAudioOffLocked(I)V

    .line 818
    const/16 v1, 0x17

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 822
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStopAudio(I)V

    .line 824
    monitor-exit v0

    .line 825
    return-void

    .line 824
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

    .line 925
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 926
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 927
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteCameraOffLocked(I)V

    .line 928
    const/16 v1, 0x19

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 930
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    invoke-static {v3}, Lcom/android/server/am/BatteryStatsServiceInjector;->noteCameraOn(Z)V

    .line 937
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStopCamera(I)V

    .line 939
    return-void

    .line 930
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

    .line 635
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 636
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 637
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopSensorLocked(II)V

    .line 638
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, p2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;II)I

    .line 640
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    invoke-static {p1, p2}, Lcom/android/server/am/OpAppRecordInjector;->noteStopSensor(II)V

    .line 645
    return-void

    .line 640
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

    .line 841
    invoke-direct {p0, p1}, Lcom/android/server/am/BatteryStatsService;->enforceSelfOrCallingPermission(I)V

    .line 842
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 843
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVideoOffLocked(I)V

    .line 844
    const/16 v1, 0x18

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p1, v2, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;I)I

    .line 848
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteStopVideo(I)V

    .line 850
    monitor-exit v0

    .line 851
    return-void

    .line 850
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

    .line 552
    move-object v1, p0

    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 553
    iget-object v2, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2

    .line 554
    :try_start_0
    iget-object v3, v1, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v6, 0x0

    .line 555
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 554
    move v4, p1

    move/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v3 .. v13}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeLocked(IILandroid/os/WorkSource$WorkChain;Ljava/lang/String;Ljava/lang/String;IJJ)V

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

.method public noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "pid"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "historyName"    # Ljava/lang/String;
    .param p5, "type"    # I

    .line 580
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 581
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/os/BatteryStatsImpl;->noteStopWakeFromSourceLocked(Landroid/os/WorkSource;ILjava/lang/String;Ljava/lang/String;I)V

    .line 583
    monitor-exit v0

    .line 584
    return-void

    .line 583
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

    .line 483
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 484
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncFinishLocked(Ljava/lang/String;I)V

    .line 486
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, p2, v2, p1, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)I

    .line 488
    monitor-exit v0

    .line 489
    return-void

    .line 488
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

    .line 474
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 475
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 476
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteSyncStartLocked(Ljava/lang/String;I)V

    .line 477
    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p2, v2, p1, v3}, Landroid/util/StatsLog;->write_non_chained(IILjava/lang/String;Ljava/lang/String;I)I

    .line 479
    monitor-exit v0

    .line 480
    return-void

    .line 479
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method noteUidProcessState(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "state"    # I

    .line 400
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 401
    const/16 v1, 0x1b

    .line 402
    :try_start_0
    invoke-static {p2}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v2

    .line 401
    invoke-static {v1, p1, v2}, Landroid/util/StatsLog;->write(III)I

    .line 404
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUidProcessStateLocked(II)V

    .line 405
    monitor-exit v0

    .line 406
    return-void

    .line 405
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

    .line 708
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 709
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 710
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteUserActivityLocked(II)V

    .line 711
    monitor-exit v0

    .line 712
    return-void

    .line 711
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

    .line 659
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 660
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 661
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOffLocked(I)V

    .line 662
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 665
    invoke-static {p1}, Lcom/android/server/am/OpAppRecordInjector;->noteVibratorOff(I)V

    .line 667
    return-void

    .line 662
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

    .line 648
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 649
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/os/BatteryStatsImpl;->noteVibratorOnLocked(IJ)V

    .line 651
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    invoke-static {p1, p2, p3}, Lcom/android/server/am/OpAppRecordInjector;->noteVibratorOn(IJ)V

    .line 656
    return-void

    .line 651
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

    .line 715
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 716
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 717
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakeUpLocked(Ljava/lang/String;I)V

    .line 718
    monitor-exit v0

    .line 719
    return-void

    .line 718
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

    .line 521
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 522
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWakupAlarmLocked(Ljava/lang/String;ILandroid/os/WorkSource;Ljava/lang/String;)V

    .line 524
    monitor-exit v0

    .line 525
    return-void

    .line 524
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

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1111
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStartedFromSourceLocked(Landroid/os/WorkSource;I)V

    .line 1113
    monitor-exit v0

    .line 1114
    return-void

    .line 1113
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

    .line 1117
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1118
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiBatchedScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1120
    monitor-exit v0

    .line 1121
    return-void

    .line 1120
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiControllerActivity(Landroid/net/wifi/WifiActivityEnergyInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/net/wifi/WifiActivityEnergyInfo;

    .line 1197
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1199
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsImpl;->updateWifiState(Landroid/net/wifi/WifiActivityEnergyInfo;)V

    .line 1205
    return-void

    .line 1200
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid wifi data given: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    return-void
.end method

.method public noteWifiMulticastDisabled(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 1075
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1076
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1077
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastDisabledLocked(I)V

    .line 1078
    monitor-exit v0

    .line 1079
    return-void

    .line 1078
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

    .line 1068
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1069
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1070
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiMulticastEnabledLocked(I)V

    .line 1071
    monitor-exit v0

    .line 1072
    return-void

    .line 1071
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public noteWifiOff()V
    .locals 2

    .line 793
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 794
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOffLocked()V

    .line 796
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    const/16 v0, 0x71

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

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

.method public noteWifiOn()V
    .locals 2

    .line 784
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 785
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiOnLocked()V

    .line 787
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 788
    const/16 v0, 0x71

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/util/StatsLog;->write(II)I

    .line 790
    return-void

    .line 787
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

    .line 973
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 977
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 979
    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_0

    .line 981
    :cond_0
    const-string v1, "inactive"

    goto :goto_1

    .line 980
    :cond_1
    :goto_0
    const-string v1, "active"

    .line 981
    :goto_1
    nop

    .line 982
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

    .line 984
    .end local v1    # "type":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRadioPowerState(IJI)V

    .line 985
    monitor-exit v0

    .line 986
    return-void

    .line 985
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

    .line 1033
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1034
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1035
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRssiChangedLocked(I)V

    .line 1036
    monitor-exit v0

    .line 1037
    return-void

    .line 1036
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

    .line 989
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 990
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 991
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningLocked(Landroid/os/WorkSource;)V

    .line 992
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 994
    const/16 v0, 0x72

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 996
    return-void

    .line 992
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

    .line 999
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1000
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1001
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiRunningChangedLocked(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 1002
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1003
    const/4 v0, 0x1

    const/16 v1, 0x72

    invoke-static {v1, p2, v0}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1005
    const/4 v0, 0x0

    invoke-static {v1, p1, v0}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1007
    return-void

    .line 1002
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

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1055
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1056
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedLocked(I)V

    .line 1057
    monitor-exit v0

    .line 1058
    return-void

    .line 1057
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

    .line 1096
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1097
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1098
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStartedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1099
    monitor-exit v0

    .line 1100
    return-void

    .line 1099
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

    .line 1061
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1062
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1063
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedLocked(I)V

    .line 1064
    monitor-exit v0

    .line 1065
    return-void

    .line 1064
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

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1104
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1105
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiScanStoppedFromSourceLocked(Landroid/os/WorkSource;)V

    .line 1106
    monitor-exit v0

    .line 1107
    return-void

    .line 1106
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

    .line 1019
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1020
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1021
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStateLocked(ILjava/lang/String;)V

    .line 1022
    monitor-exit v0

    .line 1023
    return-void

    .line 1022
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

    .line 1010
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1011
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1012
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiStoppedLocked(Landroid/os/WorkSource;)V

    .line 1013
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1014
    const/16 v0, 0x72

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/util/StatsLog;->write(ILandroid/os/WorkSource;I)V

    .line 1016
    return-void

    .line 1013
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

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1027
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 1028
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->noteWifiSupplicantStateChangedLocked(IZ)V

    .line 1029
    monitor-exit v0

    .line 1030
    return-void

    .line 1029
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

    .line 345
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 346
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onCleanupUserLocked(I)V

    .line 347
    monitor-exit v0

    .line 348
    return-void

    .line 347
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

    .line 307
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 308
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v2, p1, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/internal/os/BatteryStatsImpl;->notePowerSaveModeLocked(Z)V

    .line 309
    monitor-exit v0

    .line 310
    return-void

    .line 309
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

    .line 351
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->onUserRemovedLocked(I)V

    .line 353
    monitor-exit v0

    .line 354
    return-void

    .line 353
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public publish()V
    .locals 3

    .line 215
    const-class v0, Landroid/os/BatteryStatsInternal;

    new-instance v1, Lcom/android/server/am/BatteryStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BatteryStatsService$LocalService;-><init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/BatteryStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0}, Lcom/android/server/am/BatteryStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "batterystats"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-static {p0, v0, v1}, Lcom/android/server/am/BatteryStatsServiceInjector;->initInstance(Lcom/android/server/am/BatteryStatsService;Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/server/am/BatteryExternalStatsWorker;)V

    .line 222
    return-void
.end method

.method removeIsolatedUid(II)V
    .locals 2
    .param p1, "isolatedUid"    # I
    .param p2, "appUid"    # I

    .line 363
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/os/BatteryStatsImpl;->scheduleRemoveIsolatedUidLocked(II)V

    .line 365
    monitor-exit v0

    .line 366
    return-void

    .line 365
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

    .line 337
    invoke-static {p1}, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->removeUidStats(I)V

    .line 339
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 340
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1, p1}, Lcom/android/internal/os/BatteryStatsImpl;->removeUidStatsLocked(I)V

    .line 341
    monitor-exit v0

    .line 342
    return-void

    .line 341
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public scheduleWriteToDisk()V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleWrite()Ljava/util/concurrent/Future;

    .line 327
    return-void
.end method

.method public setBatteryState(IIIIIIII)V
    .locals 16
    .param p1, "status"    # I
    .param p2, "health"    # I
    .param p3, "plugType"    # I
    .param p4, "level"    # I
    .param p5, "temp"    # I
    .param p6, "volt"    # I
    .param p7, "chargeUAh"    # I
    .param p8, "chargeFullUAh"    # I

    .line 1245
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/BatteryStatsService;->enforceCallingPermission()V

    .line 1248
    iget-boolean v0, v10, Lcom/android/server/am/BatteryStatsService;->mOpFeatrueCollectBatterystats:Z

    if-eqz v0, :cond_0

    .line 1249
    iget-object v0, v10, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-boolean v1, v10, Lcom/android/server/am/BatteryStatsService;->mNoAutoReset:Z

    move/from16 v11, p1

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-static {v0, v12, v11, v13, v1}, Lcom/android/server/am/OpBatteryStatsServiceInjector;->collectBatteryStats(Lcom/android/internal/os/BatteryStatsImpl;IIIZ)V

    goto :goto_0

    .line 1248
    :cond_0
    move/from16 v11, p1

    move/from16 v12, p3

    move/from16 v13, p4

    .line 1254
    :goto_0
    iget-object v14, v10, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    new-instance v15, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZxbqtJ7ozYmzYFkkNV3m_QRd0Sk;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/-$$Lambda$BatteryStatsService$ZxbqtJ7ozYmzYFkkNV3m_QRd0Sk;-><init>(Lcom/android/server/am/BatteryStatsService;IIIIIIII)V

    invoke-virtual {v14, v15}, Lcom/android/server/am/BatteryExternalStatsWorker;->scheduleRunnable(Ljava/lang/Runnable;)V

    .line 1279
    return-void
.end method

.method public setChargingStateUpdateDelayMillis(I)Z
    .locals 6
    .param p1, "delayMillis"    # I

    .line 1805
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.POWER_SAVER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1806
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1809
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1810
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const-string v3, "battery_charging_state_update_delay"

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1814
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1810
    return v3

    .line 1814
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public shutdown()V
    .locals 2

    .line 279
    const-string v0, "BatteryStats"

    const-string v1, "Writing battery stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string/jumbo v0, "shutdown"

    const/16 v1, 0x1f

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 283
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsImpl;->shutdownLocked()V

    .line 285
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mWorker:Lcom/android/server/am/BatteryExternalStatsWorker;

    invoke-virtual {v0}, Lcom/android/server/am/BatteryExternalStatsWorker;->shutdown()V

    .line 289
    return-void

    .line 285
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

    .line 225
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->systemServicesReady(Landroid/content/Context;)V

    .line 226
    return-void
.end method

.method public takeUidSnapshot(I)Landroid/os/health/HealthStatsParceler;
    .locals 6
    .param p1, "requestUid"    # I

    .line 1714
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1715
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1718
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1720
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1721
    const-string v2, "get-health-stats-for-uids"

    const/16 v3, 0x1f

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1723
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1724
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1724
    return-object v3

    .line 1725
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

    .line 1730
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :catchall_1
    move-exception v2

    goto :goto_0

    .line 1726
    :catch_0
    move-exception v2

    .line 1727
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

    .line 1728
    nop

    .end local v0    # "ident":J
    .end local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .end local p1    # "requestUid":I
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1730
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUid":I
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public takeUidSnapshots([I)[Landroid/os/health/HealthStatsParceler;
    .locals 7
    .param p1, "requestUids"    # [I

    .line 1739
    invoke-static {p1}, Lcom/android/server/am/BatteryStatsService;->onlyCaller([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1740
    iget-object v0, p0, Lcom/android/server/am/BatteryStatsService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "android.permission.BATTERY_STATS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1744
    .local v0, "ident":J
    const/4 v2, -0x1

    .line 1746
    .local v2, "i":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/am/BatteryStatsService;->shouldCollectExternalStats()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1747
    const-string v3, "get-health-stats-for-uids"

    const/16 v4, 0x1f

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->syncStats(Ljava/lang/String;I)V

    .line 1749
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/BatteryStatsService;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1750
    :try_start_1
    array-length v4, p1

    .line 1751
    .local v4, "N":I
    new-array v5, v4, [Landroid/os/health/HealthStatsParceler;

    .line 1752
    .local v5, "results":[Landroid/os/health/HealthStatsParceler;
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1753
    aget v6, p1, v2

    invoke-virtual {p0, v6}, Lcom/android/server/am/BatteryStatsService;->getHealthStatsForUidLocked(I)Landroid/os/health/HealthStatsParceler;

    move-result-object v6

    aput-object v6, v5, v2

    .line 1752
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1755
    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1762
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1755
    return-object v5

    .line 1756
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

    .line 1762
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :catchall_1
    move-exception v3

    goto :goto_1

    .line 1757
    :catch_0
    move-exception v3

    .line 1760
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

    .line 1762
    .end local v3    # "ex":Ljava/lang/Exception;
    .restart local v0    # "ident":J
    .restart local v2    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/BatteryStatsService;
    .restart local p1    # "requestUids":[I
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
