.class public Lcom/android/server/net/NetworkStatsService;
.super Landroid/net/INetworkStatsService$Stub;
.source "NetworkStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;,
        Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;,
        Lcom/android/server/net/NetworkStatsService$HandlerCallback;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;,
        Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    }
.end annotation


# static fields
.field public static final ACTION_NETWORK_STATS_POLL:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_POLL"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final ACTION_NETWORK_STATS_UPDATED:Ljava/lang/String; = "com.android.server.action.NETWORK_STATS_UPDATED"

.field private static final DUMP_STATS_SESSION_COUNT:I = 0x14

.field private static final FLAG_PERSIST_ALL:I = 0x3

.field private static final FLAG_PERSIST_FORCE:I = 0x100

.field private static final FLAG_PERSIST_NETWORK:I = 0x1

.field private static final FLAG_PERSIST_UID:I = 0x2

.field static final LOGD:Z

.field static final LOGV:Z

.field private static final MSG_PERFORM_POLL:I = 0x1

.field private static final MSG_PERFORM_POLL_REGISTER_ALERT:I = 0x2

.field private static final PERFORM_POLL_DELAY_MS:I = 0x3e8

.field private static final POLL_RATE_LIMIT_MS:J = 0x3a98L

.field private static final PREFIX_DEV:Ljava/lang/String; = "dev"

.field private static final PREFIX_UID:Ljava/lang/String; = "uid"

.field private static final PREFIX_UID_TAG:Ljava/lang/String; = "uid_tag"

.field private static final PREFIX_XT:Ljava/lang/String; = "xt"

.field static final TAG:Ljava/lang/String; = "NetworkStats"

.field private static final TAG_NETSTATS_ERROR:Ljava/lang/String; = "netstats_error"

.field private static TYPE_RX_BYTES:I = 0x0

.field private static TYPE_RX_PACKETS:I = 0x0

.field private static TYPE_TCP_RX_PACKETS:I = 0x0

.field private static TYPE_TCP_TX_PACKETS:I = 0x0

.field private static TYPE_TX_BYTES:I = 0x0

.field private static TYPE_TX_PACKETS:I = 0x0

.field public static final VT_INTERFACE:Ljava/lang/String; = "vt_data0"


# instance fields
.field private mActiveIface:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private final mActiveIfaces:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

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

.field private mAlertObserver:Landroid/net/INetworkManagementEventObserver;

.field private final mBaseDir:Ljava/io/File;

.field private final mClock:Ljava/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private mDefaultNetworks:[Landroid/net/Network;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private mGlobalAlertBytes:J

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mLastStatsSessionPoll:J

.field private mMobileIfaces:[Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private final mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

.field private final mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mOpenSessionCallsPerUid"
        }
    .end annotation
.end field

.field private mPersistThreshold:J

.field private mPollIntent:Landroid/app/PendingIntent;

.field private mPollReceiver:Landroid/content/BroadcastReceiver;

.field private mRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

.field private mShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsLock:Ljava/lang/Object;

.field private final mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

.field private final mSystemDir:Ljava/io/File;

.field private volatile mSystemReady:Z

.field private final mTeleManager:Landroid/telephony/TelephonyManager;

.field private mTetherReceiver:Landroid/content/BroadcastReceiver;

.field private mUidOperations:Landroid/net/NetworkStats;

.field private mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private final mUseBpfTrafficStats:Z

.field private mUserReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnInfos:[Lcom/android/internal/net/VpnInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field

.field private mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 164
    const-string v0, "NetworkStats"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/net/NetworkStatsService;->LOGD:Z

    .line 165
    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Ljava/time/Clock;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "alarmManager"    # Landroid/app/AlarmManager;
    .param p4, "wakeLock"    # Landroid/os/PowerManager$WakeLock;
    .param p5, "clock"    # Ljava/time/Clock;
    .param p6, "teleManager"    # Landroid/telephony/TelephonyManager;
    .param p7, "settings"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;
    .param p8, "statsObservers"    # Lcom/android/server/net/NetworkStatsObservers;
    .param p9, "systemDir"    # Ljava/io/File;
    .param p10, "baseDir"    # Ljava/io/File;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 367
    invoke-direct {p0}, Landroid/net/INetworkStatsService$Stub;-><init>()V

    .line 253
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    .line 256
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    .line 260
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    .line 268
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 272
    new-array v1, v0, [Landroid/net/Network;

    iput-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    .line 276
    new-array v0, v0, [Lcom/android/internal/net/VpnInfo;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mVpnInfos:[Lcom/android/internal/net/VpnInfo;

    .line 279
    new-instance v0, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNonMonotonicObserver:Lcom/android/server/net/NetworkStatsService$DropBoxNonMonotonicObserver;

    .line 296
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    .line 299
    new-instance v0, Landroid/net/NetworkStats;

    const-wide/16 v1, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    .line 306
    const-wide/32 v0, 0x200000

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 314
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    .line 1057
    new-instance v0, Lcom/android/server/net/NetworkStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$2;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    .line 1066
    new-instance v0, Lcom/android/server/net/NetworkStatsService$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$3;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    .line 1078
    new-instance v0, Lcom/android/server/net/NetworkStatsService$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$4;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 1098
    new-instance v0, Lcom/android/server/net/NetworkStatsService$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$5;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    .line 1118
    new-instance v0, Lcom/android/server/net/NetworkStatsService$6;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$6;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 1131
    new-instance v0, Lcom/android/server/net/NetworkStatsService$7;

    invoke-direct {v0, p0}, Lcom/android/server/net/NetworkStatsService$7;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    .line 368
    const-string/jumbo v0, "missing Context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 369
    const-string/jumbo v0, "missing INetworkManagementService"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 370
    const-string/jumbo v0, "missing AlarmManager"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 371
    const-string/jumbo v0, "missing Clock"

    invoke-static {p5, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Clock;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    .line 372
    const-string/jumbo v0, "missing NetworkStatsSettings"

    invoke-static {p7, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 373
    const-string/jumbo v0, "missing TelephonyManager"

    invoke-static {p6, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 374
    const-string/jumbo v0, "missing WakeLock"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 375
    const-string/jumbo v0, "missing NetworkStatsObservers"

    invoke-static {p8, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkStatsObservers;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    .line 376
    const-string/jumbo v0, "missing systemDir"

    invoke-static {p9, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    .line 377
    const-string/jumbo v0, "missing baseDir"

    invoke-static {p10, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mBaseDir:Ljava/io/File;

    .line 378
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/bpf/map_netd_app_uid_stats_map"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    .line 379
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/net/NetworkStatsService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 162
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/net/NetworkStatsService;[I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # [I

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->removeUserLocked(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 162
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->shutdownLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/net/NetworkStatsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 162
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/net/NetworkStatsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 162
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 162
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .line 162
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/net/NetworkStatsService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # J

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->advisePersistThreshold(J)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/NetworkStatsService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/net/NetworkStatsService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 162
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 162
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/NetworkStatsService;)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 162
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # I
    .param p3, "x3"    # J
    .param p5, "x4"    # J
    .param p7, "x5"    # I
    .param p8, "x6"    # I

    .line 162
    invoke-direct/range {p0 .. p8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/net/NetworkStatsService;Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # Landroid/net/NetworkTemplate;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 162
    invoke-direct/range {p0 .. p5}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/net/NetworkStatsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;
    .param p1, "x1"    # I

    .line 162
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/net/NetworkStatsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/NetworkStatsService;

    .line 162
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    return-void
.end method

.method private advisePersistThreshold(J)V
    .locals 6
    .param p1, "thresholdBytes"    # J

    .line 904
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 907
    const-wide/32 v2, 0x20000

    const-wide/32 v4, 0x200000

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    .line 908
    sget-boolean v0, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v0, :cond_0

    .line 909
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

    .line 914
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 915
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 916
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v3, :cond_1

    monitor-exit v2

    return-void

    .line 918
    :cond_1
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    .line 920
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 921
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 922
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 923
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 924
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 928
    return-void

    .line 924
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private assertBandwidthControlEnabled()V
    .locals 2

    .line 1802
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1805
    return-void

    .line 1803
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bandwidth module disabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertSystemReady()V
    .locals 2

    .line 1796
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 1799
    return-void

    .line 1797
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System not ready"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bootstrapStatsLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1323
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1326
    .local v0, "currentTime":J
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1331
    :goto_0
    goto :goto_1

    .line 1329
    :catch_0
    move-exception v2

    goto :goto_1

    .line 1327
    :catch_1
    move-exception v2

    .line 1328
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

    .line 1332
    :goto_1
    return-void
.end method

.method private buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;
    .locals 10
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;
    .param p3, "includeTags"    # Z

    .line 452
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DropBoxManager;

    .line 454
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

    .line 701
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    .line 702
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 701
    invoke-static {v0, v1, p1}, Lcom/android/server/net/NetworkStatsAccess;->checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private checkBpfStatsEnable()Z
    .locals 1

    .line 1037
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    return v0
.end method

.method public static create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/net/NetworkStatsService;
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkManager"    # Landroid/os/INetworkManagementService;

    .line 342
    move-object/from16 v11, p0

    const-string v0, "alarm"

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/app/AlarmManager;

    .line 343
    .local v12, "alarmManager":Landroid/app/AlarmManager;
    const-string/jumbo v0, "power"

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/PowerManager;

    .line 344
    .local v13, "powerManager":Landroid/os/PowerManager;
    nop

    .line 345
    const-string v14, "NetworkStats"

    const/4 v0, 0x1

    invoke-virtual {v13, v0, v14}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v15

    .line 347
    .local v15, "wakeLock":Landroid/os/PowerManager$WakeLock;
    new-instance v16, Lcom/android/server/net/NetworkStatsService;

    .line 348
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultClock()Ljava/time/Clock;

    move-result-object v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    new-instance v7, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;

    invoke-direct {v7, v11}, Lcom/android/server/net/NetworkStatsService$DefaultNetworkStatsSettings;-><init>(Landroid/content/Context;)V

    new-instance v8, Lcom/android/server/net/NetworkStatsObservers;

    invoke-direct {v8}, Lcom/android/server/net/NetworkStatsObservers;-><init>()V

    .line 350
    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v9

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultBaseDir()Ljava/io/File;

    move-result-object v10

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v12

    move-object v4, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/AlarmManager;Landroid/os/PowerManager$WakeLock;Ljava/time/Clock;Landroid/telephony/TelephonyManager;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;Lcom/android/server/net/NetworkStatsObservers;Ljava/io/File;Ljava/io/File;)V

    .line 351
    .local v0, "service":Lcom/android/server/net/NetworkStatsService;
    invoke-direct {v0}, Lcom/android/server/net/NetworkStatsService;->registerLocalService()V

    .line 353
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v14}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 354
    .local v1, "handlerThread":Landroid/os/HandlerThread;
    new-instance v2, Lcom/android/server/net/NetworkStatsService$HandlerCallback;

    invoke-direct {v2, v0}, Lcom/android/server/net/NetworkStatsService$HandlerCallback;-><init>(Lcom/android/server/net/NetworkStatsService;)V

    .line 355
    .local v2, "callback":Landroid/os/Handler$Callback;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 356
    new-instance v3, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsHandler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 357
    .local v3, "handler":Landroid/os/Handler;
    invoke-virtual {v0, v3, v2}, Lcom/android/server/net/NetworkStatsService;->setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V

    .line 358
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

    .line 1672
    .local p3, "ifaces":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/net/NetworkIdentitySet;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1673
    invoke-virtual {p0, p1, p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1675
    .local v1, "start":J
    const-wide v3, 0x10900000001L

    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1676
    invoke-virtual {p3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/net/NetworkIdentitySet;

    const-wide v4, 0x10b00000002L

    invoke-virtual {v3, p0, v4, v5}, Lcom/android/server/net/NetworkIdentitySet;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1678
    invoke-virtual {p0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1672
    .end local v1    # "start":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1680
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private dumpProtoLocked(Ljava/io/FileDescriptor;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1656
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1660
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-wide v2, 0x20b00000001L

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 1661
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    const-wide v2, 0x20b00000002L

    invoke-static {v0, v2, v3, v1}, Lcom/android/server/net/NetworkStatsService;->dumpInterfaces(Landroid/util/proto/ProtoOutputStream;JLandroid/util/ArrayMap;)V

    .line 1662
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000003L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1663
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000004L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1664
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000005L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1665
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    const-wide v2, 0x10b00000006L

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/net/NetworkStatsRecorder;->writeToProtoLocked(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1667
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1668
    return-void
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

    .line 1261
    .local p0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;Lcom/android/server/net/NetworkIdentitySet;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkIdentitySet;

    .line 1262
    .local v0, "ident":Lcom/android/server/net/NetworkIdentitySet;
    if-nez v0, :cond_0

    .line 1263
    new-instance v1, Lcom/android/server/net/NetworkIdentitySet;

    invoke-direct {v1}, Lcom/android/server/net/NetworkIdentitySet;-><init>()V

    move-object v0, v1

    .line 1264
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    :cond_0
    return-object v0
.end method

.method private static getDefaultBaseDir()Ljava/io/File;
    .locals 3

    .line 324
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/net/NetworkStatsService;->getDefaultSystemDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "netstats"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 325
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 326
    return-object v0
.end method

.method private static getDefaultClock()Ljava/time/Clock;
    .locals 5

    .line 330
    new-instance v0, Landroid/os/BestClock;

    sget-object v1, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/time/Clock;

    invoke-static {}, Landroid/os/SystemClock;->currentNetworkTimeClock()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 331
    invoke-static {}, Ljava/time/Clock;->systemUTC()Ljava/time/Clock;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Landroid/os/BestClock;-><init>(Ljava/time/ZoneId;[Ljava/time/Clock;)V

    .line 330
    return-object v0
.end method

.method private static getDefaultSystemDir()Ljava/io/File;
    .locals 3

    .line 320
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "system"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

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

    .line 1761
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1762
    :catch_0
    move-exception v0

    .line 1763
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v1, "NetworkStats"

    const-string/jumbo v2, "problem reading network stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1764
    new-instance v1, Landroid/net/NetworkStats;

    const-wide/16 v2, 0x0

    const/16 v4, 0xa

    invoke-direct {v1, v2, v3, v4}, Landroid/net/NetworkStats;-><init>(JI)V

    return-object v1
.end method

.method private getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "ifaces"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1694
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    const/4 v1, -0x1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v0

    .line 1698
    .local v0, "uidSnapshot":Landroid/net/NetworkStats;
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1699
    .local v3, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-virtual {v3, v1, p1, v1}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 1700
    iget-boolean v4, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    invoke-static {v0, v3, v4}, Lcom/android/server/net/NetworkStatsFactory;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Z)V

    .line 1702
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1704
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 1710
    .local v4, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/4 v5, 0x0

    const/16 v6, 0x26ac

    invoke-static {v6, v5, v5}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 1712
    invoke-virtual {v4, v2}, Landroid/telephony/TelephonyManager;->getVtDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1715
    .local v2, "vtStats":Landroid/net/NetworkStats;
    invoke-static {v6}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V

    .line 1717
    if-eqz v2, :cond_0

    .line 1718
    invoke-virtual {v2, v1, p1, v1}, Landroid/net/NetworkStats;->filter(I[Ljava/lang/String;I)V

    .line 1719
    iget-boolean v1, p0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    invoke-static {v0, v2, v1}, Lcom/android/server/net/NetworkStatsFactory;->apply464xlatAdjustments(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Z)V

    .line 1721
    invoke-virtual {v0, v2}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1724
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v0, v1}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1726
    return-object v0
.end method

.method private getNetworkStatsXt()Landroid/net/NetworkStats;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1733
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryXt()Landroid/net/NetworkStats;

    move-result-object v0

    .line 1735
    .local v0, "xtSnapshot":Landroid/net/NetworkStats;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 1741
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    const/16 v2, 0x26ac

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutBegin(III)V

    .line 1743
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getVtDataUsage(I)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1746
    .local v3, "vtSnapshot":Landroid/net/NetworkStats;
    invoke-static {v2}, Lcom/android/server/am/OpBGFrozenInjector;->checkTimeoutEnd(I)V

    .line 1748
    if-eqz v3, :cond_0

    .line 1749
    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1752
    :cond_0
    return-object v0
.end method

.method private getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J
    .locals 9
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 765
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertSystemReady()V

    .line 766
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 770
    nop

    .line 772
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 770
    const/4 v2, 0x4

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/net/NetworkStatsService;->internalGetSummaryForNetwork(Landroid/net/NetworkTemplate;IJJII)Landroid/net/NetworkStats;

    move-result-object v0

    .line 772
    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J

    move-result-wide v0

    .line 770
    return-wide v0
.end method

.method private getNetworkUidBytes(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;
    .locals 10
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "start"    # J
    .param p4, "end"    # J

    .line 776
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertSystemReady()V

    .line 777
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 780
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v2

    .line 782
    .local v2, "uidComplete":Lcom/android/server/net/NetworkStatsCollection;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    const/4 v8, 0x3

    const/16 v9, 0x3e8

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/net/NetworkStatsCollection;->getSummary(Landroid/net/NetworkTemplate;JJII)Landroid/net/NetworkStats;

    move-result-object v0

    return-object v0

    .line 782
    .end local v2    # "uidComplete":Lcom/android/server/net/NetworkStatsCollection;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getTetherStats(Ljava/lang/String;I)J
    .locals 10
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "type"    # I

    .line 1003
    const-string v0, "NetworkStats"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1005
    .local v1, "token":J
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1010
    .local v3, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1011
    nop

    .line 1013
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    if-ne p1, v6, :cond_0

    .line 1014
    const/4 v6, 0x0

    .local v6, "limitIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_0

    .line 1016
    .end local v6    # "limitIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 1017
    .restart local v6    # "limitIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v6, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1019
    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v3, v7, v6}, Landroid/net/NetworkStats;->getTotal(Landroid/net/NetworkStats$Entry;Ljava/util/HashSet;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    .line 1020
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

    .line 1022
    :cond_1
    if-eqz p2, :cond_5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_2

    .line 1032
    return-wide v4

    .line 1030
    :cond_2
    iget-wide v4, v7, Landroid/net/NetworkStats$Entry;->txPackets:J

    return-wide v4

    .line 1028
    :cond_3
    iget-wide v4, v7, Landroid/net/NetworkStats$Entry;->txBytes:J

    return-wide v4

    .line 1026
    :cond_4
    iget-wide v4, v7, Landroid/net/NetworkStats$Entry;->rxPackets:J

    return-wide v4

    .line 1024
    :cond_5
    iget-wide v4, v7, Landroid/net/NetworkStats$Entry;->rxBytes:J

    return-wide v4

    .line 1010
    .end local v3    # "tetherSnapshot":Landroid/net/NetworkStats;
    .end local v6    # "limitIfaces":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v7    # "entry":Landroid/net/NetworkStats$Entry;
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 1006
    :catch_0
    move-exception v3

    .line 1007
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

    .line 1008
    nop

    .line 1010
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1008
    return-wide v4

    .line 1010
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method private internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;
    .locals 17
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "flags"    # I
    .param p3, "fields"    # I
    .param p4, "accessLevel"    # I
    .param p5, "callingUid"    # I

    .line 756
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p2}, Lcom/android/server/net/NetworkStatsService;->resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v15

    .line 757
    .local v15, "augmentPlan":Landroid/telephony/SubscriptionPlan;
    iget-object v14, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 758
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

    .line 761
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

    .line 735
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v4, p7

    move/from16 v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/android/server/net/NetworkStatsService;->internalGetHistoryForNetwork(Landroid/net/NetworkTemplate;IIII)Landroid/net/NetworkStatsHistory;

    move-result-object v0

    .line 738
    .local v0, "history":Landroid/net/NetworkStatsHistory;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 739
    .local v1, "now":J
    const/4 v11, 0x0

    move-object v4, v0

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide v9, v1

    invoke-virtual/range {v4 .. v11}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    .line 741
    .local v3, "entry":Landroid/net/NetworkStatsHistory$Entry;
    new-instance v4, Landroid/net/NetworkStats;

    sub-long v5, p5, p3

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 742
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

    invoke-virtual {v4, v0}, Landroid/net/NetworkStats;->addValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 745
    return-object v4
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .line 1808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1810
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1815
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1810
    return v2

    .line 1815
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 1811
    :catch_0
    move-exception v2

    .line 1813
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 1815
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1813
    return v3
.end method

.method private isRateLimitedForPoll(I)Z
    .locals 9
    .param p1, "callingUid"    # I

    .line 555
    const/4 v0, 0x0

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 556
    return v0

    .line 560
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 561
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    monitor-enter v3

    .line 562
    :try_start_0
    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v4, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    .line 563
    .local v4, "calls":I
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 564
    iget-wide v5, p0, Lcom/android/server/net/NetworkStatsService;->mLastStatsSessionPoll:J

    .line 565
    .local v5, "lastCallTime":J
    iput-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mLastStatsSessionPoll:J

    .line 566
    .end local v4    # "calls":I
    monitor-exit v3

    .line 568
    sub-long v3, v1, v5

    const-wide/16 v7, 0x3a98

    cmp-long v3, v3, v7

    if-gez v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 566
    .end local v5    # "lastCallTime":J
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private maybeUpgradeLegacyStatsLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 482
    const-string/jumbo v0, "problem during legacy upgrade"

    const-string v1, "NetworkStats"

    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v4, "netstats.bin"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 483
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 484
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyNetworkLocked(Ljava/io/File;)V

    .line 485
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 488
    :cond_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v5, "netstats_xt.bin"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 489
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 490
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 493
    :cond_1
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/net/NetworkStatsService;->mSystemDir:Ljava/io/File;

    const-string/jumbo v5, "netstats_uid.bin"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v2, v3

    .line 494
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 495
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 496
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkStatsRecorder;->importLegacyUidLocked(Ljava/io/File;)V

    .line 497
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_2
    goto :goto_0

    .line 501
    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 502
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 499
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 500
    .local v2, "e":Ljava/io/IOException;
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    .end local v2    # "e":Ljava/io/IOException;
    nop

    .line 504
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

    .line 572
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 574
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 575
    .local v0, "callingUid":I
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->isRateLimitedForPoll(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 576
    and-int/lit8 v1, p1, -0x2

    goto :goto_0

    .line 577
    :cond_0
    move v1, p1

    :goto_0
    nop

    .line 578
    .local v1, "usedFlags":I
    and-int/lit8 v2, v1, 0x3

    if-eqz v2, :cond_1

    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 582
    .local v2, "ident":J
    const/4 v4, 0x3

    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 585
    goto :goto_1

    .line 584
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 591
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

    .line 1335
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1336
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1339
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1341
    :try_start_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1342
    nop

    .line 1343
    monitor-exit v0

    .line 1344
    return-void

    .line 1341
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .end local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .end local p1    # "flags":I
    throw v1

    .line 1343
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1352
    iget-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v0, :cond_0

    return-void

    .line 1353
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

    .line 1354
    :cond_1
    const-wide/32 v2, 0x200000

    const-string/jumbo v0, "performPollLocked"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1356
    and-int/lit8 v0, p1, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    move v0, v4

    .line 1357
    .local v0, "persistNetwork":Z
    :goto_0
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_3

    move v6, v5

    goto :goto_1

    :cond_3
    move v6, v4

    .line 1358
    .local v6, "persistUid":Z
    :goto_1
    and-int/lit16 v7, p1, 0x100

    if-eqz v7, :cond_4

    move v4, v5

    .line 1361
    .local v4, "persistForce":Z
    :cond_4
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v7

    .line 1364
    .local v7, "currentTime":J
    :try_start_0
    invoke-direct {p0, v7, v8}, Lcom/android/server/net/NetworkStatsService;->recordSnapshotLocked(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    nop

    .line 1374
    const-string v1, "[persisting]"

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1375
    if-eqz v4, :cond_5

    .line 1376
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1377
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1378
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 1379
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    goto :goto_2

    .line 1381
    :cond_5
    if-eqz v0, :cond_6

    .line 1382
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1383
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1385
    :cond_6
    if-eqz v6, :cond_7

    .line 1386
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1387
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v1, v7, v8}, Lcom/android/server/net/NetworkStatsRecorder;->maybePersistLocked(J)V

    .line 1390
    :cond_7
    :goto_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1392
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getSampleEnabled()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1394
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->performSampleLocked()V

    .line 1398
    :cond_8
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.android.server.action.NETWORK_STATS_UPDATED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1399
    .local v1, "updatedIntent":Landroid/content/Intent;
    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1400
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v10, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {v5, v1, v9, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1403
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1407
    invoke-static {}, Lcom/android/server/am/OpAppRecordInjector;->schedulePerformPoll()V

    .line 1409
    return-void

    .line 1368
    .end local v1    # "updatedIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1370
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 1365
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1366
    .local v2, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v3, "problem reading network stats"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1367
    return-void
.end method

.method private performSampleLocked()V
    .locals 56
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v54

    .local v54, "currentTime":J
    move-wide/from16 v52, v54

    move-wide/from16 v26, v54

    .line 1425
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateMobileWildcard()Landroid/net/NetworkTemplate;

    move-result-object v1

    .line 1426
    .local v1, "template":Landroid/net/NetworkTemplate;
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 1427
    .local v14, "devTotal":Landroid/net/NetworkStats$Entry;
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v15

    .line 1428
    .local v15, "xtTotal":Landroid/net/NetworkStats$Entry;
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v1}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v12

    .line 1430
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

    .line 1437
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v2

    .line 1438
    .end local v28    # "template":Landroid/net/NetworkTemplate;
    .local v2, "template":Landroid/net/NetworkTemplate;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v4, v2}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 1439
    .end local v31    # "devTotal":Landroid/net/NetworkStats$Entry;
    .local v4, "devTotal":Landroid/net/NetworkStats$Entry;
    iget-object v5, v3, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v2}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v0

    .line 1440
    iget-object v5, v3, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v2}, Lcom/android/server/net/NetworkStatsRecorder;->getTotalSinceBootLocked(Landroid/net/NetworkTemplate;)Landroid/net/NetworkStats$Entry;

    move-result-object v1

    .line 1442
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

    .line 1447
    return-void
.end method

.method private recordSnapshotLocked(J)V
    .locals 16
    .param p1, "currentTime"    # J
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1273
    move-object/from16 v0, p0

    const-wide/32 v1, 0x200000

    const-string/jumbo v3, "snapshotUid"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1274
    sget-object v3, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    invoke-direct {v0, v3}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v3

    .line 1275
    .local v3, "uidSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1276
    const-string/jumbo v4, "snapshotXt"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1277
    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsXt()Landroid/net/NetworkStats;

    move-result-object v12

    .line 1278
    .local v12, "xtSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1279
    const-string/jumbo v4, "snapshotDev"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1280
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->getNetworkStatsSummaryDev()Landroid/net/NetworkStats;

    move-result-object v13

    .line 1281
    .local v13, "devSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1285
    const-string/jumbo v4, "snapshotTether"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1286
    const/4 v4, 0x0

    invoke-direct {v0, v4}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsTethering(I)Landroid/net/NetworkStats;

    move-result-object v14

    .line 1287
    .local v14, "tetherSnapshot":Landroid/net/NetworkStats;
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1288
    invoke-virtual {v12, v14}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1289
    invoke-virtual {v13, v14}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V

    .line 1293
    const-string/jumbo v4, "recordDev"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1294
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const/4 v8, 0x0

    move-object v6, v13

    move-wide/from16 v9, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1296
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1297
    const-string/jumbo v4, "recordXt"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1298
    iget-object v5, v0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v7, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    move-object v6, v12

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1300
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1303
    iget-object v15, v0, Lcom/android/server/net/NetworkStatsService;->mVpnInfos:[Lcom/android/internal/net/VpnInfo;

    .line 1304
    .local v15, "vpnArray":[Lcom/android/internal/net/VpnInfo;
    const-string/jumbo v4, "recordUid"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1305
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    move-object v5, v3

    move-object v7, v15

    move-wide/from16 v8, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1306
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1307
    const-string/jumbo v4, "recordUidTag"

    invoke-static {v1, v2, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1308
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v6, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/net/NetworkStatsRecorder;->recordSnapshotLocked(Landroid/net/NetworkStats;Ljava/util/Map;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1309
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 1313
    iget-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    new-instance v7, Landroid/util/ArrayMap;

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-direct {v7, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    new-instance v8, Landroid/util/ArrayMap;

    iget-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-direct {v8, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    move-object v5, v12

    move-object v6, v3

    move-object v9, v15

    move-wide/from16 v10, p1

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/net/NetworkStatsObservers;->updateStats(Landroid/net/NetworkStats;Landroid/net/NetworkStats;Landroid/util/ArrayMap;Landroid/util/ArrayMap;[Lcom/android/internal/net/VpnInfo;J)V

    .line 1315
    return-void
.end method

.method private registerGlobalAlert()V
    .locals 5

    .line 530
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

    .line 536
    :catch_0
    move-exception v2

    .line 537
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 533
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    goto :goto_0

    .line 531
    :catch_2
    move-exception v2

    .line 532
    .local v2, "e":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    nop

    .line 540
    :goto_1
    return-void
.end method

.method private registerLocalService()V
    .locals 3

    .line 382
    const-class v0, Lcom/android/server/net/NetworkStatsManagerInternal;

    new-instance v1, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkStatsService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 384
    return-void
.end method

.method private registerPollAlarmLocked()V
    .locals 10

    .line 511
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 518
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 519
    .local v8, "currentRealtime":J
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x3

    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 520
    invoke-interface {v0}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getPollInterval()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mPollIntent:Landroid/app/PendingIntent;

    .line 519
    move-wide v3, v8

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 521
    return-void
.end method

.method private varargs removeUidsLocked([I)V
    .locals 3
    .param p1, "uids"    # [I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1454
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

    .line 1457
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1459
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1460
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkStatsRecorder;->removeUidsLocked([I)V

    .line 1463
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 1464
    .local v2, "uid":I
    invoke-static {v2}, Lcom/android/server/NetworkManagementSocketTagger;->resetKernelUidStats(I)V

    .line 1463
    .end local v2    # "uid":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1466
    :cond_1
    return-void
.end method

.method private removeUserLocked(I)V
    .locals 5
    .param p1, "userId"    # I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1473
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

    .line 1476
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 1477
    .local v0, "uids":[I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const v2, 0x400200

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v1

    .line 1480
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

    .line 1481
    .local v3, "app":Landroid/content/pm/ApplicationInfo;
    iget v4, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {p1, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 1482
    .local v4, "uid":I
    invoke-static {v0, v4}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v0

    .line 1483
    .end local v3    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v4    # "uid":I
    goto :goto_0

    .line 1485
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->removeUidsLocked([I)V

    .line 1486
    return-void
.end method

.method private resolveSubscriptionPlan(Landroid/net/NetworkTemplate;I)Landroid/telephony/SubscriptionPlan;
    .locals 6
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .param p2, "flags"    # I

    .line 711
    const/4 v0, 0x0

    .line 712
    .local v0, "plan":Landroid/telephony/SubscriptionPlan;
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    .line 713
    invoke-interface {v1}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getAugmentEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 714
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

    .line 715
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 717
    .local v3, "token":J
    :try_start_0
    const-class v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/net/NetworkPolicyManagerInternal;

    .line 718
    invoke-virtual {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerInternal;->getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 720
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 721
    nop

    .line 722
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

    .line 720
    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 724
    .end local v3    # "token":J
    :cond_1
    :goto_0
    return-object v0
.end method

.method private shutdownLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 461
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 462
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 463
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 464
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 465
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 467
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 470
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 471
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 472
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 473
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/net/NetworkStatsRecorder;->forcePersistLocked(J)V

    .line 475
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 476
    return-void
.end method

.method private updateIfaces([Landroid/net/Network;[Lcom/android/internal/net/VpnInfo;[Landroid/net/NetworkState;Ljava/lang/String;)V
    .locals 3
    .param p1, "defaultNetworks"    # [Landroid/net/Network;
    .param p2, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;
    .param p3, "networkStates"    # [Landroid/net/NetworkState;
    .param p4, "activeIface"    # Ljava/lang/String;

    .line 1153
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1154
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1156
    :try_start_1
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mVpnInfos:[Lcom/android/internal/net/VpnInfo;

    .line 1157
    iput-object p4, p0, Lcom/android/server/net/NetworkStatsService;->mActiveIface:Ljava/lang/String;

    .line 1158
    invoke-direct {p0, p1, p3}, Lcom/android/server/net/NetworkStatsService;->updateIfacesLocked([Landroid/net/Network;[Landroid/net/NetworkState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1160
    :try_start_2
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1161
    nop

    .line 1162
    monitor-exit v0

    .line 1163
    return-void

    .line 1160
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .end local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .end local p1    # "defaultNetworks":[Landroid/net/Network;
    .end local p2    # "vpnArray":[Lcom/android/internal/net/VpnInfo;
    .end local p3    # "networkStates":[Landroid/net/NetworkState;
    .end local p4    # "activeIface":Ljava/lang/String;
    throw v1

    .line 1162
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .restart local p1    # "defaultNetworks":[Landroid/net/Network;
    .restart local p2    # "vpnArray":[Lcom/android/internal/net/VpnInfo;
    .restart local p3    # "networkStates":[Landroid/net/NetworkState;
    .restart local p4    # "activeIface":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private updateIfacesLocked([Landroid/net/Network;[Landroid/net/NetworkState;)V
    .locals 20
    .param p1, "defaultNetworks"    # [Landroid/net/Network;
    .param p2, "states"    # [Landroid/net/NetworkState;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1173
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    if-nez v3, :cond_0

    return-void

    .line 1174
    :cond_0
    sget-boolean v3, Lcom/android/server/net/NetworkStatsService;->LOGV:Z

    if-eqz v3, :cond_1

    const-string v3, "NetworkStats"

    const-string/jumbo v4, "updateIfacesLocked()"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    :cond_1
    const/4 v3, 0x1

    invoke-direct {v0, v3}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1185
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1186
    iget-object v3, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    .line 1187
    if-eqz v1, :cond_2

    .line 1189
    iput-object v1, v0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    .line 1192
    :cond_2
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1193
    .local v3, "mobileIfaces":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_9

    aget-object v6, v2, v5

    .line 1194
    .local v6, "state":Landroid/net/NetworkState;
    iget-object v7, v6, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1195
    iget-object v7, v6, Landroid/net/NetworkState;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    invoke-static {v7}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v7

    .line 1196
    .local v7, "isMobile":Z
    iget-object v8, v0, Lcom/android/server/net/NetworkStatsService;->mDefaultNetworks:[Landroid/net/Network;

    iget-object v9, v6, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-static {v8, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    .line 1197
    .local v8, "isDefault":Z
    iget-object v9, v0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v9, v6, v8}, Landroid/net/NetworkIdentity;->buildNetworkIdentity(Landroid/content/Context;Landroid/net/NetworkState;Z)Landroid/net/NetworkIdentity;

    move-result-object v9

    .line 1202
    .local v9, "ident":Landroid/net/NetworkIdentity;
    iget-object v10, v6, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    .line 1203
    .local v10, "baseIface":Ljava/lang/String;
    if-eqz v10, :cond_4

    .line 1204
    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-static {v11, v10}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1205
    iget-object v11, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v11, v10}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1212
    iget-object v11, v6, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1213
    invoke-virtual {v9}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1216
    new-instance v11, Landroid/net/NetworkIdentity;

    invoke-virtual {v9}, Landroid/net/NetworkIdentity;->getType()I

    move-result v13

    .line 1217
    invoke-virtual {v9}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v14

    invoke-virtual {v9}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v16

    .line 1218
    invoke-virtual {v9}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v17

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object v12, v11

    invoke-direct/range {v12 .. v19}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1220
    .local v11, "vtIdent":Landroid/net/NetworkIdentity;
    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    const-string/jumbo v13, "vt_data0"

    invoke-static {v12, v13}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1221
    iget-object v12, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v12, v13}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1224
    .end local v11    # "vtIdent":Landroid/net/NetworkIdentity;
    :cond_3
    if-eqz v7, :cond_4

    .line 1225
    invoke-virtual {v3, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1238
    :cond_4
    iget-object v11, v6, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getStackedLinks()Ljava/util/List;

    move-result-object v11

    .line 1239
    .local v11, "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/LinkProperties;

    .line 1240
    .local v13, "stackedLink":Landroid/net/LinkProperties;
    invoke-virtual {v13}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v14

    .line 1241
    .local v14, "stackedIface":Ljava/lang/String;
    if-eqz v14, :cond_7

    .line 1242
    iget-boolean v15, v0, Lcom/android/server/net/NetworkStatsService;->mUseBpfTrafficStats:Z

    if-eqz v15, :cond_5

    .line 1243
    iget-object v15, v0, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-static {v15, v14}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1245
    :cond_5
    iget-object v15, v0, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-static {v15, v14}, Lcom/android/server/net/NetworkStatsService;->findOrCreateNetworkIdentitySet(Landroid/util/ArrayMap;Ljava/lang/Object;)Lcom/android/server/net/NetworkIdentitySet;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    .line 1246
    if-eqz v7, :cond_6

    .line 1247
    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_6
    invoke-static {v14, v10}, Lcom/android/server/net/NetworkStatsFactory;->noteStackedIface(Ljava/lang/String;Ljava/lang/String;)V

    .line 1252
    .end local v13    # "stackedLink":Landroid/net/LinkProperties;
    .end local v14    # "stackedIface":Ljava/lang/String;
    :cond_7
    goto :goto_1

    .line 1193
    .end local v6    # "state":Landroid/net/NetworkState;
    .end local v7    # "isMobile":Z
    .end local v8    # "isDefault":Z
    .end local v9    # "ident":Landroid/net/NetworkIdentity;
    .end local v10    # "baseIface":Ljava/lang/String;
    .end local v11    # "stackedLinks":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkProperties;>;"
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1256
    :cond_9
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    .line 1257
    return-void
.end method

.method private updatePersistThresholdsLocked()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mStatsLock"
        }
    .end annotation

    .line 1047
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1048
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1050
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v2, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v1, v2, v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagPersistBytes(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/net/NetworkStatsRecorder;->setPersistThreshold(J)V

    .line 1051
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    iget-wide v1, p0, Lcom/android/server/net/NetworkStatsService;->mPersistThreshold:J

    invoke-interface {v0, v1, v2}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getGlobalAlertBytes(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/net/NetworkStatsService;->mGlobalAlertBytes:J

    .line 1052
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 23
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "rawWriter"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1527
    move-object/from16 v1, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "NetworkStats"

    invoke-static {v0, v2, v8}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1529
    :cond_0
    const-wide/32 v2, 0x5265c00

    .line 1530
    .local v2, "duration":J
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    move-object v10, v0

    .line 1531
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

    .line 1532
    .local v3, "arg":Ljava/lang/String;
    invoke-virtual {v10, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1534
    const-string v0, "--duration="

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1536
    const/16 v0, 0xb

    :try_start_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    .end local v11    # "duration":J
    .local v6, "duration":J
    move-wide v11, v6

    goto :goto_1

    .line 1537
    .end local v6    # "duration":J
    .restart local v11    # "duration":J
    :catch_0
    move-exception v0

    .line 1531
    .end local v3    # "arg":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1543
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

    .line 1544
    .local v13, "poll":Z
    const-string v0, "--checkin"

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 1545
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

    .line 1546
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
    move/from16 v16, v0

    .line 1547
    .local v16, "includeUid":Z
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
    move/from16 v17, v2

    .line 1549
    .local v17, "includeTag":Z
    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {v0, v8, v2}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    move-object v6, v0

    .line 1551
    .local v6, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    iget-object v7, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1552
    :try_start_1
    array-length v0, v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    if-lez v0, :cond_b

    :try_start_2
    const-string v0, "--proto"

    aget-object v2, v9, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1554
    invoke-direct/range {p0 .. p1}, Lcom/android/server/net/NetworkStatsService;->dumpProtoLocked(Ljava/io/FileDescriptor;)V

    .line 1555
    monitor-exit v7

    return-void

    .line 1651
    :catchall_0
    move-exception v0

    move-object v8, v6

    move-object/from16 v22, v7

    move-object/from16 v18, v10

    goto/16 :goto_e

    .line 1558
    :cond_b
    if-eqz v13, :cond_c

    .line 1559
    const/16 v0, 0x103

    invoke-direct {v1, v0}, Lcom/android/server/net/NetworkStatsService;->performPollLocked(I)V

    .line 1560
    const-string v0, "Forced poll"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1561
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    .line 1564
    :cond_c
    if-eqz v14, :cond_f

    .line 1565
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-wide/from16 v18, v2

    .line 1566
    .local v18, "end":J
    sub-long v20, v18, v11

    .line 1568
    .local v20, "start":J
    const-string/jumbo v0, "v1,"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1569
    const-wide/16 v2, 0x3e8

    div-long v4, v20, v2

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    const/16 v0, 0x2c

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(C)V

    .line 1570
    div-long v2, v18, v2

    invoke-virtual {v6, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->print(J)V

    invoke-virtual {v6}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1572
    const-string/jumbo v0, "xt"

    invoke-virtual {v6, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1573
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v3, p2

    move-wide/from16 v4, v20

    move-object v8, v6

    move-object/from16 v22, v7

    .end local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .local v8, "pw":Lcom/android/internal/util/IndentingPrintWriter;
    move-wide/from16 v6, v18

    :try_start_4
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1575
    if-eqz v16, :cond_d

    .line 1576
    const-string/jumbo v0, "uid"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1577
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    move-wide/from16 v4, v20

    move-wide/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1579
    :cond_d
    if-eqz v17, :cond_e

    .line 1580
    const-string/jumbo v0, "tag"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1581
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    move-object/from16 v3, p2

    move-wide/from16 v4, v20

    move-wide/from16 v6, v18

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkStatsRecorder;->dumpCheckin(Ljava/io/PrintWriter;JJ)V

    .line 1583
    :cond_e
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    .line 1651
    .end local v8    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v18    # "end":J
    .end local v20    # "start":J
    .restart local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :catchall_1
    move-exception v0

    move-object v8, v6

    move-object/from16 v22, v7

    move-object/from16 v18, v10

    .end local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    goto/16 :goto_e

    .line 1586
    .end local v8    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :cond_f
    move-object v8, v6

    move-object/from16 v22, v7

    .end local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v8    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    :try_start_5
    const-string v0, "Active interfaces:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1587
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1588
    move v0, v5

    .local v0, "i":I
    :goto_9
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-ge v0, v2, :cond_10

    .line 1589
    :try_start_6
    const-string v2, "iface"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1590
    const-string v2, "ident"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1591
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1588
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 1651
    .end local v0    # "i":I
    :catchall_2
    move-exception v0

    move-object/from16 v18, v10

    goto/16 :goto_e

    .line 1593
    :cond_10
    :try_start_7
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1595
    const-string v0, "Active UID interfaces:"

    invoke-virtual {v8, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1596
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1597
    move v0, v5

    .restart local v0    # "i":I
    :goto_a
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-ge v0, v2, :cond_11

    .line 1598
    :try_start_8
    const-string v2, "iface"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1599
    const-string v2, "ident"

    iget-object v3, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidIfaces:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1600
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1597
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1602
    .end local v0    # "i":I
    :cond_11
    :try_start_9
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1606
    iget-object v2, v1, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    monitor-enter v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 1607
    :try_start_a
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mOpenSessionCallsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 1608
    .local v0, "calls":Landroid/util/SparseIntArray;
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 1610
    :try_start_b
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    .line 1611
    .local v2, "N":I
    new-array v3, v2, [J

    .line 1612
    .local v3, "values":[J
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_b
    const/16 v6, 0x20

    if-ge v4, v2, :cond_12

    .line 1613
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    move-object/from16 v18, v10

    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local v18, "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    int-to-long v9, v7

    shl-long v6, v9, v6

    :try_start_c
    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    int-to-long v9, v9

    or-long/2addr v6, v9

    aput-wide v6, v3, v4

    .line 1612
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v9, p3

    move-object/from16 v10, v18

    goto :goto_b

    .end local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_12
    move-object/from16 v18, v10

    .line 1615
    .end local v4    # "j":I
    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v3}, Ljava/util/Arrays;->sort([J)V

    .line 1617
    const-string v4, "Top openSession callers (uid=count):"

    invoke-virtual {v8, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1618
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1619
    add-int/lit8 v4, v2, -0x14

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1620
    .local v4, "end":I
    add-int/lit8 v5, v2, -0x1

    .local v5, "j":I
    :goto_c
    if-lt v5, v4, :cond_13

    .line 1621
    aget-wide v9, v3, v5

    const-wide/16 v19, -0x1

    and-long v9, v9, v19

    long-to-int v7, v9

    .line 1622
    .local v7, "uid":I
    aget-wide v9, v3, v5

    shr-long/2addr v9, v6

    long-to-int v9, v9

    .line 1623
    .local v9, "count":I
    invoke-virtual {v8, v7}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string v10, "="

    invoke-virtual {v8, v10}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 1620
    .end local v7    # "uid":I
    .end local v9    # "count":I
    add-int/lit8 v5, v5, -0x1

    goto :goto_c

    .line 1625
    .end local v5    # "j":I
    :cond_13
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1626
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1628
    const-string v5, "Dev stats:"

    invoke-virtual {v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1630
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v8, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1631
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1633
    const-string v5, "Xt stats:"

    invoke-virtual {v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1634
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1635
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v8, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1636
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1638
    if-eqz v16, :cond_14

    .line 1639
    const-string v5, "UID stats:"

    invoke-virtual {v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1640
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1641
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v8, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1642
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1645
    :cond_14
    if-eqz v17, :cond_15

    .line 1646
    const-string v5, "UID tag stats:"

    invoke-virtual {v8, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1648
    iget-object v5, v1, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v5, v8, v15}, Lcom/android/server/net/NetworkStatsRecorder;->dumpLocked(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    .line 1649
    invoke-virtual {v8}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1651
    .end local v0    # "calls":Landroid/util/SparseIntArray;
    .end local v2    # "N":I
    .end local v3    # "values":[J
    .end local v4    # "end":I
    :cond_15
    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    .line 1652
    return-void

    .line 1608
    .end local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_3
    move-exception v0

    move-object/from16 v18, v10

    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_d
    :try_start_d
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .end local v8    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v11    # "duration":J
    .end local v13    # "poll":Z
    .end local v14    # "checkin":Z
    .end local v15    # "fullHistory":Z
    .end local v16    # "includeUid":Z
    .end local v17    # "includeTag":Z
    .end local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "rawWriter":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_e
    throw v0

    .restart local v8    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v11    # "duration":J
    .restart local v13    # "poll":Z
    .restart local v14    # "checkin":Z
    .restart local v15    # "fullHistory":Z
    .restart local v16    # "includeUid":Z
    .restart local v17    # "includeTag":Z
    .restart local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/net/NetworkStatsService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "rawWriter":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_4
    move-exception v0

    goto :goto_d

    .line 1651
    .end local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_5
    move-exception v0

    move-object/from16 v18, v10

    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    goto :goto_e

    .end local v8    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_6
    move-exception v0

    move-object v8, v6

    move-object/from16 v22, v7

    move-object/from16 v18, v10

    .end local v6    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .end local v10    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v8    # "pw":Lcom/android/internal/util/IndentingPrintWriter;
    .restart local v18    # "argSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :goto_e
    monitor-exit v22
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v0

    :catchall_7
    move-exception v0

    goto :goto_e
.end method

.method public forceUpdate()V
    .locals 3

    .line 892
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_NETWORK_USAGE_HISTORY"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 895
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 897
    .local v0, "token":J
    const/4 v2, 0x3

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/server/net/NetworkStatsService;->performPoll(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 899
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 900
    nop

    .line 901
    return-void

    .line 899
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public forceUpdateIfaces([Landroid/net/Network;[Lcom/android/internal/net/VpnInfo;[Landroid/net/NetworkState;Ljava/lang/String;)V
    .locals 3
    .param p1, "defaultNetworks"    # [Landroid/net/Network;
    .param p2, "vpnArray"    # [Lcom/android/internal/net/VpnInfo;
    .param p3, "networkStates"    # [Landroid/net/NetworkState;
    .param p4, "activeIface"    # Ljava/lang/String;

    .line 879
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 880
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 884
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/net/NetworkStatsService;->updateIfaces([Landroid/net/Network;[Lcom/android/internal/net/VpnInfo;[Landroid/net/NetworkState;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 887
    nop

    .line 888
    return-void

    .line 886
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 789
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    const-string v2, "NetworkStats"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    :cond_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->assertBandwidthControlEnabled()V

    .line 796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 799
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    sget-object v3, Landroid/net/NetworkStats;->INTERFACES_ALL:[Ljava/lang/String;

    invoke-interface {v2, p1, v3}, Landroid/os/INetworkManagementService;->getNetworkStatsUidDetail(I[Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 802
    .local v2, "networkLayer":Landroid/net/NetworkStats;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 803
    nop

    .line 806
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mUidOperations:Landroid/net/NetworkStats;

    invoke-virtual {v2, v3}, Landroid/net/NetworkStats;->spliceOperationsFrom(Landroid/net/NetworkStats;)V

    .line 808
    new-instance v3, Landroid/net/NetworkStats;

    .line 809
    invoke-virtual {v2}, Landroid/net/NetworkStats;->getElapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 811
    .local v3, "dataLayer":Landroid/net/NetworkStats;
    const/4 v4, 0x0

    .line 812
    .local v4, "entry":Landroid/net/NetworkStats$Entry;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 813
    invoke-virtual {v2, v5, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v4

    .line 814
    sget-object v6, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    iput-object v6, v4, Landroid/net/NetworkStats$Entry;->iface:Ljava/lang/String;

    .line 815
    invoke-virtual {v3, v4}, Landroid/net/NetworkStats;->combineValues(Landroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats;

    .line 812
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 818
    .end local v5    # "i":I
    :cond_1
    return-object v3

    .line 802
    .end local v2    # "networkLayer":Landroid/net/NetworkStats;
    .end local v3    # "dataLayer":Landroid/net/NetworkStats;
    .end local v4    # "entry":Landroid/net/NetworkStats$Entry;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getDetailedUidStats([Ljava/lang/String;)Landroid/net/NetworkStats;
    .locals 5
    .param p1, "requiredIfaces"    # [Ljava/lang/String;

    .line 824
    nop

    .line 825
    :try_start_0
    invoke-static {p1}, Lcom/android/server/net/NetworkStatsFactory;->augmentWithStackedInterfaces([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, "ifacesToQuery":[Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/net/NetworkStatsService;->getNetworkStatsUidDetail([Ljava/lang/String;)Landroid/net/NetworkStats;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 827
    .end local v0    # "ifacesToQuery":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 828
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NetworkStats"

    const-string v2, "Error compiling UID stats"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 829
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

    .line 976
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetIfaceStat(Ljava/lang/String;IZ)J

    move-result-wide v0

    .line 977
    .local v0, "nativeIfaceStats":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 978
    return-wide v0

    .line 986
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->getTetherStats(Ljava/lang/String;I)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getMobileIfaces()[Ljava/lang/String;
    .locals 1

    .line 835
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mMobileIfaces:[Ljava/lang/String;

    return-object v0
.end method

.method public getTotalStats(I)J
    .locals 4
    .param p1, "type"    # I

    .line 992
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetTotalStat(IZ)J

    move-result-wide v0

    .line 993
    .local v0, "nativeTotalStats":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 994
    return-wide v0

    .line 997
    :cond_0
    sget-object v2, Landroid/net/NetworkStats;->IFACE_ALL:Ljava/lang/String;

    invoke-direct {p0, v2, p1}, Lcom/android/server/net/NetworkStatsService;->getTetherStats(Ljava/lang/String;I)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getUidStats(II)J
    .locals 2
    .param p1, "uid"    # I
    .param p2, "type"    # I

    .line 971
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->checkBpfStatsEnable()Z

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/server/net/NetworkStatsService;->nativeGetUidStat(IIZ)J

    move-result-wide v0

    return-wide v0
.end method

.method public incrementOperationCount(III)V
    .locals 22
    .param p1, "uid"    # I
    .param p2, "tag"    # I
    .param p3, "operationCount"    # I

    .line 840
    move-object/from16 v1, p0

    move/from16 v15, p1

    move/from16 v13, p3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, v15, :cond_0

    .line 841
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.UPDATE_DEVICE_STATS"

    const-string v3, "NetworkStats"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    :cond_0
    if-ltz v13, :cond_2

    .line 848
    if-eqz p2, :cond_1

    .line 852
    iget-object v14, v1, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v14

    .line 853
    :try_start_0
    iget-object v0, v1, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v15, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    .line 854
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

    .line 856
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

    .line 858
    nop

    .end local v5    # "set":I
    monitor-exit v21

    .line 859
    return-void

    .line 858
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

    .line 849
    :cond_1
    move v2, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count must have specific tag"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_2
    move v2, v13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "operation count can only be incremented"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openSession()Landroid/net/INetworkStatsSession;
    .locals 2

    .line 546
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

    .line 551
    invoke-direct {p0, p1, p2}, Lcom/android/server/net/NetworkStatsService;->openSessionInternal(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v0

    return-object v0
.end method

.method public registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;
    .locals 10
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/net/DataUsageRequest;
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 933
    const-string v0, "calling package is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    const-string v0, "DataUsageRequest is null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    iget-object v0, p2, Landroid/net/DataUsageRequest;->template:Landroid/net/NetworkTemplate;

    const-string v1, "NetworkTemplate is null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string/jumbo v0, "messenger is null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    const-string v0, "binder is null"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 940
    .local v0, "callingUid":I
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkStatsService;->checkAccessLevel(Ljava/lang/String;)I

    move-result v7

    .line 942
    .local v7, "accessLevel":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 944
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

    .line 947
    .local v1, "normalizedRequest":Landroid/net/DataUsageRequest;
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 948
    nop

    .line 951
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 953
    return-object v1

    .line 947
    .end local v1    # "normalizedRequest":Landroid/net/DataUsageRequest;
    :catchall_0
    move-exception v1

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method setHandler(Landroid/os/Handler;Landroid/os/Handler$Callback;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "callback"    # Landroid/os/Handler$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 388
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    .line 389
    iput-object p2, p0, Lcom/android/server/net/NetworkStatsService;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 390
    return-void
.end method

.method setUidForeground(IZ)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "uidForeground"    # Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 864
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 865
    .local v2, "set":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 866
    .local v1, "oldSet":I
    if-eq v1, v2, :cond_1

    .line 867
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mActiveUidCounterSet:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 868
    invoke-static {p1, v2}, Lcom/android/server/NetworkManagementSocketTagger;->setKernelCounterSet(II)V

    .line 870
    .end local v1    # "oldSet":I
    .end local v2    # "set":I
    :cond_1
    monitor-exit v0

    .line 871
    return-void

    .line 870
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 8

    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/net/NetworkStatsService;->mSystemReady:Z

    .line 395
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->isBandwidthControlEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    const-string v0, "NetworkStats"

    const-string v1, "bandwidth controls disabled, unable to track stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 402
    :try_start_0
    const-string v2, "dev"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getDevConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mDevRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 403
    const-string/jumbo v2, "xt"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getXtConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 404
    const-string/jumbo v2, "uid"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mUidRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 405
    const-string/jumbo v2, "uid_tag"

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mSettings:Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;

    invoke-interface {v3}, Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings;->getUidTagConfig()Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/net/NetworkStatsService;->buildRecorder(Ljava/lang/String;Lcom/android/server/net/NetworkStatsService$NetworkStatsSettings$Config;Z)Lcom/android/server/net/NetworkStatsRecorder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mUidTagRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    .line 407
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->updatePersistThresholdsLocked()V

    .line 410
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->maybeUpgradeLegacyStatsLocked()V

    .line 414
    iget-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtRecorder:Lcom/android/server/net/NetworkStatsRecorder;

    invoke-virtual {v0}, Lcom/android/server/net/NetworkStatsRecorder;->getOrLoadCompleteLocked()Lcom/android/server/net/NetworkStatsCollection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/NetworkStatsService;->mXtStatsCached:Lcom/android/server/net/NetworkStatsCollection;

    .line 417
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->bootstrapStatsLocked()V

    .line 418
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "tetherFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mTetherReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 425
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.android.server.action.NETWORK_STATS_POLL"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 426
    .local v1, "pollFilter":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mPollReceiver:Landroid/content/BroadcastReceiver;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    const-string v6, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {v2, v3, v1, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 429
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.UID_REMOVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 430
    .local v2, "removedFilter":Landroid/content/IntentFilter;
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5, v2, v4, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 433
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 434
    .local v3, "userFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mUserReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/server/net/NetworkStatsService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v3, v4, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 437
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 438
    .local v4, "shutdownFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    :try_start_1
    iget-object v5, p0, Lcom/android/server/net/NetworkStatsService;->mNetworkManager:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Lcom/android/server/net/NetworkStatsService;->mAlertObserver:Landroid/net/INetworkManagementEventObserver;

    invoke-interface {v5, v6}, Landroid/os/INetworkManagementService;->registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    goto :goto_0

    .line 442
    :catch_0
    move-exception v5

    .line 446
    :goto_0
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerPollAlarmLocked()V

    .line 447
    invoke-direct {p0}, Lcom/android/server/net/NetworkStatsService;->registerGlobalAlert()V

    .line 448
    return-void

    .line 418
    .end local v0    # "tetherFilter":Landroid/content/IntentFilter;
    .end local v1    # "pollFilter":Landroid/content/IntentFilter;
    .end local v2    # "removedFilter":Landroid/content/IntentFilter;
    .end local v3    # "userFilter":Landroid/content/IntentFilter;
    .end local v4    # "shutdownFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public unregisterUsageRequest(Landroid/net/DataUsageRequest;)V
    .locals 4
    .param p1, "request"    # Landroid/net/DataUsageRequest;

    .line 958
    const-string v0, "DataUsageRequest is null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 961
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 963
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkStatsService;->mStatsObservers:Lcom/android/server/net/NetworkStatsObservers;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/net/NetworkStatsObservers;->unregister(Landroid/net/DataUsageRequest;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 966
    nop

    .line 967
    return-void

    .line 965
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method
