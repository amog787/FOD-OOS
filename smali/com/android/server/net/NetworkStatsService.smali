.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;,
        Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;,
        Lcom/android/server/net/NetworkStatsService$Dependencies;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final DEFAULT_PERFORM_POLL_DELAY_MS:I = 0x3e8

.field private static final DUMP_STATS_SESSION_COUNT:I = 0x14

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field static final LOGD:Z

.field static final LOGV:Z

.field private static final MAX_STATS_PROVIDER_POLL_WAIT_TIME_MS:I = 0x64

.field private static final MSG_BROADCAST_NETWORK_STATS_UPDATED:I = 0x4

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_PERFORM_POLL_REGISTER_ALERT:I = 0x2

.field private static final MSG_UPDATE_IFACES:I = 0x3

.field private static final POLL_RATE_LIMIT_MS:J = 0x3a98L

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field private static TYPE_RX_BYTES:I

.field private static TYPE_RX_PACKETS:I

.field private static TYPE_TCP_RX_PACKETS:I

.field private static TYPE_TCP_TX_PACKETS:I

.field private static TYPE_TX_BYTES:I

.field private static TYPE_TX_PACKETS:I


# instance fields
.field private mActiveIface:Ljava/lang/String;

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveUidCounterSet:Landroid/util/SparseIntArray;

.field private final mActiveUidIfaces:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;"
        }
    .end annotation
.end field

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private final mClock:Ljava/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetworks:[Landroid/net/Network;

.field private final mDeps:Lcom/android/server/net/NetworkStatsService$Dependencies;

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mGlobalAlertBytes:J

.field private final mHandler:Landroid/os/Handler;

.field private mLastNetworkStates:[Landroid/net/NetworkState;

.field private mLastStatsSessionPoll:J

.field private mMobileIfaces:[Ljava/lang/String;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNetworkStatsSubscriptionsMonitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private final mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

.field private final mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsProviderSem:Ljava/util/concurrent/Semaphore;

.field private final mSystemDir:Ljava/io/File;

.field private volatile mSystemReady:Z

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private final mUseBpfTrafficStats:Z

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 175
    const-string v0, "NetworkStats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    .line 176
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Ljava/time/Clock;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsFactory;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$Dependencies;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/AlarmManager;
    .param p4, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p5, "clock"    # Ljava/time/Clock;
    .param p6, "settings"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    .param p7, "factory"    # Lcom/android/server/net/NetworkStatsFactory;
    .param p8, "statsObservers"    # Lcom/android/server/net/NetworkStatsObservers;
    .param p9, "systemDir"    # Ljava/io/File;
    .param p10, "baseDir"    # Ljava/io/File;
    .param p11, "deps"    # Lcom/android/server/net/NetworkStatsService$Dependencies;

    .line 423
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 272
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 275
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    .line 279
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 287
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 291
    new-array v1, v0, [Landroid/net/Network;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    .line 295
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastNetworkStates:[Landroid/net/NetworkState;

    .line 299
    new-instance v2, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    invoke-direct {v2, p0, v1}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    .line 303
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 306
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderSem:Ljava/util/concurrent/Semaphore;

    .line 322
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 325
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 331
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 339
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    .line 1140
    new-instance v0, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 1147
    new-instance v0, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 1159
    new-instance v0, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1179
    new-instance v0, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1199
    new-instance v0, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1212
    new-instance v0, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 424
    const-string/jumbo v0, "missing Context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 425
    const-string/jumbo v0, "missing INetworkManagementService"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 427
    const-string/jumbo v0, "missing AlarmManager"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p3

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 428
    const-string/jumbo v0, "missing Clock"

    invoke-static {p5, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p5

    check-cast v0, Ljava/time/Clock;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    .line 429
    const-string/jumbo v0, "missing NetworkStatsSettings"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p6

    check-cast v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 430
    const-string/jumbo v0, "missing WakeLock"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 431
    const-string/jumbo v0, "missing factory"

    invoke-static {p7, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p7

    check-cast v0, Lcom/android/server/net/NetworkStatsFactory;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    .line 432
    const-string/jumbo v0, "missing NetworkStatsObservers"

    invoke-static {p8, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p8

    check-cast v0, Lcom/android/server/net/NetworkStatsObservers;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    .line 433
    const-string/jumbo v0, "missing systemDir"

    invoke-static {p9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p9

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    .line 434
    const-string/jumbo v0, "missing baseDir"

    invoke-static {p10, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p10

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    .line 435
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/bpf/map_netd_app_uid_stats_map"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    .line 436
    const-string/jumbo v0, "missing Dependencies"

    invoke-static {p11, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p11

    check-cast v0, Lcom/android/server/net/NetworkStatsService$Dependencies;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDeps:Lcom/android/server/net/NetworkStatsService$Dependencies;

    .line 438
    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsService$Dependencies;->makeHandlerThread()Landroid/os/HandlerThread;

    move-result-object v0

    .line 439
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 440
    new-instance v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;-><init>(Lcom/android/server/net/NetworkStatsService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 441
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/HandlerExecutor;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p11, v1, v2, p0}, Lcom/android/server/net/NetworkStatsService$Dependencies;->makeSubscriptionsMonitor(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsSubscriptionsMonitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    .line 443
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # J
    .param p7, "x5"    # I
    .param p8, "x6"    # I

    .line 173
    invoke-direct/range {p0 .. p8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 173
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkStatsService;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # [I

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;)[Landroid/net/NetworkState;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mLastNetworkStates:[Landroid/net/NetworkState;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 173
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 173
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/net/NetworkStatsService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # J

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->advisePersistThreshold(J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->invokeForAllStatsProviderCallbacks(Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)[Landroid/net/Network;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;[Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # [Landroid/net/Network;
    .param p2, "x2"    # [Landroid/net/NetworkState;
    .param p3, "x3"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsService;->updateIfaces([Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 173
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private advisePersistThreshold(J)V
    .locals 6
    .param p1, "thresholdBytes"    # J

    .line 978
    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 979
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_0

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "advisePersistThreshold() given "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", clamped to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_0
    iget-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    .line 987
    .local v0, "oldGlobalAlertBytes":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    .line 988
    .local v2, "currentTime":J
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 989
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v5, :cond_1

    monitor-exit v4

    return-void

    .line 991
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    .line 993
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 994
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 995
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 996
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 997
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 999
    iget-wide v4, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_2

    .line 1000
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 1002
    :cond_2
    return-void

    .line 997
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private assertSystemReady()V
    .locals 2

    .line 2091
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 2094
    return-void

    .line 2092
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bootstrapStatsLocked()V
    .locals 5

    .line 1454
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1457
    .local v0, "currentTime":J
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :goto_0
    goto :goto_1

    .line 1460
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1458
    :catch_1
    move-exception v2

    .line 1459
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "problem reading network stats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkStats"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    goto :goto_0

    .line 1463
    :goto_1
    return-void
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .param p3, "includeTags"    # Z

    .line 546
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 548
    .local v0, "dropBox":Landroid/os/DropBoxManager;
    new-instance v9, Lcom/android/server/net/NetworkStatsRecorder;

    new-instance v8, Lcom/android/internal/util/FileRotator;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    iget-wide v4, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->rotateAgeMillis:J

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->deleteAgeMillis:J

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/util/FileRotator;-><init>(Ljava/io/File;Ljava/lang/String;JJ)V

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    iget-wide v6, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;->bucketDuration:J

    move-object v1, v9

    move-object v2, v8

    move-object v4, v0

    move-object v5, p1

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/net/NetworkStatsRecorder;-><init>(Lcom/android/internal/util/FileRotator;Landroid/net/NetworkStats$NonMonotonicObserver;Landroid/os/DropBoxManager;Ljava/lang/String;JZ)V

    return-object v9
.end method

.method private checkAccessLevel(Ljava/lang/String;)I
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 782
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 781
    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkStatsAccess;->checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private varargs checkAnyPermissionOf([Ljava/lang/String;)Z
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 1931
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 1932
    .local v3, "permission":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 1933
    const/4 v0, 0x1

    return v0

    .line 1931
    .end local v3    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1936
    :cond_1
    return v1
.end method

.method private checkBpfStatsEnable()Z
    .locals 1

    .line 1120
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkManager"    # Landroid/os/INetworkManagementService;

    .line 401
    move-object/from16 v12, p0

    const-string v0, "alarm"

    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/app/AlarmManager;

    .line 402
    .local v13, "alarmManager":Landroid/app/AlarmManager;
    const-string/jumbo v0, "power"

    invoke-virtual {v12, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/PowerManager;

    .line 403
    .local v14, "powerManager":Landroid/os/PowerManager;
    nop

    .line 404
    const/4 v0, 0x1

    const-string v1, "NetworkStats"

    invoke-virtual {v14, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    .line 406
    .local v15, "wakeLock":Landroid/os/PowerManager$WakeLock;
    new-instance v16, Lcom/android/server/net/NetworkStatsService;

    .line 407
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    new-instance v6, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v6, v12}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/android/server/net/NetworkStatsFactory;

    invoke-direct {v7}, Lcom/android/server/net/NetworkStatsFactory;-><init>()V

    new-instance v8, Lcom/android/server/net/NetworkStatsObservers;

    invoke-direct {v8}, Lcom/android/server/net/NetworkStatsObservers;-><init>()V

    .line 409
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v9

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultBaseDir()Ljava/io/File;

    move-result-object v10

    new-instance v11, Lcom/android/server/net/NetworkStatsService$Dependencies;

    invoke-direct {v11}, Lcom/android/server/net/NetworkStatsService$Dependencies;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v13

    move-object v4, v15

    invoke-direct/range {v0 .. v11}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Ljava/time/Clock;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsFactory;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;Lcom/android/server/net/NetworkStatsService$Dependencies;)V

    .line 411
    .local v0, "service":Lcom/android/server/net/NetworkStatsService;
    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsService;->registerLocalService()V

    .line 413
    return-object v0
.end method

.method private static dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V
    .locals 6
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;)V"
        }
    .end annotation

    .line 1852
    .local p3, "ifaces":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1853
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1855
    .local v1, "start":J
    const-wide v3, 0x10900000001L

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1856
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/net/NetworkIdentitySet;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1858
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1852
    .end local v1    # "start":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1860
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private dumpProtoLocked(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 1836
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1840
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-wide v2, 0x20b00000001L

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 1841
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    const-wide v2, 0x20b00000002L

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 1842
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000003L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1843
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000004L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1844
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1845
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->dumpDebugLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1847
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1848
    return-void
.end method

.method private varargs enforceAnyPermissionOf([Ljava/lang/String;)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 1940
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAnyPermissionOf([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1944
    return-void

    .line 1941
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requires one of the following permissions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1942
    const-string v2, ", "

    invoke-static {v2, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/ArrayMap<",
            "TK;",
            "Lcom/android/server/net/NetworkIdentitySet;",
            ">;TK;)",
            "Lcom/android/server/net/NetworkIdentitySet;"
        }
    .end annotation

    .line 1387
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    .line 1388
    .local v0, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v0, :cond_0

    .line 1389
    new-instance v1, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v1}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    move-object v0, v1

    .line 1390
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    :cond_0
    return-object v0
.end method

.method private static getDefaultBaseDir()Ljava/io/File;
    .locals 3

    .line 355
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "netstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 357
    return-object v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .locals 5

    .line 361
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 362
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 361
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    .line 351
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNetworkStatsFromProviders(I)Landroid/net/NetworkStats;
    .locals 4
    .param p1, "how"    # I

    .line 1980
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1981
    .local v0, "ret":Landroid/net/NetworkStats;
    new-instance v1, Lcom/android/server/net/-$$Lambda$NetworkStatsService$InNd0bxX6ObmdmLP-_WGePLtUfE;

    invoke-direct {v1, v0, p1}, Lcom/android/server/net/-$$Lambda$NetworkStatsService$InNd0bxX6ObmdmLP-_WGePLtUfE;-><init>(Landroid/net/NetworkStats;I)V

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsService;->invokeForAllStatsProviderCallbacks(Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;)V

    .line 1982
    return-object v0
.end method

.method private getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .locals 5
    .param p1, "how"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1921
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    const-string/jumbo v2, "problem reading network stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1924
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;
    .locals 5
    .param p1, "ifaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1896
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, v0}, Lcom/android/server/net/NetworkStatsService;->readNetworkStatsUidDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;

    move-result-object v1

    .line 1899
    .local v1, "uidSnapshot":Landroid/net/NetworkStats;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1900
    .local v3, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v3, v0, p1, v0}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 1901
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v4, v1, v3}, Lcom/android/server/net/NetworkStatsFactory;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 1902
    invoke-virtual {v1, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1905
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsFromProviders(I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1906
    .local v2, "providerStats":Landroid/net/NetworkStats;
    invoke-virtual {v2, v0, p1, v0}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 1907
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsFactory;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)V

    .line 1908
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1910
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v1, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1912
    return-object v1
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 845
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertSystemReady()V

    .line 849
    nop

    .line 851
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 849
    const/4 v2, 0x4

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    .line 851
    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    .line 849
    return-wide v0
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 855
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertSystemReady()V

    .line 858
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 859
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v2

    .line 860
    .local v2, "uidComplete":Lcom/android/server/net/NetworkStatsCollection;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 861
    const/4 v8, 0x3

    const/16 v9, 0x3e8

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0

    .line 860
    .end local v2    # "uidComplete":Lcom/android/server/net/NetworkStatsCollection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSubTypeForState(Landroid/net/NetworkState;)I
    .locals 2
    .param p1, "state"    # Landroid/net/NetworkState;

    .line 1378
    iget-object v0, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1379
    return v1

    .line 1382
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsSubscriptionsMonitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    iget-object v1, p1, Landroid/net/NetworkState;->subscriberId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->getRatTypeForSubscriberId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private getTetherStats(Ljava/lang/String;I)J
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1086
    const-string v0, "NetworkStats"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1088
    .local v1, "token":J
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    .local v3, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    nop

    .line 1096
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-ne p1, v6, :cond_0

    .line 1097
    const/4 v6, 0x0

    .local v6, "limitIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 1099
    .end local v6    # "limitIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1100
    .restart local v6    # "limitIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1102
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 1103
    .local v7, "entry":Landroid/net/NetworkStats$Entry;
    sget-boolean v8, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "TetherStats: iface="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " type="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " entry="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    :cond_1
    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 1115
    return-wide v4

    .line 1113
    :cond_2
    iget-wide v4, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    return-wide v4

    .line 1111
    :cond_3
    iget-wide v4, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    return-wide v4

    .line 1109
    :cond_4
    iget-wide v4, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    return-wide v4

    .line 1107
    :cond_5
    iget-wide v4, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    return-wide v4

    .line 1093
    .end local v3    # "tetherSnapshot":Landroid/net/NetworkStats;
    .end local v6    # "limitIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "entry":Landroid/net/NetworkStats$Entry;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1089
    :catch_0
    move-exception v3

    .line 1090
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error get TetherStats: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1091
    nop

    .line 1093
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1091
    return-wide v4

    .line 1093
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1094
    throw v0
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 17
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "flags"    # I
    .param p3, "fields"    # I
    .param p4, "accessLevel"    # I
    .param p5, "callingUid"    # I

    .line 836
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkStatsService;->resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v15

    .line 837
    .local v15, "augmentPlan":Landroid/telephony/SubscriptionPlan;
    iget-object v14, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 838
    :try_start_0
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-wide/high16 v9, -0x8000000000000000L

    const-wide v11, 0x7fffffffffffffffL

    move-object/from16 v3, p1

    move-object v4, v15

    move/from16 v8, p3

    move/from16 v13, p4

    move-object/from16 v16, v14

    move/from16 v14, p5

    :try_start_1
    invoke-virtual/range {v2 .. v14}, Lcom/android/server/net/NetworkStatsCollection;->getHistory(Landroid/net/NetworkTemplate;Landroid/telephony/SubscriptionPlan;IIIIJJII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    monitor-exit v16

    return-object v0

    .line 841
    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v16, v14

    :goto_0
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;
    .locals 25
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "flags"    # I
    .param p3, "start"    # J
    .param p5, "end"    # J
    .param p7, "accessLevel"    # I
    .param p8, "callingUid"    # I

    .line 815
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 818
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 819
    .local v1, "now":J
    const/4 v11, 0x0

    move-object v4, v0

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide v9, v1

    invoke-virtual/range {v4 .. v11}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    .line 821
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    new-instance v4, Landroid/net/NetworkStats;

    sub-long v5, p5, p3

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 822
    .local v4, "stats":Landroid/net/NetworkStats;
    new-instance v12, Landroid/net/NetworkStats$Entry;

    move-object v5, v12

    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iget-wide v13, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v7, v3, Landroid/net/NetworkStatsHistory$Entry;->rxPackets:J

    move-wide v15, v7

    iget-wide v7, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    move-wide/from16 v17, v7

    iget-wide v7, v3, Landroid/net/NetworkStatsHistory$Entry;->txPackets:J

    move-wide/from16 v19, v7

    iget-wide v7, v3, Landroid/net/NetworkStatsHistory$Entry;->operations:J

    move-wide/from16 v21, v7

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/16 v23, -0x1

    move-object/from16 v24, v0

    move-object v0, v12

    .end local v0    # "history":Landroid/net/NetworkStatsHistory;
    .local v24, "history":Landroid/net/NetworkStatsHistory;
    move/from16 v12, v23

    invoke-direct/range {v5 .. v22}, Landroid/net/NetworkStats$Entry;-><init>(Ljava/lang/String;IIIIIIJJJJJ)V

    invoke-virtual {v4, v0}, Landroid/net/NetworkStats;->insertEntry(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 825
    return-object v4
.end method

.method private invokeForAllStatsProviderCallbacks(Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/net/NetworkStatsService$ThrowingConsumer<",
            "Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;",
            "Landroid/os/RemoteException;",
            ">;)V"
        }
    .end annotation

    .line 1992
    .local p1, "task":Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;, "Lcom/android/server/net/NetworkStatsService$ThrowingConsumer<Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;Landroid/os/RemoteException;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;

    .line 1994
    .local v1, "cb":Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    :try_start_0
    invoke-interface {p1, v1}, Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    goto :goto_1

    .line 1995
    :catch_0
    move-exception v2

    .line 1996
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to broadcast to provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NetworkStats"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1998
    .end local v1    # "cb":Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1999
    :cond_0
    return-void
.end method

.method private isRateLimitedForPoll(I)Z
    .locals 9
    .param p1, "callingUid"    # I

    .line 637
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 638
    return v0

    .line 642
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 643
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 644
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 645
    .local v4, "calls":I
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 646
    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastStatsSessionPoll:J

    .line 647
    .local v5, "lastCallTime":J
    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastStatsSessionPoll:J

    .line 648
    .end local v4    # "calls":I
    monitor-exit v3

    .line 650
    sub-long v3, v1, v5

    const-wide/16 v7, 0x3a98

    cmp-long v3, v3, v7

    if-gez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 648
    .end local v5    # "lastCallTime":J
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic lambda$dump$2(Lcom/android/internal/util/IndentingPrintWriter;ZLcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V
    .locals 2
    .param p0, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p1, "includeUid"    # Z
    .param p2, "cb"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Xt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1796
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1797
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->getCachedStats(I)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1799
    if-eqz p1, :cond_0

    .line 1800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1802
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->getCachedStats(I)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1803
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1805
    :cond_0
    return-void
.end method

.method static synthetic lambda$getNetworkStatsFromProviders$3(Landroid/net/NetworkStats;ILcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V
    .locals 1
    .param p0, "ret"    # Landroid/net/NetworkStats;
    .param p1, "how"    # I
    .param p2, "cb"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1981
    invoke-virtual {p2, p1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->getCachedStats(I)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    return-void
.end method

.method static synthetic lambda$performPollLocked$1(Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V
    .locals 2
    .param p0, "cb"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProvider:Landroid/net/netstats/provider/INetworkStatsProvider;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/net/netstats/provider/INetworkStatsProvider;->onRequestStatsUpdate(I)V

    return-void
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .locals 6

    .line 580
    const-string/jumbo v0, "problem during legacy upgrade"

    const-string v1, "NetworkStats"

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 581
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    .line 583
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 586
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v5, "netstats_xt.bin"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 587
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 588
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 591
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v5, "netstats_uid.bin"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 592
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 593
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 594
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 595
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_2
    goto :goto_0

    .line 599
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 600
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 597
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 598
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 601
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 602
    :goto_0
    return-void
.end method

.method private static native nativeGetIfaceStat(Ljava/lang/String;IZ)J
.end method

.method private static native nativeGetTotalStat(IZ)J
.end method

.method private static native nativeGetUidStat(IIZ)J
.end method

.method private openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
    .locals 5
    .param p1, "flags"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 654
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 655
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->isRateLimitedForPoll(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 656
    and-int/lit8 v1, p1, -0x2

    goto :goto_0

    .line 657
    :cond_0
    move v1, p1

    :goto_0
    nop

    .line 658
    .local v1, "usedFlags":I
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_1

    .line 660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 662
    .local v2, "ident":J
    const/4 v4, 0x3

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    goto :goto_1

    .line 664
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    throw v4

    .line 671
    .end local v2    # "ident":J
    :cond_1
    :goto_1
    new-instance v2, Lcom/android/server/net/NetworkStatsService$1;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/android/server/net/NetworkStatsService$1;-><init>(Lcom/android/server/net/NetworkStatsService;ILjava/lang/String;I)V

    return-object v2
.end method

.method private performPoll(I)V
    .locals 3
    .param p1, "flags"    # I

    .line 1466
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1467
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1470
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1472
    :try_start_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1473
    nop

    .line 1474
    monitor-exit v0

    .line 1475
    return-void

    .line 1472
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1473
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .end local p1    # "flags":I
    throw v1

    .line 1474
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .restart local p1    # "flags":I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private performPollLocked(I)V
    .locals 11
    .param p1, "flags"    # I

    .line 1483
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v0, :cond_0

    return-void

    .line 1484
    :cond_0
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    const-string v1, "NetworkStats"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performPollLocked(flags=0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1485
    :cond_1
    const-wide/32 v2, 0x200000

    const-string/jumbo v0, "performPollLocked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1487
    and-int/lit8 v0, p1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    .line 1488
    .local v0, "persistNetwork":Z
    :goto_0
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    .line 1489
    .local v6, "persistUid":Z
    :goto_1
    and-int/lit16 v7, p1, 0x100

    if-eqz v7, :cond_4

    move v4, v5

    .line 1498
    .local v4, "persistForce":Z
    :cond_4
    const-string/jumbo v5, "provider.requestStatsUpdate"

    invoke-static {v2, v3, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1499
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v5

    .line 1500
    .local v5, "registeredCallbackCount":I
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderSem:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->drainPermits()I

    .line 1501
    sget-object v7, Lcom/android/server/net/-$$Lambda$NetworkStatsService$xfTbcb80CcmFJlvul1xYQmewxlg;->INSTANCE:Lcom/android/server/net/-$$Lambda$NetworkStatsService$xfTbcb80CcmFJlvul1xYQmewxlg;

    invoke-direct {p0, v7}, Lcom/android/server/net/NetworkStatsService;->invokeForAllStatsProviderCallbacks(Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;)V

    .line 1504
    :try_start_0
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderSem:Ljava/util/concurrent/Semaphore;

    const-wide/16 v8, 0x64

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v5, v8, v9, v10}, Ljava/util/concurrent/Semaphore;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    goto :goto_2

    .line 1506
    :catch_0
    move-exception v7

    .line 1509
    .local v7, "e":Ljava/lang/InterruptedException;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "requestStatsUpdate - providers responded "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderSem:Ljava/util/concurrent/Semaphore;

    .line 1510
    invoke-virtual {v9}, Ljava/util/concurrent/Semaphore;->availablePermits()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1509
    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1516
    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v7}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 1519
    .local v7, "currentTime":J
    :try_start_1
    invoke-direct {p0, v7, v8}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1526
    nop

    .line 1529
    const-string v1, "[persisting]"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1530
    if-eqz v4, :cond_5

    .line 1531
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1532
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1533
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1534
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    goto :goto_3

    .line 1536
    :cond_5
    if-eqz v0, :cond_6

    .line 1537
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1538
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1540
    :cond_6
    if-eqz v6, :cond_7

    .line 1541
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1542
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1545
    :cond_7
    :goto_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1547
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1549
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    .line 1553
    :cond_8
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x4

    invoke-virtual {v1, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1555
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1559
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->schedulePerformPoll()V

    .line 1561
    return-void

    .line 1523
    :catch_1
    move-exception v1

    .line 1525
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 1520
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 1521
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "problem reading network stats"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1522
    return-void
.end method

.method private performSampleLocked()V
    .locals 56

    .line 1569
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v54

    .local v54, "currentTime":J
    move-wide/from16 v52, v54

    move-wide/from16 v26, v54

    .line 1577
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1578
    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 1579
    .local v14, "devTotal":Landroid/net/NetworkStats$Entry;
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v15

    .line 1580
    .local v15, "xtTotal":Landroid/net/NetworkStats$Entry;
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    .line 1582
    .local v12, "uidTotal":Landroid/net/NetworkStats$Entry;
    iget-wide v2, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v4, v14, Landroid/net/NetworkStats$Entry;->rxPackets:J

    iget-wide v6, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    iget-wide v8, v14, Landroid/net/NetworkStats$Entry;->txPackets:J

    iget-wide v10, v15, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-object/from16 v16, v12

    .end local v12    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .local v16, "uidTotal":Landroid/net/NetworkStats$Entry;
    iget-wide v12, v15, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-object/from16 v28, v1

    move-object/from16 v1, v16

    .end local v16    # "uidTotal":Landroid/net/NetworkStats$Entry;
    .local v1, "uidTotal":Landroid/net/NetworkStats$Entry;
    .local v28, "template":Landroid/net/NetworkTemplate;
    move-wide/from16 v29, v2

    iget-wide v2, v15, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-object/from16 v31, v14

    move-object v0, v15

    .end local v14    # "devTotal":Landroid/net/NetworkStats$Entry;
    .end local v15    # "xtTotal":Landroid/net/NetworkStats$Entry;
    .local v0, "xtTotal":Landroid/net/NetworkStats$Entry;
    .local v31, "devTotal":Landroid/net/NetworkStats$Entry;
    move-wide v14, v2

    iget-wide v2, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v16, v2

    iget-wide v2, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v18, v2

    iget-wide v2, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v20, v2

    iget-wide v2, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v22, v2

    iget-wide v2, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v24, v2

    move-wide/from16 v2, v29

    invoke-static/range {v2 .. v27}, Lcom/android/server/EventLogTags;->writeNetstatsMobileSample(JJJJJJJJJJJJJ)V

    .line 1589
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 1590
    .end local v28    # "template":Landroid/net/NetworkTemplate;
    .local v2, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v2}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 1591
    .end local v31    # "devTotal":Landroid/net/NetworkStats$Entry;
    .local v4, "devTotal":Landroid/net/NetworkStats$Entry;
    iget-object v5, v3, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v2}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1592
    iget-object v5, v3, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v2}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 1594
    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v28, v5

    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v30, v5

    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v32, v5

    iget-wide v5, v4, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v34, v5

    iget-wide v5, v0, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v36, v5

    iget-wide v5, v0, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v38, v5

    iget-wide v5, v0, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v40, v5

    iget-wide v5, v0, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v42, v5

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v44, v5

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->rxPackets:J

    move-wide/from16 v46, v5

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v48, v5

    iget-wide v5, v1, Landroid/net/NetworkStats$Entry;->txPackets:J

    move-wide/from16 v50, v5

    invoke-static/range {v28 .. v53}, Lcom/android/server/EventLogTags;->writeNetstatsWifiSample(JJJJJJJJJJJJJ)V

    .line 1599
    return-void
.end method

.method private readNetworkStatsSummaryDev()Landroid/net/NetworkStats;
    .locals 2

    .line 1864
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1865
    :catch_0
    move-exception v0

    .line 1866
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readNetworkStatsSummaryXt()Landroid/net/NetworkStats;
    .locals 2

    .line 1872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private readNetworkStatsUidDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;
    .locals 2
    .param p1, "uid"    # I
    .param p2, "ifaces"    # [Ljava/lang/String;
    .param p3, "tag"    # I

    .line 1880
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1881
    :catch_0
    move-exception v0

    .line 1882
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private recordSnapshotLocked(J)V
    .locals 15
    .param p1, "currentTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1399
    move-object v0, p0

    move-wide/from16 v8, p1

    const-wide/32 v1, 0x200000

    const-string/jumbo v3, "snapshotUid"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1400
    sget-object v3, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v10

    .line 1401
    .local v10, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1402
    const-string/jumbo v3, "snapshotXt"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1403
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v11

    .line 1404
    .local v11, "xtSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1405
    const-string/jumbo v3, "snapshotDev"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1406
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->readNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v12

    .line 1407
    .local v12, "devSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1411
    const-string/jumbo v3, "snapshotTether"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1412
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v13

    .line 1413
    .local v13, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1414
    invoke-virtual {v11, v13}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1415
    invoke-virtual {v12, v13}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1419
    const-string/jumbo v4, "snapshotStatsProvider"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1420
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsFromProviders(I)Landroid/net/NetworkStats;

    move-result-object v14

    .line 1421
    .local v14, "providersnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1422
    invoke-virtual {v11, v14}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1423
    invoke-virtual {v12, v14}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1427
    const-string/jumbo v3, "recordDev"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1428
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v12, v4, v8, v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1429
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1430
    const-string/jumbo v3, "recordXt"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1431
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11, v4, v8, v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1432
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1435
    const-string/jumbo v3, "recordUid"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1436
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10, v4, v8, v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1437
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1438
    const-string/jumbo v3, "recordUidTag"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1439
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v10, v4, v8, v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;J)V

    .line 1440
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1444
    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    new-instance v4, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-direct {v4, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    new-instance v5, Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-direct {v5, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    move-object v2, v11

    move-object v3, v10

    move-wide/from16 v6, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/net/NetworkStatsObservers;->updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;J)V

    .line 1446
    return-void
.end method

.method private registerGlobalAlert()V
    .locals 5

    .line 611
    const-string/jumbo v0, "problem registering for global alert: "

    const-string v1, "NetworkStats"

    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-wide v3, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->setGlobalAlert(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v2

    .line 618
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 614
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    goto :goto_0

    .line 612
    :catch_2
    move-exception v2

    .line 613
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 621
    :goto_1
    new-instance v0, Lcom/android/server/net/-$$Lambda$NetworkStatsService$KVH4Y9nH53_gEfrhunDFp_O6ExY;

    invoke-direct {v0, p0}, Lcom/android/server/net/-$$Lambda$NetworkStatsService$KVH4Y9nH53_gEfrhunDFp_O6ExY;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->invokeForAllStatsProviderCallbacks(Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;)V

    .line 622
    return-void
.end method

.method private registerLocalService()V
    .locals 3

    .line 474
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .locals 3
    .param p1, "uids"    # [I

    .line 1606
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUidsLocked() for UIDs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1611
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1612
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1615
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 1616
    .local v2, "uid":I
    invoke-static {v2}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1615
    .end local v2    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1618
    :cond_1
    return-void
.end method

.method private removeUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I

    .line 1625
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeUserLocked() for userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1629
    .local v0, "uids":[I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x400200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1632
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 1633
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 1634
    .local v4, "uid":I
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 1635
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "uid":I
    goto :goto_0

    .line 1637
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    .line 1638
    return-void
.end method

.method private resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "flags"    # I

    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "plan":Landroid/telephony/SubscriptionPlan;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 793
    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getAugmentEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    const-string v2, "NetworkStats"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resolving plan for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 797
    .local v3, "token":J
    :try_start_0
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 798
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 800
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    nop

    .line 802
    sget-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolved to plan "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 800
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 801
    throw v1

    .line 804
    .end local v3    # "token":J
    :cond_1
    :goto_0
    return-object v0
.end method

.method private shutdownLocked()V
    .locals 3

    .line 555
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 556
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 557
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 558
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 559
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 561
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getCombineSubtypeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsSubscriptionsMonitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->stop()V

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 568
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 569
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 570
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 571
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 573
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 574
    return-void
.end method

.method private updateIfaces([Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;)V
    .locals 3
    .param p1, "defaultNetworks"    # [Landroid/net/Network;
    .param p2, "networkStates"    # [Landroid/net/NetworkState;
    .param p3, "activeIface"    # Ljava/lang/String;

    .line 1244
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1245
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1247
    :try_start_1
    iput-object p3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    .line 1248
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked([Landroid/net/Network;[Landroid/net/NetworkState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1250
    :try_start_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1251
    nop

    .line 1252
    monitor-exit v0

    .line 1253
    return-void

    .line 1250
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1251
    nop

    .end local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .end local p1    # "defaultNetworks":[Landroid/net/Network;
    .end local p2    # "networkStates":[Landroid/net/NetworkState;
    .end local p3    # "activeIface":Ljava/lang/String;
    throw v1

    .line 1252
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .restart local p1    # "defaultNetworks":[Landroid/net/Network;
    .restart local p2    # "networkStates":[Landroid/net/NetworkState;
    .restart local p3    # "activeIface":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private updateIfacesLocked([Landroid/net/Network;[Landroid/net/NetworkState;)V
    .locals 22
    .param p1, "defaultNetworks"    # [Landroid/net/Network;
    .param p2, "states"    # [Landroid/net/NetworkState;

    .line 1263
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v3, :cond_0

    return-void

    .line 1264
    :cond_0
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v3, :cond_1

    const-string v3, "NetworkStats"

    const-string/jumbo v4, "updateIfacesLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_1
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1275
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1276
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1277
    if-eqz v1, :cond_2

    .line 1279
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    .line 1282
    :cond_2
    iput-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mLastNetworkStates:[Landroid/net/NetworkState;

    .line 1284
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getCombineSubtypeEnabled()Z

    move-result v3

    .line 1285
    .local v3, "combineSubtypeEnabled":Z
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 1286
    .local v4, "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_9

    aget-object v7, v2, v6

    .line 1287
    .local v7, "state":Landroid/net/NetworkState;
    iget-object v8, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1288
    iget-object v8, v7, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v8

    invoke-static {v8}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v8

    .line 1289
    .local v8, "isMobile":Z
    iget-object v9, v0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    iget-object v10, v7, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-static {v9, v10}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    .line 1290
    .local v9, "isDefault":Z
    if-eqz v3, :cond_3

    const/4 v10, -0x1

    goto :goto_1

    .line 1291
    :cond_3
    invoke-direct {v0, v7}, Lcom/android/server/net/NetworkStatsService;->getSubTypeForState(Landroid/net/NetworkState;)I

    move-result v10

    :goto_1
    nop

    .line 1292
    .local v10, "subType":I
    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v11, v7, v9, v10}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;ZI)Landroid/net/NetworkIdentity;

    move-result-object v11

    .line 1297
    .local v11, "ident":Landroid/net/NetworkIdentity;
    iget-object v12, v7, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v12}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v12

    .line 1298
    .local v12, "baseIface":Ljava/lang/String;
    if-eqz v12, :cond_5

    .line 1299
    iget-object v13, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-static {v13, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1300
    iget-object v13, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v13, v12}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1307
    iget-object v13, v7, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v14, 0x4

    invoke-virtual {v13, v14}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1308
    invoke-virtual {v11}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v13

    if-nez v13, :cond_4

    .line 1311
    new-instance v13, Landroid/net/NetworkIdentity;

    invoke-virtual {v11}, Landroid/net/NetworkIdentity;->getType()I

    move-result v15

    .line 1312
    invoke-virtual {v11}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v16

    invoke-virtual {v11}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v11}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v18

    .line 1313
    invoke-virtual {v11}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v19

    const/16 v20, 0x1

    const/16 v21, 0x1

    move-object v14, v13

    invoke-direct/range {v14 .. v21}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1315
    .local v13, "vtIdent":Landroid/net/NetworkIdentity;
    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-string/jumbo v15, "vt_data0"

    invoke-static {v14, v15}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1316
    iget-object v14, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v14, v15}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v14

    invoke-virtual {v14, v13}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1319
    .end local v13    # "vtIdent":Landroid/net/NetworkIdentity;
    :cond_4
    if-eqz v8, :cond_5

    .line 1320
    invoke-virtual {v4, v12}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1353
    :cond_5
    iget-object v13, v7, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v13}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v13

    .line 1354
    .local v13, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/LinkProperties;

    .line 1355
    .local v15, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v15}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 1356
    .local v1, "stackedIface":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 1357
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1358
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1359
    if-eqz v8, :cond_6

    .line 1360
    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1363
    :cond_6
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v2, v1, v12}, Lcom/android/server/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    .end local v1    # "stackedIface":Ljava/lang/String;
    .end local v15    # "stackedLink":Landroid/net/LinkProperties;
    :cond_7
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_2

    .line 1286
    .end local v7    # "state":Landroid/net/NetworkState;
    .end local v8    # "isMobile":Z
    .end local v9    # "isDefault":Z
    .end local v10    # "subType":I
    .end local v11    # "ident":Landroid/net/NetworkIdentity;
    .end local v12    # "baseIface":Ljava/lang/String;
    .end local v13    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    :cond_8
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto/16 :goto_0

    .line 1369
    :cond_9
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 1370
    return-void
.end method

.method private updatePersistThresholdsLocked()V
    .locals 4

    .line 1130
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1131
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1132
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1133
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1134
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    .line 1135
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rawWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1685
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "NetworkStats"

    invoke-static {v0, v2, v8}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1687
    :cond_0
    const-wide/32 v2, 0x5265c00

    .line 1688
    .local v2, "duration":J
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v10, v0

    .line 1689
    .local v10, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    array-length v4, v9

    const/4 v5, 0x0

    move-wide v11, v2

    move v2, v5

    .end local v2    # "duration":J
    .local v11, "duration":J
    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v3, v9, v2

    .line 1690
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1692
    const-string v0, "--duration="

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1694
    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    .end local v11    # "duration":J
    .local v6, "duration":J
    move-wide v11, v6

    goto :goto_1

    .line 1695
    .end local v6    # "duration":J
    .restart local v11    # "duration":J
    :catch_0
    move-exception v0

    .line 1689
    .end local v3    # "arg":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1701
    :cond_2
    const-string v0, "--poll"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const-string/jumbo v0, "poll"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move v0, v5

    goto :goto_3

    :cond_4
    :goto_2
    move v0, v2

    :goto_3
    move v13, v0

    .line 1702
    .local v13, "poll":Z
    const-string v0, "--checkin"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 1703
    .local v14, "checkin":Z
    const-string v0, "--full"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "full"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v0, v2

    :goto_5
    move v15, v0

    .line 1704
    .local v15, "fullHistory":Z
    const-string v0, "--uid"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "detail"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move v0, v5

    goto :goto_7

    :cond_8
    :goto_6
    move v0, v2

    :goto_7
    move v6, v0

    .line 1705
    .local v6, "includeUid":Z
    const-string v0, "--tag"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "detail"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    move v2, v5

    :cond_a
    :goto_8
    move/from16 v16, v2

    .line 1707
    .local v16, "includeTag":Z
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v0, v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v7, v0

    .line 1709
    .local v7, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1710
    :try_start_1
    array-length v0, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-lez v0, :cond_b

    :try_start_2
    const-string v0, "--proto"

    aget-object v2, v9, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1712
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkStatsService;->dumpProtoLocked(Ljava/io/FileDescriptor;)V

    .line 1713
    monitor-exit v4

    return-void

    .line 1831
    :catchall_0
    move-exception v0

    move-object/from16 v22, v4

    move v8, v6

    move-object v9, v7

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    goto/16 :goto_e

    .line 1716
    :cond_b
    if-eqz v13, :cond_c

    .line 1717
    const/16 v0, 0x103

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1718
    const-string v0, "Forced poll"

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1719
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 1722
    :cond_c
    if-eqz v14, :cond_f

    .line 1723
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide/from16 v17, v2

    .line 1724
    .local v17, "end":J
    sub-long v19, v17, v11

    .line 1726
    .local v19, "start":J
    const-string/jumbo v0, "v1,"

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1727
    const-wide/16 v2, 0x3e8

    move/from16 v21, v6

    .end local v6    # "includeUid":Z
    .local v21, "includeUid":Z
    :try_start_4
    div-long v5, v19, v2

    invoke-virtual {v7, v5, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const/16 v0, 0x2c

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 1728
    div-long v2, v17, v2

    invoke-virtual {v7, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1730
    const-string/jumbo v0, "xt"

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1731
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v3, p2

    move-object/from16 v22, v4

    move-wide/from16 v4, v19

    move-object v9, v7

    move/from16 v8, v21

    .end local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v21    # "includeUid":Z
    .local v8, "includeUid":Z
    .local v9, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-wide/from16 v6, v17

    :try_start_5
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1733
    if-eqz v8, :cond_d

    .line 1734
    const-string/jumbo v0, "uid"

    invoke-virtual {v9, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    move-wide/from16 v4, v19

    move-wide/from16 v6, v17

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1737
    :cond_d
    if-eqz v16, :cond_e

    .line 1738
    const-string/jumbo v0, "tag"

    invoke-virtual {v9, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1739
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    move-wide/from16 v4, v19

    move-wide/from16 v6, v17

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1741
    :cond_e
    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-void

    .line 1831
    .end local v17    # "end":J
    .end local v19    # "start":J
    :catchall_1
    move-exception v0

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    goto/16 :goto_e

    .end local v8    # "includeUid":Z
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v21    # "includeUid":Z
    :catchall_2
    move-exception v0

    move-object/from16 v22, v4

    move-object v9, v7

    move/from16 v8, v21

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    .end local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v21    # "includeUid":Z
    .restart local v8    # "includeUid":Z
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_e

    .end local v8    # "includeUid":Z
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v6    # "includeUid":Z
    .restart local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_3
    move-exception v0

    move-object/from16 v22, v4

    move v8, v6

    move-object v9, v7

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    .end local v6    # "includeUid":Z
    .end local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "includeUid":Z
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_e

    .line 1744
    .end local v8    # "includeUid":Z
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v6    # "includeUid":Z
    .restart local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_f
    move-object/from16 v22, v4

    move v8, v6

    move-object v9, v7

    .end local v6    # "includeUid":Z
    .end local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "includeUid":Z
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_6
    const-string v0, "Configs:"

    invoke-virtual {v9, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1746
    const-string/jumbo v0, "netstats_combine_subtype_enabled"

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getCombineSubtypeEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v9, v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1747
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1748
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1750
    const-string v0, "Active interfaces:"

    invoke-virtual {v9, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1751
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1752
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    if-ge v0, v2, :cond_10

    .line 1753
    :try_start_7
    const-string v2, "iface"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1754
    const-string v2, "ident"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1755
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1752
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1757
    .end local v0    # "i":I
    :cond_10
    :try_start_8
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1759
    const-string v0, "Active UID interfaces:"

    invoke-virtual {v9, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1761
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_a
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    if-ge v0, v2, :cond_11

    .line 1762
    :try_start_9
    const-string v2, "iface"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1763
    const-string v2, "ident"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1764
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1761
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1766
    .end local v0    # "i":I
    :cond_11
    :try_start_a
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1770
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 1771
    :try_start_b
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1772
    .local v0, "calls":Landroid/util/SparseIntArray;
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1774
    :try_start_c
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 1775
    .local v2, "N":I
    new-array v3, v2, [J

    .line 1776
    .local v3, "values":[J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_b
    const/16 v6, 0x20

    if-ge v4, v2, :cond_12

    .line 1777
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .local v17, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v18, "duration":J
    int-to-long v10, v7

    shl-long v6, v10, v6

    :try_start_d
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    int-to-long v10, v10

    or-long/2addr v6, v10

    aput-wide v6, v3, v4

    .line 1776
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v10, v17

    move-wide/from16 v11, v18

    goto :goto_b

    .end local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "duration":J
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "duration":J
    :cond_12
    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    .line 1779
    .end local v4    # "j":I
    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .restart local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "duration":J
    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 1781
    const-string v4, "Top openSession callers (uid=count):"

    invoke-virtual {v9, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1782
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1783
    add-int/lit8 v4, v2, -0x14

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1784
    .local v4, "end":I
    add-int/lit8 v5, v2, -0x1

    .local v5, "j":I
    :goto_c
    if-lt v5, v4, :cond_13

    .line 1785
    aget-wide v10, v3, v5

    const-wide/16 v20, -0x1

    and-long v10, v10, v20

    long-to-int v7, v10

    .line 1786
    .local v7, "uid":I
    aget-wide v10, v3, v5

    shr-long/2addr v10, v6

    long-to-int v10, v10

    .line 1787
    .local v10, "count":I
    invoke-virtual {v9, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v11, "="

    invoke-virtual {v9, v11}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1784
    .end local v7    # "uid":I
    .end local v10    # "count":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    .line 1789
    .end local v5    # "j":I
    :cond_13
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1790
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1792
    const-string v5, "Stats Providers:"

    invoke-virtual {v9, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1793
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1794
    new-instance v5, Lcom/android/server/net/-$$Lambda$NetworkStatsService$-IJG-2djYyEsmGNuCKyh0LuHG28;

    invoke-direct {v5, v9, v8}, Lcom/android/server/net/-$$Lambda$NetworkStatsService$-IJG-2djYyEsmGNuCKyh0LuHG28;-><init>(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    invoke-direct {v1, v5}, Lcom/android/server/net/NetworkStatsService;->invokeForAllStatsProviderCallbacks(Lcom/android/server/net/NetworkStatsService$ThrowingConsumer;)V

    .line 1806
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1808
    const-string v5, "Dev stats:"

    invoke-virtual {v9, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1809
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1810
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v9, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1811
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1813
    const-string v5, "Xt stats:"

    invoke-virtual {v9, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1814
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1815
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v9, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1816
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1818
    if-eqz v8, :cond_14

    .line 1819
    const-string v5, "UID stats:"

    invoke-virtual {v9, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1820
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1821
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v9, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1822
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1825
    :cond_14
    if-eqz v16, :cond_15

    .line 1826
    const-string v5, "UID tag stats:"

    invoke-virtual {v9, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1827
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1828
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v9, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1829
    invoke-virtual {v9}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1831
    .end local v0    # "calls":Landroid/util/SparseIntArray;
    .end local v2    # "N":I
    .end local v3    # "values":[J
    .end local v4    # "end":I
    :cond_15
    monitor-exit v22
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1832
    return-void

    .line 1772
    .end local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "duration":J
    .local v10, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "duration":J
    :catchall_4
    move-exception v0

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .restart local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "duration":J
    :goto_d
    :try_start_e
    monitor-exit v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .end local v8    # "includeUid":Z
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v13    # "poll":Z
    .end local v14    # "checkin":Z
    .end local v15    # "fullHistory":Z
    .end local v16    # "includeTag":Z
    .end local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "duration":J
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "rawWriter":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_f
    throw v0

    .restart local v8    # "includeUid":Z
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v13    # "poll":Z
    .restart local v14    # "checkin":Z
    .restart local v15    # "fullHistory":Z
    .restart local v16    # "includeTag":Z
    .restart local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "duration":J
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "rawWriter":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_5
    move-exception v0

    goto :goto_d

    .line 1831
    .end local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "duration":J
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "duration":J
    :catchall_6
    move-exception v0

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .restart local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "duration":J
    goto :goto_e

    .end local v8    # "includeUid":Z
    .end local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v18    # "duration":J
    .restart local v6    # "includeUid":Z
    .local v7, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v11    # "duration":J
    :catchall_7
    move-exception v0

    move-object/from16 v22, v4

    move v8, v6

    move-object v9, v7

    move-object/from16 v17, v10

    move-wide/from16 v18, v11

    .end local v6    # "includeUid":Z
    .end local v7    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v11    # "duration":J
    .restart local v8    # "includeUid":Z
    .restart local v9    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v17    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "duration":J
    :goto_e
    monitor-exit v22
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_e
.end method

.method public forceUpdate()V
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 970
    .local v0, "token":J
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 972
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    nop

    .line 974
    return-void

    .line 972
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 973
    throw v2
.end method

.method public forceUpdateIfaces([Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;[Lcom/android/internal/net/VpnInfo;)V
    .locals 3
    .param p1, "defaultNetworks"    # [Landroid/net/Network;
    .param p2, "networkStates"    # [Landroid/net/NetworkState;
    .param p3, "activeIface"    # Ljava/lang/String;
    .param p4, "vpnInfos"    # [Lcom/android/internal/net/VpnInfo;

    .line 949
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 951
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 953
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/net/NetworkStatsService;->updateIfaces([Landroid/net/Network;[Landroid/net/NetworkState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 955
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    nop

    .line 961
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    invoke-virtual {v2, p4}, Lcom/android/server/net/NetworkStatsFactory;->updateVpnInfos([Lcom/android/internal/net/VpnInfo;)V

    .line 962
    return-void

    .line 955
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 956
    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 5
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 868
    const-string v0, "NetworkStats"

    const-string v1, "Snapshots only available for calling UID"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v0

    .line 874
    :cond_0
    sget-object v0, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/net/NetworkStatsService;->readNetworkStatsUidDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;

    move-result-object v0

    .line 877
    .local v0, "networkLayer":Landroid/net/NetworkStats;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 879
    new-instance v1, Landroid/net/NetworkStats;

    .line 880
    invoke-virtual {v0}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 882
    .local v1, "dataLayer":Landroid/net/NetworkStats;
    const/4 v2, 0x0

    .line 883
    .local v2, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/net/NetworkStats;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 884
    invoke-virtual {v0, v3, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v2

    .line 885
    sget-object v4, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v4, v2, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 886
    invoke-virtual {v1, v2}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 883
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 889
    .end local v3    # "i":I
    :cond_1
    return-object v1
.end method

.method public getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;
    .locals 5
    .param p1, "requiredIfaces"    # [Ljava/lang/String;

    .line 895
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsFactory:Lcom/android/server/net/NetworkStatsFactory;

    .line 896
    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsFactory;->augmentWithStackedInterfaces([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "ifacesToQuery":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 898
    .end local v0    # "ifacesToQuery":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 899
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    const-string v2, "Error compiling UID stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 900
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method public getIfaceStats(Ljava/lang/String;I)J
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1059
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetIfaceStat(Ljava/lang/String;IZ)J

    move-result-wide v0

    .line 1060
    .local v0, "nativeIfaceStats":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1061
    return-wide v0

    .line 1069
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->getTetherStats(Ljava/lang/String;I)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getTotalStats(I)J
    .locals 4
    .param p1, "type"    # I

    .line 1075
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetTotalStat(IZ)J

    move-result-wide v0

    .line 1076
    .local v0, "nativeTotalStats":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1077
    return-wide v0

    .line 1080
    :cond_0
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/android/server/net/NetworkStatsService;->getTetherStats(Ljava/lang/String;I)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getUidStats(II)J
    .locals 3
    .param p1, "uid"    # I
    .param p2, "type"    # I

    .line 1045
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1049
    .local v0, "callingUid":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 1052
    const-wide/16 v1, -0x1

    return-wide v1

    .line 1054
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v1

    invoke-static {p1, p2, v1}, Lcom/android/server/net/NetworkStatsService;->nativeGetUidStat(IIZ)J

    move-result-wide v1

    return-wide v1
.end method

.method public handleOnCollapsedRatTypeChanged()V
    .locals 4

    .line 1235
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1236
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 1237
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollDelay()J

    move-result-wide v2

    .line 1236
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1238
    return-void
.end method

.method public incrementOperationCount(III)V
    .locals 22
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I

    .line 911
    move-object/from16 v1, p0

    move/from16 v15, p1

    move/from16 v13, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, v15, :cond_0

    .line 912
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    const-string v3, "NetworkStats"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    :cond_0
    if-ltz v13, :cond_2

    .line 918
    if-eqz p2, :cond_1

    .line 922
    iget-object v14, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 923
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 924
    .local v5, "set":I
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v18, v14

    int-to-long v14, v13

    move/from16 v4, p1

    move/from16 v6, p2

    move-object/from16 v21, v18

    move-wide/from16 v18, v14

    move v15, v13

    move-wide/from16 v13, v16

    move-wide/from16 v15, v18

    :try_start_1
    invoke-virtual/range {v2 .. v16}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 926
    iget-object v6, v1, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    iget-object v7, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    move/from16 v2, p3

    int-to-long v3, v2

    move/from16 v8, p1

    move v9, v5

    move-wide/from16 v19, v3

    :try_start_2
    invoke-virtual/range {v6 .. v20}, Landroid/net/NetworkStats;->combineValues(Ljava/lang/String;IIIJJJJJ)Landroid/net/NetworkStats;

    .line 928
    nop

    .end local v5    # "set":I
    monitor-exit v21

    .line 929
    return-void

    .line 928
    :catchall_0
    move-exception v0

    move/from16 v2, p3

    goto :goto_0

    :catchall_1
    move-exception v0

    move v2, v13

    move-object/from16 v21, v14

    :goto_0
    monitor-exit v21
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_0

    .line 919
    :cond_1
    move v2, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count must have specific tag"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_2
    move v2, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count can only be incremented"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic lambda$registerGlobalAlert$0$NetworkStatsService(Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 621
    iget-object v0, p1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mProvider:Landroid/net/netstats/provider/INetworkStatsProvider;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    invoke-interface {v0, v1, v2}, Landroid/net/netstats/provider/INetworkStatsProvider;->onSetAlert(J)V

    return-void
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .locals 2

    .line 628
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;
    .locals 1
    .param p1, "flags"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 633
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public registerNetworkStatsProvider(Ljava/lang/String;Landroid/net/netstats/provider/INetworkStatsProvider;)Landroid/net/netstats/provider/INetworkStatsProviderCallback;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "provider"    # Landroid/net/netstats/provider/INetworkStatsProvider;

    .line 1960
    const-string v0, "NetworkStats"

    const-string v1, "android.permission.NETWORK_STATS_PROVIDER"

    const-string v2, "android.permission.MAINLINE_NETWORK_STACK"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/net/NetworkStatsService;->enforceAnyPermissionOf([Ljava/lang/String;)V

    .line 1962
    const-string/jumbo v1, "provider is null"

    invoke-static {p2, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1963
    const-string/jumbo v1, "tag is null"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1965
    :try_start_0
    new-instance v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderSem:Ljava/util/concurrent/Semaphore;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;-><init>(Ljava/lang/String;Landroid/net/netstats/provider/INetworkStatsProvider;Ljava/util/concurrent/Semaphore;Landroid/net/INetworkManagementEventObserver;Ljava/util/concurrent/CopyOnWriteArrayList;)V

    .line 1968
    .local v1, "callback":Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mStatsProviderCbList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 1969
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerNetworkStatsProvider from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid/pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1970
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1969
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1971
    return-object v1

    .line 1972
    .end local v1    # "callback":Lcom/android/server/net/NetworkStatsService$NetworkStatsProviderCallbackImpl;
    :catch_0
    move-exception v1

    .line 1973
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "registerNetworkStatsProvider failed"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1975
    .end local v1    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 1007
    const-string v0, "calling package is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1008
    const-string v0, "DataUsageRequest is null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1009
    iget-object v0, p2, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    const-string v1, "NetworkTemplate is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1010
    const-string/jumbo v0, "messenger is null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1011
    const-string v0, "binder is null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1013
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1014
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result v7

    .line 1016
    .local v7, "accessLevel":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 1018
    .local v8, "token":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, v0

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/net/NetworkStatsObservers;->register(Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;II)Landroid/net/DataUsageRequest;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1021
    .local v1, "normalizedRequest":Landroid/net/DataUsageRequest;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    nop

    .line 1025
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1027
    return-object v1

    .line 1021
    .end local v1    # "normalizedRequest":Landroid/net/DataUsageRequest;
    :catchall_0
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1022
    throw v1
.end method

.method setUidForeground(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z

    .line 933
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 934
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 935
    .local v2, "set":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 936
    .local v1, "oldSet":I
    if-eq v1, v2, :cond_1

    .line 937
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 938
    invoke-static {p1, v2}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 940
    .end local v1    # "oldSet":I
    .end local v2    # "set":I
    :cond_1
    monitor-exit v0

    .line 941
    return-void

    .line 940
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 17

    .line 479
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 480
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, v1, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 483
    const-string v3, "dev"

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 484
    const-string/jumbo v3, "xt"

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v4

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 485
    const-string/jumbo v3, "uid"

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v4

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 486
    const-string/jumbo v3, "uid_tag"

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v4}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v4

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    .line 495
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 498
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V

    .line 499
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 503
    .local v2, "tetherFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v2, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 506
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    .line 507
    .local v3, "pollFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v4, v1, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, v1, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const-string v8, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {v0, v4, v3, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 510
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.UID_REMOVED"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v4, v0

    .line 511
    .local v4, "removedFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v7, v1, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, v1, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7, v4, v6, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 514
    new-instance v0, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.USER_REMOVED"

    invoke-direct {v0, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v7, v0

    .line 515
    .local v7, "userFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, v1, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8, v7, v6, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 518
    new-instance v0, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    .line 519
    .local v6, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v8, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 522
    :try_start_1
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v8, v1, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v0, v8}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 525
    goto :goto_0

    .line 523
    :catch_0
    move-exception v0

    .line 528
    :goto_0
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 529
    invoke-static {v0, v5, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 531
    .local v0, "pollIntent":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 532
    .local v8, "currentRealtime":J
    iget-object v10, v1, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v11, 0x3

    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 533
    invoke-interface {v5}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v14

    .line 532
    move-wide v12, v8

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 537
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v5}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getCombineSubtypeEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 538
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mNetworkStatsSubscriptionsMonitor:Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;

    invoke-virtual {v5}, Lcom/android/server/net/NetworkStatsSubscriptionsMonitor;->start()V

    .line 541
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 542
    return-void

    .line 499
    .end local v0    # "pollIntent":Landroid/app/PendingIntent;
    .end local v2    # "tetherFilter":Landroid/content/IntentFilter;
    .end local v3    # "pollFilter":Landroid/content/IntentFilter;
    .end local v4    # "removedFilter":Landroid/content/IntentFilter;
    .end local v6    # "shutdownFilter":Landroid/content/IntentFilter;
    .end local v7    # "userFilter":Landroid/content/IntentFilter;
    .end local v8    # "currentRealtime":J
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/net/DataUsageRequest;

    .line 1032
    const-string v0, "DataUsageRequest is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1034
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1035
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1037
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1039
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    nop

    .line 1041
    return-void

    .line 1039
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1040
    throw v3
.end method
