.class public Lcom/android/server/net/NetworkStatsFactory;
.super Ljava/lang/Object;
.source "NetworkStatsFactory.java"


# static fields
.field private static final SANITY_CHECK_NATIVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkStatsFactory"

.field private static final USE_NATIVE_PARSING:Z = true

.field private static final sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNetdService:Landroid/net/INetd;

.field private final mPersistSnapshot:Landroid/net/NetworkStats;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPersistSnapshot"
        }
    .end annotation
.end field

.field private final mStatsXtIfaceAll:Ljava/io/File;

.field private final mStatsXtIfaceFmt:Ljava/io/File;

.field private final mStatsXtUid:Ljava/io/File;

.field private mUseBpfStats:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 139
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/fs/bpf/map_netd_app_uid_stats_map"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsFactory;-><init>(Ljava/io/File;Z)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 4
    .param p1, "procRoot"    # Ljava/io/File;
    .param p2, "useBpfStats"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_all"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    .line 145
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/iface_stat_fmt"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    .line 146
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "net/xt_qtaguid/stats"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    .line 147
    iput-boolean p2, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    .line 148
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    .line 149
    return-void
.end method

.method public static apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Z)V
    .locals 1
    .param p0, "baseTraffic"    # Landroid/net/NetworkStats;
    .param p1, "stackedTraffic"    # Landroid/net/NetworkStats;
    .param p2, "useBpfStats"    # Z

    .line 129
    sget-object v0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, p1, v0, p2}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Ljava/util/Map;Z)V

    .line 131
    return-void
.end method

.method public static augmentWithStackedInterfaces([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "requiredIfaces"    # [Ljava/lang/String;

    .line 102
    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    if-ne p0, v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 111
    .local v0, "relatedIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v1, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

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

    .line 112
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 113
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    :goto_1
    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 120
    .local v1, "outArray":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public static clearStackedIfaces()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 135
    sget-object v0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 136
    return-void
.end method

.method public static javaReadNetworkStatsDetail(Ljava/io/File;I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .locals 9
    .param p0, "detailPath"    # Ljava/io/File;
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 352
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/16 v4, 0x18

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 353
    .local v1, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 355
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x1

    .line 356
    .local v3, "idx":I
    const/4 v4, 0x1

    .line 358
    .local v4, "lastIdx":I
    const/4 v5, 0x0

    .line 361
    .local v5, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v6, Lcom/android/internal/util/ProcFileReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    move-object v5, v6

    .line 362
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 364
    :goto_0
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 365
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v6

    move v3, v6

    .line 366
    add-int/lit8 v6, v4, 0x1

    if-ne v3, v6, :cond_4

    .line 370
    move v4, v3

    .line 372
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 373
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/NetworkManagementSocketTagger;->kernelToTag(Ljava/lang/String;)I

    move-result v6

    iput v6, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 374
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v6

    iput v6, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 375
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v6

    iput v6, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 376
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 377
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 378
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 379
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v6

    iput-wide v6, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 381
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

    .line 384
    :cond_2
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 387
    :cond_3
    invoke-virtual {v5}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    goto :goto_0

    .line 367
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

    .line 392
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

    .line 393
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 394
    nop

    .line 396
    return-object v1

    .line 392
    :catchall_0
    move-exception v6

    goto :goto_1

    .line 389
    :catch_0
    move-exception v6

    .line 390
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

    .line 392
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

    .line 393
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v6
.end method

.method public static native nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;IZ)I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end method

.method public static native nativeReadNetworkStatsDev(Landroid/net/NetworkStats;)I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end method

.method public static noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "stackedIface"    # Ljava/lang/String;
    .param p1, "baseIface"    # Ljava/lang/String;

    .line 88
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 89
    sget-object v0, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_0
    return-void
.end method

.method private static protocolExceptionWithCause(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/net/ProtocolException;
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 429
    new-instance v0, Ljava/net/ProtocolException;

    invoke-direct {v0, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 430
    .local v0, "pe":Ljava/net/ProtocolException;
    invoke-virtual {v0, p1}, Ljava/net/ProtocolException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 431
    return-object v0
.end method

.method private readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 8
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    if-eqz p4, :cond_0

    .line 301
    move-object v0, p4

    .line 302
    .local v0, "stats":Landroid/net/NetworkStats;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    goto :goto_0

    .line 304
    .end local v0    # "stats":Landroid/net/NetworkStats;
    :cond_0
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 306
    .restart local v0    # "stats":Landroid/net/NetworkStats;
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    if-eqz v1, :cond_2

    .line 307
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    monitor-enter v7

    .line 309
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsFactory;->requestSwapActiveStatsMapLocked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    nop

    .line 315
    :try_start_1
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    iget-boolean v6, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    move-object v1, v0

    invoke-static/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;IZ)I

    move-result v1

    if-nez v1, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/net/NetworkStats;->setElapsedRealtime(J)V

    .line 320
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 321
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mPersistSnapshot:Landroid/net/NetworkStats;

    invoke-virtual {v1}, Landroid/net/NetworkStats;->clone()Landroid/net/NetworkStats;

    move-result-object v1

    .line 322
    .local v1, "result":Landroid/net/NetworkStats;
    invoke-virtual {v1, p1, p2, p3}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 323
    monitor-exit v7

    return-object v1

    .line 317
    .end local v1    # "result":Landroid/net/NetworkStats;
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse network stats"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v0    # "stats":Landroid/net/NetworkStats;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .end local p1    # "limitUid":I
    .end local p2    # "limitIfaces":[Ljava/lang/String;
    .end local p3    # "limitTag":I
    .end local p4    # "lastStats":Landroid/net/NetworkStats;
    throw v1

    .line 324
    .restart local v0    # "stats":Landroid/net/NetworkStats;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .restart local p1    # "limitUid":I
    .restart local p2    # "limitIfaces":[Ljava/lang/String;
    .restart local p3    # "limitTag":I
    .restart local p4    # "lastStats":Landroid/net/NetworkStats;
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 310
    :catch_0
    move-exception v1

    .line 311
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stats":Landroid/net/NetworkStats;
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .end local p1    # "limitUid":I
    .end local p2    # "limitIfaces":[Ljava/lang/String;
    .end local p3    # "limitTag":I
    .end local p4    # "lastStats":Landroid/net/NetworkStats;
    throw v2

    .line 324
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "stats":Landroid/net/NetworkStats;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    .restart local p1    # "limitUid":I
    .restart local p2    # "limitIfaces":[Ljava/lang/String;
    .restart local p3    # "limitTag":I
    .restart local p4    # "lastStats":Landroid/net/NetworkStats;
    :goto_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtUid:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-boolean v6, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsFactory;->nativeReadNetworkStatsDetail(Landroid/net/NetworkStats;Ljava/lang/String;I[Ljava/lang/String;IZ)I

    move-result v1

    if-nez v1, :cond_3

    .line 335
    return-object v0

    .line 328
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Failed to parse network stats"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private requestSwapActiveStatsMapLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPersistSnapshot"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 287
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_0

    .line 289
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mNetdService:Landroid/net/INetd;

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->trafficSwapActiveStatsMap()V

    .line 293
    :cond_1
    return-void
.end method


# virtual methods
.method public assertEquals(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V
    .locals 6
    .param p1, "expected"    # Landroid/net/NetworkStats;
    .param p2, "actual"    # Landroid/net/NetworkStats;

    .line 400
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v0

    invoke-virtual {p2}, Landroid/net/NetworkStats;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 405
    const/4 v0, 0x0

    .line 406
    .local v0, "expectedRow":Landroid/net/NetworkStats$Entry;
    const/4 v1, 0x0

    .line 407
    .local v1, "actualRow":Landroid/net/NetworkStats$Entry;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 408
    invoke-virtual {p1, v2, v0}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 409
    invoke-virtual {p2, v2, v1}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 410
    invoke-virtual {v0, v1}, Landroid/net/NetworkStats$Entry;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 411
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

    .line 415
    .end local v2    # "i":I
    :cond_1
    return-void

    .line 401
    .end local v0    # "expectedRow":Landroid/net/NetworkStats$Entry;
    .end local v1    # "actualRow":Landroid/net/NetworkStats$Entry;
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
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

.method public readBpfNetworkStatsDev()Landroid/net/NetworkStats;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 153
    .local v0, "stats":Landroid/net/NetworkStats;
    invoke-static {v0}, Lcom/android/server/net/NetworkStatsFactory;->nativeReadNetworkStatsDev(Landroid/net/NetworkStats;)I

    move-result v1

    if-nez v1, :cond_0

    .line 156
    return-object v0

    .line 154
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

    .line 267
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method public readNetworkStatsDetail(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 3
    .param p1, "limitUid"    # I
    .param p2, "limitIfaces"    # [Ljava/lang/String;
    .param p3, "limitTag"    # I
    .param p4, "lastStats"    # Landroid/net/NetworkStats;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    nop

    .line 273
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetailInternal(I[Ljava/lang/String;ILandroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 277
    .local v0, "stats":Landroid/net/NetworkStats;
    sget-object v1, Lcom/android/server/net/NetworkStatsFactory;->sStackedIfaces:Ljava/util/concurrent/ConcurrentHashMap;

    iget-boolean v2, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStats;->apply464xlatAdjustments(Ljava/util/Map;Z)V

    .line 279
    return-object v0
.end method

.method public readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 170
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsFactory;->readBpfNetworkStatsDev()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0

    .line 173
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 175
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 176
    .local v1, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 178
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .line 180
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceAll:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 182
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 183
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 184
    const/4 v4, -0x1

    iput v4, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 185
    iput v4, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 186
    const/4 v4, 0x0

    iput v4, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 188
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextInt()I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    .line 191
    .local v4, "active":Z
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 192
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 193
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 194
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v5

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 197
    if-eqz v4, :cond_2

    .line 198
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 199
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 200
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 201
    iget-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v7

    add-long/2addr v5, v7

    iput-wide v5, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 204
    :cond_2
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 205
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    .end local v4    # "active":Z
    goto :goto_0

    .line 210
    :cond_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 211
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 212
    nop

    .line 213
    return-object v1

    .line 210
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 207
    :catch_0
    move-exception v4

    .line 208
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

    .line 210
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "stats":Landroid/net/NetworkStats;
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 211
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
.end method

.method public readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsFactory;->mUseBpfStats:Z

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/android/server/net/NetworkStatsFactory;->readBpfNetworkStatsDev()Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0

    .line 229
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 232
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    .line 234
    :cond_1
    new-instance v1, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const/4 v4, 0x6

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 235
    .local v1, "stats":Landroid/net/NetworkStats;
    new-instance v2, Landroid/net/NetworkStats$Entry;

    invoke-direct {v2}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 237
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .line 240
    .local v3, "reader":Lcom/android/internal/util/ProcFileReader;
    :try_start_0
    new-instance v4, Lcom/android/internal/util/ProcFileReader;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsFactory;->mStatsXtIfaceFmt:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/ProcFileReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v4

    .line 241
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V

    .line 243
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->hasMoreData()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 244
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 245
    const/4 v4, -0x1

    iput v4, v2, Landroid/net/NetworkStats$Entry;->uid:I

    .line 246
    iput v4, v2, Landroid/net/NetworkStats$Entry;->set:I

    .line 247
    const/4 v4, 0x0

    iput v4, v2, Landroid/net/NetworkStats$Entry;->tag:I

    .line 249
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 250
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->rxPackets:J

    .line 251
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 252
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->nextLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/NetworkStats$Entry;->txPackets:J

    .line 254
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 255
    invoke-virtual {v3}, Lcom/android/internal/util/ProcFileReader;->finishLine()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    :cond_2
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 261
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 262
    nop

    .line 263
    return-object v1

    .line 260
    :catchall_0
    move-exception v4

    goto :goto_1

    .line 257
    :catch_0
    move-exception v4

    .line 258
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

    .line 260
    .end local v4    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .restart local v1    # "stats":Landroid/net/NetworkStats;
    .restart local v2    # "entry":Landroid/net/NetworkStats$Entry;
    .restart local v3    # "reader":Lcom/android/internal/util/ProcFileReader;
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsFactory;
    :goto_1
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 261
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v4
.end method
