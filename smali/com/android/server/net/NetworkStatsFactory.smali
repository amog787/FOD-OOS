.class public Lcom/android/server/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final SANITY_CHECK_NATIVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static final USE_NATIVE_PARSING:Z = true


# instance fields
.field private mNetdService:Landroid/net/INetd;

.field private mPersistSnapshot:Landroid/net/NetworkStats;

.field private final mPersistentDataLock:Ljava/lang/Object;

.field private final mStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;

.field private mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;

.field private final mUseBpfStats:Z

.field private volatile mVpnInfos:[Lcom/android/internal/net/VpnInfo;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 162
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/fs/bpf/map_netd_app_uid_stats_map"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsFactory;-><init>(Ljava/io/File;Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 5
    .param p1, "procRoot"    # Ljava/io/File;
    .param p2, "useBpfStats"    # Z

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistentDataLock:Ljava/lang/Object;

    .line 84
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/internal/net/VpnInfo;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mVpnInfos:[Lcom/android/internal/net/VpnInfo;

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    .line 167
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 168
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 169
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 170
    iput-boolean p2, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    .line 171
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistentDataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 172
    :try_start_0
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    .line 173
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;

    .line 174
    monitor-exit v0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private adjustForTunAnd464Xlat(Landroid/net/NetworkStats;Landroid/net/NetworkStats;[Lcom/android/internal/net/VpnInfo;)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "uidDetailStats"    # Landroid/net/NetworkStats;
    .param p2, "previousStats"    # Landroid/net/NetworkStats;
    .param p3, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;

    .line 375
    invoke-virtual {p1, p2}, Landroid/net/NetworkStats;->subtract(Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 381
    .local v0, "delta":Landroid/net/NetworkStats;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Ljava/util/Map;)V

    .line 384
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 385
    .local v3, "info":Lcom/android/internal/net/VpnInfo;
    iget v4, v3, Lcom/android/internal/net/VpnInfo;->ownerUid:I

    iget-object v5, v3, Lcom/android/internal/net/VpnInfo;->vpnIface:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/internal/net/VpnInfo;->underlyingIfaces:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6}, Landroid/net/NetworkStats;->migrateTun(ILjava/lang/String;[Ljava/lang/String;)V

    .line 387
    invoke-virtual {v0}, Landroid/net/NetworkStats;->filterDebugEntries()V

    .line 384
    .end local v3    # "info":Lcom/android/internal/net/VpnInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 392
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;

    invoke-virtual {p1}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    .line 394
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mTunAnd464xlatAdjustedStats:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v1

    return-object v1
.end method

.method public static javaReadNetworkStatsDetail(Ljava/io/File;I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .locals 9
    .param p0, "detailPath"    # Ljava/io/File;
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 407
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 408
    .local v1, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 410
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x1

    .line 411
    .local v3, "idx":I
    const/4 v4, 0x1

    .line 413
    .local v4, "lastIdx":I
    const/4 v5, 0x0

    .line 416
    .local v5, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v6, Lcom/android/internal/util/ProcFileReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v6

    .line 417
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 419
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 420
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v6

    move v3, v6

    .line 421
    add-int/lit8 v6, v4, 0x1

    if-ne v3, v6, :cond_4

    .line 425
    move v4, v3

    .line 427
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 428
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 429
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v6

    iput v6, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 430
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v6

    iput v6, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 431
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 432
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 433
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 434
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 436
    if-eqz p2, :cond_0

    iget-object v6, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    invoke-static {p2, v6}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_0
    const/4 v6, -0x1

    if-eq p1, v6, :cond_1

    iget v7, v2, Landroid/net/NetworkStats$Entry;->uid:I

    if-ne p1, v7, :cond_3

    :cond_1
    if-eq p3, v6, :cond_2

    iget v6, v2, Landroid/net/NetworkStats$Entry;->tag:I

    if-ne p3, v6, :cond_3

    .line 439
    :cond_2
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 442
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_0

    .line 422
    :cond_4
    new-instance v6, Ljava/net/ProtocolException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inconsistent idx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " after lastIdx="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .end local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "stats":Landroid/net/NetworkStats;
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "idx":I
    .end local v4    # "lastIdx":I
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .end local p0    # "detailPath":Ljava/io/File;
    .end local p1    # "limitUid":I
    .end local p2    # "limitIfaces":[Ljava/lang/String;
    .end local p3    # "limitTag":I
    throw v6
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    .restart local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "stats":Landroid/net/NetworkStats;
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "idx":I
    .restart local v4    # "lastIdx":I
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local p0    # "detailPath":Ljava/io/File;
    .restart local p1    # "limitUid":I
    .restart local p2    # "limitIfaces":[Ljava/lang/String;
    .restart local p3    # "limitTag":I
    :cond_5
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 448
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 449
    nop

    .line 451
    return-object v1

    .line 447
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 444
    :catch_0
    move-exception v6

    .line 445
    .local v6, "e":Ljava/lang/RuntimeException;
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "problem parsing idx "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/server/net/NetworkStatsFactory;->protocolExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/ProtocolException;

    move-result-object v7

    .end local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "stats":Landroid/net/NetworkStats;
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "idx":I
    .end local v4    # "lastIdx":I
    .end local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .end local p0    # "detailPath":Ljava/io/File;
    .end local p1    # "limitUid":I
    .end local p2    # "limitIfaces":[Ljava/lang/String;
    .end local p3    # "limitTag":I
    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    .end local v6    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "stats":Landroid/net/NetworkStats;
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "idx":I
    .restart local v4    # "lastIdx":I
    .restart local v5    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local p0    # "detailPath":Ljava/io/File;
    .restart local p1    # "limitUid":I
    .restart local p2    # "limitIfaces":[Ljava/lang/String;
    .restart local p3    # "limitTag":I
    :goto_1
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 448
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 449
    throw v6
.end method

.method public static native nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;IZ)I
.end method

.method public static native nativeReadNetworkStatsDev(Landroid/net/NetworkStats;)I
.end method

.method private static protocolExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/ProtocolException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 484
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 485
    .local v0, "pe":Ljava/net/ProtocolException;
    invoke-virtual {v0, p1}, Ljava/net/ProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 486
    return-object v0
.end method

.method private requestSwapActiveStatsMapLocked()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_0

    .line 302
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mNetdService:Landroid/net/INetd;

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V

    .line 305
    return-void
.end method


# virtual methods
.method public apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 1
    .param p1, "baseTraffic"    # Landroid/net/NetworkStats;
    .param p2, "stackedTraffic"    # Landroid/net/NetworkStats;

    .line 158
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2, v0}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;)V

    .line 159
    return-void
.end method

.method public assertEquals(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 6
    .param p1, "expected"    # Landroid/net/NetworkStats;
    .param p2, "actual"    # Landroid/net/NetworkStats;

    .line 455
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "expectedRow":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .line 462
    .local v1, "actualRow":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 463
    invoke-virtual {p1, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 464
    invoke-virtual {p2, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 465
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 466
    :cond_0
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", actual row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 470
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 456
    .end local v0    # "expectedRow":Landroid/net/NetworkStats$Entry;
    .end local v1    # "actualRow":Landroid/net/NetworkStats$Entry;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actual size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public augmentWithStackedInterfaces([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "requiredIfaces"    # [Ljava/lang/String;

    .line 132
    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-ne p1, v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 136
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 141
    .local v0, "relatedIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 142
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 144
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 145
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 150
    .local v1, "outArray":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "stackedIface"    # Ljava/lang/String;
    .param p2, "baseIface"    # Ljava/lang/String;

    .line 105
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    return-void
.end method

.method public readBpfNetworkStatsDev()Landroid/net/NetworkStats;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 178
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 179
    .local v0, "stats":Landroid/net/NetworkStats;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsFactory;->nativeReadNetworkStatsDev(Landroid/net/NetworkStats;)I

    move-result v1

    if-nez v1, :cond_0

    .line 182
    return-object v0

    .line 180
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse bpf iface stats"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public readNetworkStatsDetail()Landroid/net/NetworkStats;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 293
    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v1}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .locals 14
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 320
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsFactory;->mPersistentDataLock:Ljava/lang/Object;

    monitor-enter v2

    .line 322
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsFactory;->mVpnInfos:[Lcom/android/internal/net/VpnInfo;

    move-object v3, v0

    .line 324
    .local v3, "vpnArray":[Lcom/android/internal/net/VpnInfo;
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v0

    move-object v4, v0

    .line 327
    .local v4, "prev":Landroid/net/NetworkStats;
    new-instance v0, Landroid/net/NetworkStats;

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-direct {v0, v5, v6, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    move-object v5, v0

    .line 329
    .local v5, "stats":Landroid/net/NetworkStats;
    iget-boolean v0, v1, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 331
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsFactory;->requestSwapActiveStatsMapLocked()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    nop

    .line 337
    :try_start_2
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    sget-object v11, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    const/4 v12, -0x1

    iget-boolean v13, v1, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    move-object v8, v5

    invoke-static/range {v8 .. v13}, Lcom/android/server/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;IZ)I

    move-result v0

    if-nez v0, :cond_0

    .line 343
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v5}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    .line 344
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0, v5}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    goto :goto_0

    .line 339
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v6, "Failed to parse network stats"

    invoke-direct {v0, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .end local p1    # "limitUid":I
    .end local p2    # "limitIfaces":[Ljava/lang/String;
    .end local p3    # "limitTag":I
    throw v0

    .line 332
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .restart local p1    # "limitUid":I
    .restart local p2    # "limitIfaces":[Ljava/lang/String;
    .restart local p3    # "limitTag":I
    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 333
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .end local p1    # "limitUid":I
    .end local p2    # "limitIfaces":[Ljava/lang/String;
    .end local p3    # "limitTag":I
    throw v6

    .line 346
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .restart local p1    # "limitUid":I
    .restart local p2    # "limitIfaces":[Ljava/lang/String;
    .restart local p3    # "limitTag":I
    :cond_1
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    sget-object v11, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    const/4 v12, -0x1

    iget-boolean v13, v1, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    move-object v8, v5

    invoke-static/range {v8 .. v13}, Lcom/android/server/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;IZ)I

    move-result v0

    if-nez v0, :cond_2

    .line 356
    iput-object v5, v1, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    .line 363
    .end local v5    # "stats":Landroid/net/NetworkStats;
    :goto_0
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/net/NetworkStatsFactory;->adjustForTunAnd464Xlat(Landroid/net/NetworkStats;Landroid/net/NetworkStats;[Lcom/android/internal/net/VpnInfo;)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 366
    .local v0, "adjustedStats":Landroid/net/NetworkStats;
    move v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    :try_start_3
    invoke-virtual {v0, p1, v7, v8}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 367
    monitor-exit v2

    return-object v0

    .line 348
    .end local v0    # "adjustedStats":Landroid/net/NetworkStats;
    .restart local v5    # "stats":Landroid/net/NetworkStats;
    :cond_2
    move v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    new-instance v0, Ljava/io/IOException;

    const-string v9, "Failed to parse network stats"

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .end local p1    # "limitUid":I
    .end local p2    # "limitIfaces":[Ljava/lang/String;
    .end local p3    # "limitTag":I
    throw v0

    .line 368
    .end local v3    # "vpnArray":[Lcom/android/internal/net/VpnInfo;
    .end local v4    # "prev":Landroid/net/NetworkStats;
    .end local v5    # "stats":Landroid/net/NetworkStats;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .restart local p1    # "limitUid":I
    .restart local p2    # "limitIfaces":[Ljava/lang/String;
    .restart local p3    # "limitTag":I
    :catchall_0
    move-exception v0

    move v6, p1

    move-object/from16 v7, p2

    move/from16 v8, p3

    :goto_1
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 196
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsFactory;->readBpfNetworkStatsDev()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 201
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 202
    .local v1, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 204
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .line 206
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 208
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 209
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 210
    const/4 v4, -0x1

    iput v4, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 211
    iput v4, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 212
    const/4 v4, 0x0

    iput v4, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 214
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 217
    .local v4, "active":Z
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 218
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 219
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 220
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 223
    if-eqz v4, :cond_2

    .line 224
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 225
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 226
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 227
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 230
    :cond_2
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 231
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    .end local v4    # "active":Z
    goto :goto_0

    .line 236
    :cond_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 237
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 238
    nop

    .line 239
    return-object v1

    .line 236
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 233
    :catch_0
    move-exception v4

    .line 234
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v5, "problem parsing stats"

    invoke-static {v5, v4}, Lcom/android/server/net/NetworkStatsFactory;->protocolExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/ProtocolException;

    move-result-object v5

    .end local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "stats":Landroid/net/NetworkStats;
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "stats":Landroid/net/NetworkStats;
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 237
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 238
    throw v4
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsFactory;->readBpfNetworkStatsDev()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0

    .line 255
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 258
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 260
    :cond_1
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 261
    .local v1, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 263
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .line 266
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 267
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 269
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 270
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 271
    const/4 v4, -0x1

    iput v4, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 272
    iput v4, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 273
    const/4 v4, 0x0

    iput v4, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 275
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 276
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 277
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 278
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 280
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 281
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 286
    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 287
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 288
    nop

    .line 289
    return-object v1

    .line 286
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 283
    :catch_0
    move-exception v4

    .line 284
    .local v4, "e":Ljava/lang/RuntimeException;
    :try_start_1
    const-string/jumbo v5, "problem parsing stats"

    invoke-static {v5, v4}, Lcom/android/server/net/NetworkStatsFactory;->protocolExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/ProtocolException;

    move-result-object v5

    .end local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v1    # "stats":Landroid/net/NetworkStats;
    .end local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 286
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "stats":Landroid/net/NetworkStats;
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 287
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 288
    throw v4
.end method

.method public updateVpnInfos([Lcom/android/internal/net/VpnInfo;)V
    .locals 1
    .param p1, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;

    .line 120
    invoke-virtual {p1}, [Lcom/android/internal/net/VpnInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/net/VpnInfo;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mVpnInfos:[Lcom/android/internal/net/VpnInfo;

    .line 121
    return-void
.end method
