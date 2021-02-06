.class public Lcom/android/server/connectivity/NetdEventListenerService;
.super Landroid/net/metrics/INetdEventListener$Stub;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    }
.end annotation


# static fields
.field private static final ALLOWED_CALLBACK_TYPES:[I

.field private static final CONNECT_LATENCY_BURST_LIMIT:I = 0x1388

.field private static final CONNECT_LATENCY_FILL_RATE:I = 0x3a98

.field private static final DBG:Z = false

.field private static final METRICS_SNAPSHOT_BUFFER_SIZE:I = 0x30

.field private static final METRICS_SNAPSHOT_SPAN_MS:J = 0x493e0L

.field public static final SERVICE_NAME:Ljava/lang/String; = "netd_listener"

.field private static final TAG:Ljava/lang/String;

.field static final WAKEUP_EVENT_BUFFER_LENGTH:I = 0x400

.field static final WAKEUP_EVENT_IFACE_PREFIX:Ljava/lang/String; = "iface:"


# instance fields
.field private final mCm:Landroid/net/ConnectivityManager;

.field private final mConnectTb:Lcom/android/internal/util/TokenBucket;

.field private mIsScreenOn:Z

.field private mLastSnapshot:J

.field private mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

.field private final mNetworkMetrics:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/net/metrics/NetworkMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeupEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/net/metrics/WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeupStats:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/net/metrics/WakeupStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 164
    const-class v0, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetdEventListenerService;-><init>(Landroid/net/ConnectivityManager;)V

    .line 167
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 168
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 3
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .line 205
    invoke-direct {p0}, Landroid/net/metrics/INetdEventListener$Stub;-><init>()V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mIsScreenOn:Z

    .line 88
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    const/16 v2, 0x30

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    .line 101
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/net/metrics/WakeupEvent;

    const/16 v2, 0x400

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    .line 107
    new-instance v0, Lcom/android/internal/util/TokenBucket;

    const/16 v1, 0x3a98

    const/16 v2, 0x1388

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/TokenBucket;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    .line 132
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v0, v0

    new-array v0, v0, [Landroid/net/INetdEventCallback;

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    .line 176
    new-instance v0, Lcom/android/server/connectivity/NetdEventListenerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/NetdEventListenerService$1;-><init>(Lcom/android/server/connectivity/NetdEventListenerService;)V

    iput-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 207
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    .line 208
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/NetdEventListenerService;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/connectivity/NetdEventListenerService;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->broadcastReceiverAction(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/net/metrics/WakeupEvent;

    .line 383
    iget-object v0, p1, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 384
    .local v0, "iface":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, p1}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 385
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    .line 386
    .local v1, "stats":Landroid/net/metrics/WakeupStats;
    if-nez v1, :cond_0

    .line 387
    new-instance v2, Landroid/net/metrics/WakeupStats;

    invoke-direct {v2, v0}, Landroid/net/metrics/WakeupStats;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 388
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    :cond_0
    invoke-virtual {v1, p1}, Landroid/net/metrics/WakeupStats;->countEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 391
    return-void
.end method

.method private broadcastReceiverAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 189
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "action":Ljava/lang/String;
    sget-object v1, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x7ed8ea7f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x56ac2893

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v4

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v4, :cond_3

    goto :goto_2

    .line 196
    :cond_3
    iput-boolean v3, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mIsScreenOn:Z

    .line 197
    goto :goto_2

    .line 193
    :cond_4
    iput-boolean v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mIsScreenOn:Z

    .line 194
    nop

    .line 201
    :goto_2
    return-void
.end method

.method private collectPendingMetricsSnapshot(J)V
    .locals 4
    .param p1, "timeMs"    # J

    .line 233
    iget-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->projectSnapshotTime(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mLastSnapshot:J

    .line 237
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    .line 238
    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->collect(JLandroid/util/SparseArray;)Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    .line 239
    .local v0, "snapshot":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    iget-object v1, v0, Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;->stats:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 240
    return-void

    .line 242
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1, v0}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method private getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;
    .locals 5
    .param p1, "timeMs"    # J
    .param p3, "netId"    # I

    .line 215
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    .line 216
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/metrics/NetworkMetrics;

    .line 217
    .local v0, "metrics":Landroid/net/metrics/NetworkMetrics;
    if-nez v0, :cond_0

    .line 219
    new-instance v1, Landroid/net/metrics/NetworkMetrics;

    invoke-direct {p0, p3}, Lcom/android/server/connectivity/NetdEventListenerService;->getTransports(I)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mConnectTb:Lcom/android/internal/util/TokenBucket;

    invoke-direct {v1, p3, v2, v3, v4}, Landroid/net/metrics/NetworkMetrics;-><init>(IJLcom/android/internal/util/TokenBucket;)V

    move-object v0, v1

    .line 220
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, p3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    :cond_0
    return-object v0
.end method

.method private getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    .locals 2

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/server/connectivity/NetdEventListenerService;->collectPendingMetricsSnapshot(J)V

    .line 227
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetricsSnapshots:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    return-object v0
.end method

.method private getTransports(I)J
    .locals 3
    .param p1, "netId"    # I

    .line 457
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mCm:Landroid/net/ConnectivityManager;

    new-instance v1, Landroid/net/Network;

    invoke-direct {v1, p1}, Landroid/net/Network;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 458
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 459
    const-wide/16 v1, 0x0

    return-wide v1

    .line 461
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportTypes()[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/BitUtils;->packBits([I)J

    move-result-wide v1

    return-wide v1
.end method

.method private static isValidCallerType(I)Z
    .locals 3
    .param p0, "callerType"    # I

    .line 155
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/server/connectivity/NetdEventListenerService;->ALLOWED_CALLBACK_TYPES:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 156
    aget v1, v1, v0

    if-ne p0, v1, :cond_0

    .line 157
    const/4 v1, 0x1

    return v1

    .line 155
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static varargs maybeLog(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 466
    return-void
.end method

.method private static projectSnapshotTime(J)J
    .locals 4
    .param p0, "timeMs"    # J

    .line 211
    const-wide/32 v0, 0x493e0

    div-long v2, p0, v0

    mul-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public declared-synchronized addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z
    .locals 3
    .param p1, "callerType"    # I
    .param p2, "callback"    # Landroid/net/INetdEventCallback;

    monitor-enter p0

    .line 137
    :try_start_0
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 138
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 141
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    aput-object p2, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 136
    .end local p1    # "callerType":I
    .end local p2    # "callback":Landroid/net/INetdEventCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flushStatistics(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)V"
        }
    .end annotation

    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    monitor-enter p0

    .line 394
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 395
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    .line 396
    .local v1, "stats":Landroid/net/metrics/ConnectStats;
    iget v2, v1, Landroid/net/metrics/ConnectStats;->eventCount:I

    if-nez v2, :cond_0

    .line 397
    goto :goto_1

    .line 399
    :cond_0
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .end local v1    # "stats":Landroid/net/metrics/ConnectStats;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 401
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 402
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    .line 403
    .local v1, "ev":Landroid/net/metrics/DnsEvent;
    iget v2, v1, Landroid/net/metrics/DnsEvent;->eventCount:I

    if-nez v2, :cond_2

    .line 404
    goto :goto_3

    .line 406
    :cond_2
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v1    # "ev":Landroid/net/metrics/DnsEvent;
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 408
    .end local v0    # "i":I
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 409
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/WakeupStats;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 411
    .end local v0    # "i":I
    :cond_4
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 412
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    monitor-exit p0

    return-void

    .line 393
    .end local p1    # "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 379
    const-string v0, "8e27594d285ca7c567d87e8cf74766c27647e02b"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized list(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 416
    :try_start_0
    const-string v0, "dns/connect events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 417
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 417
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 421
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/metrics/NetworkMetrics;

    iget-object v1, v1, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 423
    .end local v0    # "i":I
    :cond_1
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    const-string/jumbo v0, "network statistics:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 425
    invoke-direct {p0}, Lcom/android/server/connectivity/NetdEventListenerService;->getNetworkMetricsSnapshots()[Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 426
    .local v4, "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 425
    .end local v4    # "s":Lcom/android/server/connectivity/NetdEventListenerService$NetworkMetricsSnapshot;
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 428
    :cond_2
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 429
    const-string/jumbo v0, "packet wakeup events:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 430
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 431
    iget-object v1, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 430
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 433
    .end local v0    # "i":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/metrics/WakeupEvent;

    array-length v1, v0

    :goto_4
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 434
    .local v3, "wakeup":Landroid/net/metrics/WakeupEvent;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    .end local v3    # "wakeup":Landroid/net/metrics/WakeupEvent;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 436
    :cond_4
    monitor-exit p0

    return-void

    .line 415
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listAsProtos()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 442
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 444
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->connectMetrics:Landroid/net/metrics/ConnectStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 446
    .end local v1    # "i":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 447
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetworkMetrics:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/NetworkMetrics;

    iget-object v2, v2, Landroid/net/metrics/NetworkMetrics;->dnsMetrics:Landroid/net/metrics/DnsEvent;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 449
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mWakeupStats:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/metrics/WakeupStats;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 452
    .end local v1    # "i":I
    :cond_2
    monitor-exit p0

    return-object v0

    .line 441
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onConnectEvent(IIILjava/lang/String;II)V
    .locals 17
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 298
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 299
    .local v2, "timestamp":J
    move/from16 v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v4

    move/from16 v10, p2

    move/from16 v11, p3

    move-object/from16 v12, p4

    invoke-virtual {v4, v10, v11, v12}, Landroid/net/metrics/NetworkMetrics;->addConnectResult(IILjava/lang/String;)V

    .line 301
    iget-object v13, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v14, v13

    const/4 v4, 0x0

    move v15, v4

    :goto_0
    if-ge v15, v14, :cond_1

    aget-object v4, v13, v15

    move-object/from16 v16, v4

    .line 302
    .local v16, "callback":Landroid/net/INetdEventCallback;
    if-eqz v16, :cond_0

    .line 303
    move-object/from16 v4, v16

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-wide v7, v2

    move/from16 v9, p6

    invoke-interface/range {v4 .. v9}, Landroid/net/INetdEventCallback;->onConnectEvent(Ljava/lang/String;IJI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    .end local v16    # "callback":Landroid/net/INetdEventCallback;
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 306
    :cond_1
    monitor-exit p0

    return-void

    .line 297
    .end local v2    # "timestamp":J
    .end local p1    # "netId":I
    .end local p2    # "error":I
    .end local p3    # "latencyMs":I
    .end local p4    # "ipAddr":Ljava/lang/String;
    .end local p5    # "port":I
    .end local p6    # "uid":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .locals 20
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 251
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 252
    .local v2, "timestamp":J
    move/from16 v0, p1

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v4

    move/from16 v15, p2

    move/from16 v14, p3

    move/from16 v13, p4

    invoke-virtual {v4, v15, v14, v13}, Landroid/net/metrics/NetworkMetrics;->addDnsResult(III)V

    .line 254
    iget-object v11, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v12, v11

    const/4 v4, 0x0

    move v10, v4

    :goto_0
    if-ge v10, v12, :cond_1

    aget-object v4, v11, v10

    move-object/from16 v16, v4

    .line 255
    .local v16, "callback":Landroid/net/INetdEventCallback;
    if-eqz v16, :cond_0

    .line 256
    move-object/from16 v4, v16

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v17, v10

    move/from16 v10, p7

    move-object/from16 v18, v11

    move/from16 v19, v12

    move-wide v11, v2

    move/from16 v13, p8

    invoke-interface/range {v4 .. v13}, Landroid/net/INetdEventCallback;->onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V

    .line 260
    move-object/from16 v4, v16

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move-wide v11, v2

    move/from16 v13, p8

    move/from16 v14, p4

    invoke-interface/range {v4 .. v14}, Landroid/net/INetdEventCallback;->onDnsLatency(IIILjava/lang/String;[Ljava/lang/String;IJII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 255
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_0
    move/from16 v17, v10

    move-object/from16 v18, v11

    move/from16 v19, v12

    .line 254
    .end local v16    # "callback":Landroid/net/INetdEventCallback;
    :goto_1
    add-int/lit8 v10, v17, 0x1

    move/from16 v14, p3

    move/from16 v13, p4

    move-object/from16 v11, v18

    move/from16 v12, v19

    goto :goto_0

    .line 265
    :cond_1
    monitor-exit p0

    return-void

    .line 250
    .end local v2    # "timestamp":J
    .end local p1    # "netId":I
    .end local p2    # "eventType":I
    .end local p3    # "returnCode":I
    .end local p4    # "latencyMs":I
    .end local p5    # "hostname":Ljava/lang/String;
    .end local p6    # "ipAddresses":[Ljava/lang/String;
    .end local p7    # "ipAddressesCount":I
    .end local p8    # "uid":I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNat64PrefixEvent(IZLjava/lang/String;I)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 274
    .local v3, "callback":Landroid/net/INetdEventCallback;
    if-eqz v3, :cond_0

    .line 275
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    .end local v3    # "callback":Landroid/net/INetdEventCallback;
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 278
    :cond_1
    monitor-exit p0

    return-void

    .line 272
    .end local p1    # "netId":I
    .end local p2    # "added":Z
    .end local p3    # "prefixString":Ljava/lang/String;
    .end local p4    # "prefixLength":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 4
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 286
    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 287
    .local v3, "callback":Landroid/net/INetdEventCallback;
    if-eqz v3, :cond_0

    .line 288
    invoke-interface {v3, p1, p2, p3, p4}, Landroid/net/INetdEventCallback;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v3    # "callback":Landroid/net/INetdEventCallback;
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_1
    monitor-exit p0

    return-void

    .line 285
    .end local p1    # "netId":I
    .end local p2    # "ipAddress":Ljava/lang/String;
    .end local p3    # "hostname":Ljava/lang/String;
    .end local p4    # "validated":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onTcpSocketStatsEvent([I[I[I[I[I)V
    .locals 23
    .param p1, "networkIds"    # [I
    .param p2, "sentPackets"    # [I
    .param p3, "lostPackets"    # [I
    .param p4, "rttsUs"    # [I
    .param p5, "sentAckDiffsMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    monitor-enter p0

    .line 341
    :try_start_0
    array-length v6, v0

    array-length v7, v2

    if-ne v6, v7, :cond_5

    array-length v6, v0

    array-length v7, v3

    if-ne v6, v7, :cond_5

    array-length v6, v0

    array-length v7, v4

    if-ne v6, v7, :cond_5

    array-length v6, v0

    array-length v7, v5

    if-eq v6, v7, :cond_0

    goto/16 :goto_4

    .line 349
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 350
    .local v6, "timestamp":J
    const/4 v8, 0x0

    move v15, v8

    .local v15, "i":I
    :goto_0
    array-length v8, v0

    if-ge v15, v8, :cond_4

    .line 351
    aget v8, v0, v15

    move v13, v8

    .line 352
    .local v13, "netId":I
    aget v8, v2, v15

    move v14, v8

    .line 353
    .local v14, "sent":I
    aget v8, v3, v15

    move v12, v8

    .line 354
    .local v12, "lost":I
    aget v8, v4, v15

    move v11, v8

    .line 355
    .local v11, "rttUs":I
    aget v8, v5, v15

    move v10, v8

    .line 356
    .local v10, "sentAckDiffMs":I
    invoke-direct {v1, v6, v7, v13}, Lcom/android/server/connectivity/NetdEventListenerService;->getMetricsForNetwork(JI)Landroid/net/metrics/NetworkMetrics;

    move-result-object v8

    .line 357
    invoke-virtual {v8, v14, v12, v11, v10}, Landroid/net/metrics/NetworkMetrics;->addTcpStatsResult(IIII)V

    .line 361
    iget-boolean v8, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mIsScreenOn:Z

    if-eqz v8, :cond_3

    .line 362
    iget-object v9, v1, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    array-length v8, v9

    const/16 v16, 0x0

    move/from16 v0, v16

    :goto_1
    if-ge v0, v8, :cond_2

    aget-object v16, v9, v0

    .line 363
    .local v16, "callback":Landroid/net/INetdEventCallback;
    if-eqz v16, :cond_1

    .line 364
    div-int/lit16 v2, v11, 0x3e8

    move/from16 v17, v8

    move-object/from16 v8, v16

    move-object/from16 v18, v9

    move v9, v14

    move/from16 v19, v10

    .end local v10    # "sentAckDiffMs":I
    .local v19, "sentAckDiffMs":I
    move v10, v12

    move/from16 v20, v11

    .end local v11    # "rttUs":I
    .local v20, "rttUs":I
    move v11, v2

    move v2, v12

    .end local v12    # "lost":I
    .local v2, "lost":I
    move/from16 v12, v19

    move/from16 v21, v13

    move/from16 v22, v14

    .end local v13    # "netId":I
    .end local v14    # "sent":I
    .local v21, "netId":I
    .local v22, "sent":I
    move-wide v13, v6

    invoke-interface/range {v8 .. v14}, Landroid/net/INetdEventCallback;->onTcpRttMonitor(IIIIJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 363
    .end local v2    # "lost":I
    .end local v19    # "sentAckDiffMs":I
    .end local v20    # "rttUs":I
    .end local v21    # "netId":I
    .end local v22    # "sent":I
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    .restart local v10    # "sentAckDiffMs":I
    .restart local v11    # "rttUs":I
    .restart local v12    # "lost":I
    .restart local v13    # "netId":I
    .restart local v14    # "sent":I
    :cond_1
    move/from16 v17, v8

    move-object/from16 v18, v9

    move/from16 v19, v10

    move/from16 v20, v11

    move v2, v12

    move/from16 v21, v13

    move/from16 v22, v14

    .line 362
    .end local v10    # "sentAckDiffMs":I
    .end local v11    # "rttUs":I
    .end local v12    # "lost":I
    .end local v13    # "netId":I
    .end local v14    # "sent":I
    .end local v16    # "callback":Landroid/net/INetdEventCallback;
    .restart local v2    # "lost":I
    .restart local v19    # "sentAckDiffMs":I
    .restart local v20    # "rttUs":I
    .restart local v21    # "netId":I
    .restart local v22    # "sent":I
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v12, v2

    move/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    move/from16 v13, v21

    move/from16 v14, v22

    move-object/from16 v2, p2

    goto :goto_1

    .end local v2    # "lost":I
    .end local v19    # "sentAckDiffMs":I
    .end local v20    # "rttUs":I
    .end local v21    # "netId":I
    .end local v22    # "sent":I
    .restart local v10    # "sentAckDiffMs":I
    .restart local v11    # "rttUs":I
    .restart local v12    # "lost":I
    .restart local v13    # "netId":I
    .restart local v14    # "sent":I
    :cond_2
    move/from16 v19, v10

    move/from16 v20, v11

    move v2, v12

    move/from16 v21, v13

    move/from16 v22, v14

    .end local v10    # "sentAckDiffMs":I
    .end local v11    # "rttUs":I
    .end local v12    # "lost":I
    .end local v13    # "netId":I
    .end local v14    # "sent":I
    .restart local v2    # "lost":I
    .restart local v19    # "sentAckDiffMs":I
    .restart local v20    # "rttUs":I
    .restart local v21    # "netId":I
    .restart local v22    # "sent":I
    goto :goto_3

    .line 361
    .end local v2    # "lost":I
    .end local v19    # "sentAckDiffMs":I
    .end local v20    # "rttUs":I
    .end local v21    # "netId":I
    .end local v22    # "sent":I
    .restart local v10    # "sentAckDiffMs":I
    .restart local v11    # "rttUs":I
    .restart local v12    # "lost":I
    .restart local v13    # "netId":I
    .restart local v14    # "sent":I
    :cond_3
    move/from16 v19, v10

    move/from16 v20, v11

    move v2, v12

    move/from16 v21, v13

    move/from16 v22, v14

    .line 350
    .end local v10    # "sentAckDiffMs":I
    .end local v11    # "rttUs":I
    .end local v12    # "lost":I
    .end local v13    # "netId":I
    .end local v14    # "sent":I
    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    goto :goto_0

    .line 370
    .end local v15    # "i":I
    :cond_4
    monitor-exit p0

    return-void

    .line 345
    .end local v6    # "timestamp":J
    :cond_5
    :goto_4
    :try_start_1
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    const-string v2, "Mismatched lengths of TCP socket stats data arrays"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 346
    monitor-exit p0

    return-void

    .line 340
    .end local p1    # "networkIds":[I
    .end local p2    # "sentPackets":[I
    .end local p3    # "lostPackets":[I
    .end local p4    # "rttsUs":[I
    .end local p5    # "sentAckDiffsMs":[I
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .locals 16
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ethertype"    # I
    .param p4, "ipNextHeader"    # I
    .param p5, "dstHw"    # [B
    .param p6, "srcIp"    # Ljava/lang/String;
    .param p7, "dstIp"    # Ljava/lang/String;
    .param p8, "srcPort"    # I
    .param p9, "dstPort"    # I
    .param p10, "timestampNs"    # J

    move-object/from16 v1, p0

    monitor-enter p0

    .line 311
    :try_start_0
    const-string v0, "iface:"

    const-string v2, ""

    move-object/from16 v3, p1

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "iface":Ljava/lang/String;
    const-wide/16 v4, 0x0

    cmp-long v2, p10, v4

    if-lez v2, :cond_0

    .line 314
    const-wide/32 v4, 0xf4240

    div-long v4, p10, v4

    move-wide v14, v4

    .local v4, "timestampMs":J
    goto :goto_0

    .line 316
    .end local v4    # "timestampMs":J
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v14, v4

    .line 319
    .local v14, "timestampMs":J
    :goto_0
    new-instance v2, Landroid/net/metrics/WakeupEvent;

    invoke-direct {v2}, Landroid/net/metrics/WakeupEvent;-><init>()V

    .line 320
    .local v2, "event":Landroid/net/metrics/WakeupEvent;
    iput-object v0, v2, Landroid/net/metrics/WakeupEvent;->iface:Ljava/lang/String;

    .line 321
    iput-wide v14, v2, Landroid/net/metrics/WakeupEvent;->timestampMs:J

    .line 322
    move/from16 v13, p2

    iput v13, v2, Landroid/net/metrics/WakeupEvent;->uid:I

    .line 323
    move/from16 v12, p3

    iput v12, v2, Landroid/net/metrics/WakeupEvent;->ethertype:I

    .line 324
    invoke-static/range {p5 .. p5}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v4

    iput-object v4, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    .line 325
    move-object/from16 v11, p6

    iput-object v11, v2, Landroid/net/metrics/WakeupEvent;->srcIp:Ljava/lang/String;

    .line 326
    move-object/from16 v10, p7

    iput-object v10, v2, Landroid/net/metrics/WakeupEvent;->dstIp:Ljava/lang/String;

    .line 327
    move/from16 v9, p4

    iput v9, v2, Landroid/net/metrics/WakeupEvent;->ipNextHeader:I

    .line 328
    move/from16 v7, p8

    iput v7, v2, Landroid/net/metrics/WakeupEvent;->srcPort:I

    .line 329
    move/from16 v6, p9

    iput v6, v2, Landroid/net/metrics/WakeupEvent;->dstPort:I

    .line 330
    invoke-direct {v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService;->addWakeupEvent(Landroid/net/metrics/WakeupEvent;)V

    .line 332
    iget-object v4, v2, Landroid/net/metrics/WakeupEvent;->dstHwAddr:Landroid/net/MacAddress;

    invoke-virtual {v4}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 333
    .local v8, "dstMac":Ljava/lang/String;
    const/16 v4, 0x2c

    move/from16 v5, p2

    move-object v6, v0

    move/from16 v7, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p4

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v4 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    monitor-exit p0

    return-void

    .line 310
    .end local v0    # "iface":Ljava/lang/String;
    .end local v2    # "event":Landroid/net/metrics/WakeupEvent;
    .end local v8    # "dstMac":Ljava/lang/String;
    .end local v14    # "timestampMs":J
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "ethertype":I
    .end local p4    # "ipNextHeader":I
    .end local p5    # "dstHw":[B
    .end local p6    # "srcIp":Ljava/lang/String;
    .end local p7    # "dstIp":Ljava/lang/String;
    .end local p8    # "srcPort":I
    .end local p9    # "dstPort":I
    .end local p10    # "timestampNs":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetdEventCallback(I)Z
    .locals 3
    .param p1, "callerType"    # I

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-static {p1}, Lcom/android/server/connectivity/NetdEventListenerService;->isValidCallerType(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/android/server/connectivity/NetdEventListenerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid caller type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 150
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService;->mNetdEventCallbackList:[Landroid/net/INetdEventCallback;

    const/4 v1, 0x0

    aput-object v1, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 145
    .end local p1    # "callerType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
