.class public final Lcom/android/server/connectivity/IpConnectivityMetrics;
.super Lcom/android/server/SystemService;
.source "IpConnectivityMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;,
        Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;,
        Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_BUFFER_SIZE:I = 0x7d0

.field private static final DEFAULT_LOG_SIZE:I = 0x1f4

.field private static final ERROR_RATE_LIMITED:I = -0x1

.field private static final MAXIMUM_BUFFER_SIZE:I = 0x4e20

.field private static final MAXIMUM_CONNECT_LATENCY_RECORDS:I = 0x4e20

.field private static final NYC:I = 0x0

.field private static final NYC_MR1:I = 0x1

.field private static final NYC_MR2:I = 0x2

.field private static final READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_NAME:Ljava/lang/String; = "connmetrics"

.field private static final TAG:Ljava/lang/String;

.field public static final VERSION:I = 0x2


# instance fields
.field public final impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

.field private final mBuckets:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/internal/util/TokenBucket;",
            ">;"
        }
    .end annotation
.end field

.field private mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mCapacity:I

.field private final mCapacityGetter:Ljava/util/function/ToIntFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/ToIntFunction<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field final mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

.field private mDropped:I

.field private final mEventLog:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const-class v0, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    .line 366
    sget-object v0, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$S6t43cbsv7uQTbniMoTEFVB8Tfw;->INSTANCE:Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$S6t43cbsv7uQTbniMoTEFVB8Tfw;

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .line 130
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityMetrics;->READ_BUFFER_SIZE:Ljava/util/function/ToIntFunction;

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;-><init>(Landroid/content/Context;Ljava/util/function/ToIntFunction;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/ToIntFunction;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/ToIntFunction<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p2, "capacityGetter":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Landroid/content/Context;>;"
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 88
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;)V

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    .line 99
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/ConnectivityMetricsEvent;

    const/16 v2, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    .line 115
    nop

    .line 116
    invoke-static {}, Lcom/android/server/connectivity/IpConnectivityMetrics;->makeRateLimitingBuckets()Landroid/util/ArrayMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    .line 120
    new-instance v0, Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-direct {v0}, Lcom/android/server/connectivity/DefaultNetworkMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    .line 125
    iput-object p2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    .line 126
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    .line 127
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/IpConnectivityMetrics;Landroid/net/ConnectivityMetricsEvent;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;
    .param p1, "x1"    # Landroid/net/ConnectivityMetricsEvent;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->append(Landroid/net/ConnectivityMetricsEvent;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdFlush(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdListAsTextProto(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/OutputStream;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;
    .param p1, "x1"    # Ljava/io/OutputStream;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdListAsBinaryProto(Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/IpConnectivityMetrics;Ljava/io/PrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/IpConnectivityMetrics;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->cmdList(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private append(Landroid/net/ConnectivityMetricsEvent;)I
    .locals 3
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .line 166
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 168
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v1, v2

    .line 169
    .local v1, "left":I
    if-nez p1, :cond_0

    .line 170
    monitor-exit v0

    return v1

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/IpConnectivityMetrics;->isRateLimited(Landroid/net/ConnectivityMetricsEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    const/4 v2, -0x1

    monitor-exit v0

    return v2

    .line 176
    :cond_1
    if-nez v1, :cond_2

    .line 177
    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 178
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 180
    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    add-int/lit8 v2, v1, -0x1

    monitor-exit v0

    return v2

    .line 182
    .end local v1    # "left":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cmdFlush(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 223
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->flushEncodedOutput()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private cmdList(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 231
    const-string/jumbo v0, "metrics events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getEvents()Ljava/util/List;

    move-result-object v0

    .line 233
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Landroid/net/ConnectivityMetricsEvent;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityMetricsEvent;

    .line 234
    .local v2, "ev":Landroid/net/ConnectivityMetricsEvent;
    invoke-virtual {v2}, Landroid/net/ConnectivityMetricsEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    .end local v2    # "ev":Landroid/net/ConnectivityMetricsEvent;
    goto :goto_0

    .line 236
    :cond_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v2, :cond_1

    .line 238
    invoke-virtual {v2, p1}, Lcom/android/server/connectivity/NetdEventListenerService;->list(Ljava/io/PrintWriter;)V

    .line 240
    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-virtual {v1, p1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->listEvents(Ljava/io/PrintWriter;)V

    .line 242
    return-void
.end method

.method private cmdListAsBinaryProto(Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 265
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 267
    .local v1, "dropped":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->listEventsAsProtos()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->serialize(ILjava/util/List;)[B

    move-result-object v0

    .line 270
    .local v0, "data":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 271
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    .end local v0    # "data":[B
    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    const-string v3, "could not serialize events"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 267
    .end local v1    # "dropped":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private cmdListAsTextProto(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 257
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->listEventsAsProtos()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$VClycNGAy74aP-7CTaYoRpoYsy4;

    invoke-direct {v1, p1}, Lcom/android/server/connectivity/-$$Lambda$IpConnectivityMetrics$VClycNGAy74aP-7CTaYoRpoYsy4;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 258
    return-void
.end method

.method private flushEncodedOutput()Ljava/lang/String;
    .locals 6

    .line 193
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 195
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 196
    .local v2, "dropped":I
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->initBuffer()V

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "protoEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    iget-object v3, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->flushEvents(Ljava/util/List;)V

    .line 203
    iget-object v3, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v3, :cond_0

    .line 204
    invoke-virtual {v3, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->flushStatistics(Ljava/util/List;)V

    .line 209
    :cond_0
    :try_start_1
    invoke-static {v2, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->serialize(ILjava/util/List;)[B

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    .local v3, "data":[B
    nop

    .line 215
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 210
    .end local v3    # "data":[B
    :catch_0
    move-exception v3

    .line 211
    .local v3, "e":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/connectivity/IpConnectivityMetrics;->TAG:Ljava/lang/String;

    const-string v5, "could not serialize events"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    const-string v4, ""

    return-object v4

    .line 197
    .end local v0    # "protoEvents":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    .end local v1    # "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ConnectivityMetricsEvent;>;"
    .end local v2    # "dropped":I
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getEvents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mEventLog:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/ConnectivityMetricsEvent;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initBuffer()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 158
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDropped:I

    .line 159
    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->bufferCapacity()I

    move-result v1

    iput v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacity:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuffer:Ljava/util/ArrayList;

    .line 161
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isRateLimited(Landroid/net/ConnectivityMetricsEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/net/ConnectivityMetricsEvent;

    .line 186
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mBuckets:Landroid/util/ArrayMap;

    iget-object v1, p1, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/TokenBucket;

    .line 187
    .local v0, "tb":Lcom/android/internal/util/TokenBucket;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/TokenBucket;->get()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic lambda$cmdListAsTextProto$0(Ljava/io/PrintWriter;Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "e"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 257
    invoke-virtual {p1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$static$1(Landroid/content/Context;)I
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .line 367
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connectivity_metrics_buffer_size"

    const/16 v2, 0x7d0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 369
    .local v0, "size":I
    if-gtz v0, :cond_0

    .line 370
    return v2

    .line 372
    :cond_0
    const/16 v1, 0x4e20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method private listEventsAsProtos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    .line 245
    invoke-direct {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getEvents()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 246
    .local v0, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1}, Lcom/android/server/connectivity/NetdEventListenerService;->listAsProtos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mDefaultNetworkMetrics:Lcom/android/server/connectivity/DefaultNetworkMetrics;

    invoke-virtual {v1}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->listEventsAsProto()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 250
    return-object v0
.end method

.method private static makeRateLimitingBuckets()Landroid/util/ArrayMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/internal/util/TokenBucket;",
            ">;"
        }
    .end annotation

    .line 376
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 378
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Lcom/android/internal/util/TokenBucket;>;"
    const-class v1, Landroid/net/metrics/ApfProgramEvent;

    new-instance v2, Lcom/android/internal/util/TokenBucket;

    const v3, 0xea60

    const/16 v4, 0x32

    invoke-direct {v2, v3, v4}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    return-object v0
.end method


# virtual methods
.method public bufferCapacity()I
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mCapacityGetter:Ljava/util/function/ToIntFunction;

    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .line 140
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_0

    .line 142
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {p0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    .line 144
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->impl:Lcom/android/server/connectivity/IpConnectivityMetrics$Impl;

    const-string v1, "connmetrics"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 145
    iget-object v0, p0, Lcom/android/server/connectivity/IpConnectivityMetrics;->mNetdListener:Lcom/android/server/connectivity/NetdEventListenerService;

    const-string/jumbo v1, "netd_listener"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/connectivity/IpConnectivityMetrics;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 147
    const-class v0, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    new-instance v1, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/IpConnectivityMetrics$LoggerImpl;-><init>(Lcom/android/server/connectivity/IpConnectivityMetrics;Lcom/android/server/connectivity/IpConnectivityMetrics$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 149
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 136
    return-void
.end method
