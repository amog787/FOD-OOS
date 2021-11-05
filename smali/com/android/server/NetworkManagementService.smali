.class public Lcom/android/server/NetworkManagementService;
.super Landroid/os/INetworkManagementService$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkManagementService$Injector;,
        Lcom/android/server/NetworkManagementService$LocalService;,
        Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;,
        Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;,
        Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;,
        Lcom/android/server/NetworkManagementService$IdleTimerParams;,
        Lcom/android/server/NetworkManagementService$SystemServices;
    }
.end annotation


# static fields
.field static final DAEMON_MSG_MOBILE_CONN_REAL_TIME_INFO:I = 0x1

.field private static final DBG:Z

.field public static final LIMIT_GLOBAL_ALERT:Ljava/lang/String; = "globalAlert"

.field private static final MAX_UID_RANGES_PER_COMMAND:I = 0xa

.field static final MODIFY_OPERATION_ADD:Z = true

.field static final MODIFY_OPERATION_REMOVE:Z = false

.field private static final TAG:Ljava/lang/String; = "NetworkManagement"


# instance fields
.field private mActiveAlerts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveIdleTimers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/NetworkManagementService$IdleTimerParams;",
            ">;"
        }
    .end annotation
.end field

.field private mActiveQuotas:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mContext:Landroid/content/Context;

.field private final mDaemonHandler:Landroid/os/Handler;

.field private volatile mDataSaverMode:Z

.field final mFirewallChainStates:Landroid/util/SparseBooleanArray;

.field private volatile mFirewallEnabled:Z

.field private final mIdleTimerLock:Ljava/lang/Object;

.field private mLastPowerStateFromRadio:I

.field private mLastPowerStateFromWifi:I

.field private mMobileActivityFromRadio:Z

.field private mNetd:Landroid/net/INetd;

.field private mNetdService:Landroid/net/INetd;

.field private final mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

.field private mNetworkActive:Z

.field private final mNetworkActivityListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/os/INetworkActivityListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkManagementEventObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mOemNetd:Lcom/android/internal/net/IOemNetd;

.field private final mQuotaLock:Ljava/lang/Object;

.field private final mRulesLock:Ljava/lang/Object;

.field private final mServices:Lcom/android/server/NetworkManagementService$SystemServices;

.field private volatile mStrictEnabled:Z

.field private final mTetheringStatsProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/ITetheringStatsProvider;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

.field private mUidCleartextPolicy:Landroid/util/SparseIntArray;

.field private mUidFirewallDozableRules:Landroid/util/SparseIntArray;

.field private mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

.field private mUidFirewallRules:Landroid/util/SparseIntArray;

.field private mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

.field private mUidRejectOnMetered:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 142
    const-string v0, "NetworkManagement"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 294
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 172
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 175
    nop

    .line 177
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 187
    nop

    .line 188
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 190
    nop

    .line 191
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 193
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 196
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 199
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 202
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 208
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 214
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 220
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 223
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 248
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 249
    iput v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 251
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 295
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 296
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 297
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    .line 298
    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 299
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "services"    # Lcom/android/server/NetworkManagementService$SystemServices;

    .line 266
    invoke-direct {p0}, Landroid/os/INetworkManagementService$Stub;-><init>()V

    .line 172
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    .line 175
    nop

    .line 177
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 183
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    .line 187
    nop

    .line 188
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 190
    nop

    .line 191
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 193
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 196
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 199
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 202
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    .line 208
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 214
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 220
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 223
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    .line 229
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    .line 242
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    .line 247
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 248
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 249
    iput v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 251
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    .line 267
    iput-object p1, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    .line 268
    iput-object p2, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    .line 270
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    .line 272
    new-instance v0, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    .line 274
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    new-instance v2, Lcom/android/server/NetworkManagementService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/NetworkManagementService$LocalService;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-virtual {v0, v2}, Lcom/android/server/NetworkManagementService$SystemServices;->registerLocalService(Lcom/android/server/NetworkManagementInternal;)V

    .line 278
    const-string v0, "NetworkManagement"

    const-string v2, "OpLowLatencyModeController oemNetdBinder"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    invoke-virtual {v0}, Lcom/android/server/NetworkManagementService$SystemServices;->getNetd()Landroid/net/INetd;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetd:Landroid/net/INetd;

    .line 281
    invoke-interface {v0}, Landroid/net/INetd;->getOemNetd()Landroid/os/IBinder;

    move-result-object v0

    .line 282
    .local v0, "oemNetdBinder":Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/internal/net/IOemNetd$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    .end local v0    # "oemNetdBinder":Landroid/os/IBinder;
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot get OemNetd:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NetworkManagement"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 289
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;

    invoke-direct {v3, p0, v1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V

    const-string/jumbo v1, "netd"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    monitor-exit v0

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .param p4, "x3"    # [Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/NetworkManagementService;IZJIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # J
    .param p5, "x4"    # I
    .param p6, "x5"    # Z

    .line 123
    invoke-direct/range {p0 .. p6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IZJIZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/NetworkManagementService;)Landroid/net/INetd;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 123
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/NetworkManagementService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/NetworkManagementService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Z

    .line 123
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/NetworkManagementService;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 123
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # I

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 123
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 123
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;

    .line 123
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NetworkManagementService;ZLandroid/net/RouteInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/net/RouteInfo;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyRouteChange(ZLandroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 123
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkManagementService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/net/LinkAddress;

    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method private applyUidCleartextNetworkPolicy(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 1518
    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 1526
    const/4 v0, 0x3

    .line 1527
    .local v0, "policyValue":I
    goto :goto_0

    .line 1529
    .end local v0    # "policyValue":I
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown policy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1523
    :cond_1
    const/4 v0, 0x2

    .line 1524
    .restart local v0    # "policyValue":I
    goto :goto_0

    .line 1520
    .end local v0    # "policyValue":I
    :cond_2
    const/4 v0, 0x1

    .line 1521
    .restart local v0    # "policyValue":I
    nop

    .line 1533
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, v0}, Landroid/net/INetd;->strictUidCleartextPenalty(II)V

    .line 1534
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1537
    nop

    .line 1538
    return-void

    .line 1535
    :catch_0
    move-exception v1

    .line 1536
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private closeSocketsForFirewallChainLocked(ILjava/lang/String;)V
    .locals 8
    .param p1, "chain"    # I
    .param p2, "chainName"    # Ljava/lang/String;

    .line 1720
    const/4 v0, 0x0

    .line 1721
    .local v0, "numUids":I
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Closing sockets after enabling chain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NetworkManagement"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 1724
    const/4 v1, 0x1

    new-array v3, v1, [Landroid/net/UidRangeParcel;

    const/16 v4, 0x2710

    const v5, 0x7fffffff

    .line 1727
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->makeUidRangeParcel(II)Landroid/net/UidRangeParcel;

    move-result-object v4

    aput-object v4, v3, v2

    .line 1730
    .local v3, "ranges":[Landroid/net/UidRangeParcel;
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1731
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1732
    .local v2, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    new-array v5, v5, [I

    .line 1733
    .local v5, "exemptUids":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v5

    if-ge v6, v7, :cond_2

    .line 1734
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    if-ne v7, v1, :cond_1

    .line 1735
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    aput v7, v5, v0

    .line 1736
    add-int/lit8 v0, v0, 0x1

    .line 1733
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1739
    .end local v2    # "rules":Landroid/util/SparseIntArray;
    .end local v6    # "i":I
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1747
    array-length v1, v5

    if-eq v0, v1, :cond_7

    .line 1748
    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v5

    goto :goto_3

    .line 1739
    .end local v5    # "exemptUids":[I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 1752
    .end local v3    # "ranges":[Landroid/net/UidRangeParcel;
    :cond_3
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1753
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v3

    .line 1754
    .local v3, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    new-array v4, v4, [Landroid/net/UidRangeParcel;

    .line 1755
    .local v4, "ranges":[Landroid/net/UidRangeParcel;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_5

    .line 1756
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    .line 1757
    invoke-virtual {v3, v5}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    .line 1758
    .local v6, "uid":I
    invoke-static {v6, v6}, Lcom/android/server/NetworkManagementService;->makeUidRangeParcel(II)Landroid/net/UidRangeParcel;

    move-result-object v7

    aput-object v7, v4, v0

    .line 1759
    add-int/lit8 v0, v0, 0x1

    .line 1755
    .end local v6    # "uid":I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1762
    .end local v3    # "rules":Landroid/util/SparseIntArray;
    .end local v5    # "i":I
    :cond_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1764
    array-length v1, v4

    if-eq v0, v1, :cond_6

    .line 1765
    invoke-static {v4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/net/UidRangeParcel;

    move-object v3, v1

    .end local v4    # "ranges":[Landroid/net/UidRangeParcel;
    .local v1, "ranges":[Landroid/net/UidRangeParcel;
    goto :goto_2

    .line 1764
    .end local v1    # "ranges":[Landroid/net/UidRangeParcel;
    .restart local v4    # "ranges":[Landroid/net/UidRangeParcel;
    :cond_6
    move-object v3, v4

    .line 1768
    .end local v4    # "ranges":[Landroid/net/UidRangeParcel;
    .local v3, "ranges":[Landroid/net/UidRangeParcel;
    :goto_2
    new-array v5, v2, [I

    .line 1772
    .local v5, "exemptUids":[I
    :cond_7
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, v3, v5}, Landroid/net/INetd;->socketDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1775
    goto :goto_4

    .line 1773
    :catch_0
    move-exception v1

    .line 1774
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing sockets after enabling chain "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "NetworkManagement"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 1762
    .end local v3    # "ranges":[Landroid/net/UidRangeParcel;
    .end local v5    # "exemptUids":[I
    :catchall_1
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v2
.end method

.method private connectNativeNetdService()V
    .locals 4

    .line 548
    const-string v0, "NetworkManagement"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService$SystemServices;->getNetd()Landroid/net/INetd;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 549
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdUnsolicitedEventListener:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    invoke-interface {v1, v2}, Landroid/net/INetd;->registerUnsolicitedEventListener(Landroid/net/INetdUnsolicitedEventListener;)V

    .line 550
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Register unsolicited event listener"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    goto :goto_0

    .line 551
    :catch_0
    move-exception v1

    .line 552
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set Netd unsolicited event listener "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 313
    new-instance v0, Lcom/android/server/NetworkManagementService$SystemServices;

    invoke-direct {v0}, Lcom/android/server/NetworkManagementService$SystemServices;-><init>()V

    invoke-static {p0, v0}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)Lcom/android/server/NetworkManagementService;

    move-result-object v0

    return-object v0
.end method

.method static create(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)Lcom/android/server/NetworkManagementService;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "services"    # Lcom/android/server/NetworkManagementService$SystemServices;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 303
    new-instance v0, Lcom/android/server/NetworkManagementService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/NetworkManagementService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkManagementService$SystemServices;)V

    .line 305
    .local v0, "service":Lcom/android/server/NetworkManagementService;
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    const-string v2, "NetworkManagement"

    if-eqz v1, :cond_0

    const-string v1, "Creating NetworkManagementService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Connecting native netd service"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    invoke-direct {v0}, Lcom/android/server/NetworkManagementService;->connectNativeNetdService()V

    .line 308
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "Connected"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_2
    return-object v0
.end method

.method private dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "rules"    # Landroid/util/SparseIntArray;

    .line 2086
    const-string v0, "UID firewall "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2088
    const-string v0, " rule: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 2090
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2091
    invoke-virtual {p3, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2092
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2093
    invoke-virtual {p3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2094
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2090
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2096
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2097
    return-void
.end method

.method private dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "list"    # Landroid/util/SparseBooleanArray;

    .line 2074
    const-string v0, "UID bandwith control "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2075
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2076
    const-string v0, " rule: ["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2077
    invoke-virtual {p3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    .line 2078
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2079
    invoke-virtual {p3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2080
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_0

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2078
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2082
    .end local v1    # "i":I
    :cond_1
    const-string v1, "]"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2083
    return-void
.end method

.method private static enforceSystemUid()V
    .locals 3

    .line 1977
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1978
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 1981
    return-void

    .line 1979
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only available to AID_SYSTEM"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private excludeLinkLocal(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/net/InterfaceAddress;",
            ">;"
        }
    .end annotation

    .line 1144
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Ljava/net/InterfaceAddress;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1145
    .local v0, "filtered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/net/InterfaceAddress;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InterfaceAddress;

    .line 1146
    .local v2, "ia":Ljava/net/InterfaceAddress;
    invoke-virtual {v2}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1147
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    .end local v2    # "ia":Ljava/net/InterfaceAddress;
    :cond_0
    goto :goto_0

    .line 1149
    :cond_1
    return-object v0
.end method

.method public static fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;
    .locals 6
    .param p0, "p"    # Landroid/net/InterfaceConfigurationParcel;

    .line 847
    new-instance v0, Landroid/net/InterfaceConfiguration;

    invoke-direct {v0}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 848
    .local v0, "cfg":Landroid/net/InterfaceConfiguration;
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/InterfaceConfiguration;->setHardwareAddress(Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 851
    .local v1, "addr":Ljava/net/InetAddress;
    new-instance v2, Landroid/net/LinkAddress;

    iget v3, p0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    invoke-direct {v2, v1, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v0, v2}, Landroid/net/InterfaceConfiguration;->setLinkAddress(Landroid/net/LinkAddress;)V

    .line 852
    iget-object v2, p0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 853
    .local v5, "flag":Ljava/lang/String;
    invoke-virtual {v0, v5}, Landroid/net/InterfaceConfiguration;->setFlag(Ljava/lang/String;)V

    .line 852
    .end local v5    # "flag":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 856
    :cond_0
    return-object v0
.end method

.method private getBatteryStats()Lcom/android/internal/app/IBatteryStats;
    .locals 2

    .line 329
    monitor-enter p0

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    monitor-exit p0

    return-object v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mServices:Lcom/android/server/NetworkManagementService$SystemServices;

    const-string v1, "batterystats"

    .line 334
    invoke-virtual {v0, v1}, Lcom/android/server/NetworkManagementService$SystemServices;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/NetworkManagementService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 335
    monitor-exit p0

    return-object v0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getFirewallChainName(I)Ljava/lang/String;
    .locals 3
    .param p1, "chain"    # I

    .line 1813
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1819
    const-string/jumbo v0, "powersave"

    return-object v0

    .line 1821
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad child chain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1815
    :cond_1
    const-string/jumbo v0, "standby"

    return-object v0

    .line 1817
    :cond_2
    const-string v0, "dozable"

    return-object v0
.end method

.method private getFirewallChainState(I)Z
    .locals 2
    .param p1, "chain"    # I

    .line 2259
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2260
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 2261
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getFirewallRuleName(II)Ljava/lang/String;
    .locals 1
    .param p1, "chain"    # I
    .param p2, "rule"    # I

    .line 1936
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v0

    if-nez v0, :cond_1

    .line 1937
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1938
    const-string v0, "allow"

    .local v0, "ruleName":Ljava/lang/String;
    goto :goto_0

    .line 1940
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_0
    const-string v0, "deny"

    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_0

    .line 1943
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 1944
    const-string v0, "deny"

    .restart local v0    # "ruleName":Ljava/lang/String;
    goto :goto_0

    .line 1946
    .end local v0    # "ruleName":Ljava/lang/String;
    :cond_2
    const-string v0, "allow"

    .line 1949
    .restart local v0    # "ruleName":Ljava/lang/String;
    :goto_0
    return-object v0
.end method

.method private getFirewallRuleType(II)I
    .locals 1
    .param p1, "chain"    # I
    .param p2, "rule"    # I

    .line 1969
    if-nez p2, :cond_1

    .line 1970
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallType(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1971
    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1970
    :goto_0
    return v0

    .line 1973
    :cond_1
    return p2
.end method

.method private getFirewallType(I)I
    .locals 3
    .param p1, "chain"    # I

    .line 1826
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 1834
    invoke-virtual {p0}, Lcom/android/server/NetworkManagementService;->isFirewallEnabled()Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 1832
    :cond_0
    return v0

    .line 1828
    :cond_1
    return v1

    .line 1830
    :cond_2
    return v0
.end method

.method private getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;
    .locals 3
    .param p1, "chain"    # I

    .line 1954
    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1960
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 1964
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown chain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1956
    :cond_1
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 1958
    :cond_2
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    return-object v0

    .line 1962
    :cond_3
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private declared-synchronized invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V
    .locals 3
    .param p1, "eventCallback"    # Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;

    monitor-enter p0

    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 359
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 361
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkManagementEventObserver;

    invoke-interface {p1, v2}, Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;->sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    goto :goto_1

    .line 362
    :catch_0
    move-exception v2

    goto :goto_1

    .line 366
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 367
    throw v1

    .line 362
    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local v1    # "i":I
    :catch_1
    move-exception v2

    .line 359
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 367
    nop

    .line 368
    monitor-exit p0

    return-void

    .line 356
    .end local v0    # "length":I
    .end local p1    # "eventCallback":Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isNetworkRestrictedInternal(I)Z
    .locals 5
    .param p1, "uid"    # I

    .line 2223
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2224
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    .line 2225
    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 2226
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of app standby mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    :cond_0
    monitor-exit v0

    return v3

    .line 2229
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    .line 2230
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 2231
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of device idle mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :cond_2
    monitor-exit v0

    return v3

    .line 2234
    :cond_3
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    .line 2235
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    if-eq v1, v3, :cond_5

    .line 2236
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of power saver mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2237
    :cond_4
    monitor-exit v0

    return v3

    .line 2239
    :cond_5
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2240
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of no metered data in the background"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_6
    monitor-exit v0

    return v3

    .line 2244
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2245
    sget-boolean v1, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Uid "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " restricted because of data saver mode"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2246
    :cond_8
    monitor-exit v0

    return v3

    .line 2248
    :cond_9
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 2249
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic lambda$notifyAddressRemoved$8(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 693
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$notifyAddressUpdated$7(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "address"    # Landroid/net/LinkAddress;
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 686
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->addressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceAdded$2(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 389
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceAdded(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceClassActivity$5(IZJLandroid/net/INetworkManagementEventObserver;)V
    .locals 1
    .param p0, "type"    # I
    .param p1, "active"    # Z
    .param p2, "tsNanos"    # J
    .param p4, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 459
    nop

    .line 460
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-interface {p4, v0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceClassDataActivityChanged(Ljava/lang/String;ZJ)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceDnsServerInfo$9(Ljava/lang/String;J[Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "lifetime"    # J
    .param p3, "addresses"    # [Ljava/lang/String;
    .param p4, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 700
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/net/INetworkManagementEventObserver;->interfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceLinkStateChanged$1(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "up"    # Z
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceLinkStateChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceRemoved$3(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 400
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->interfaceRemoved(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyInterfaceStatusChanged$0(Ljava/lang/String;ZLandroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "up"    # Z
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 374
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic lambda$notifyLimitReached$4(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "limitName"    # Ljava/lang/String;
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 407
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkManagementEventObserver;->limitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$notifyRouteChange$10(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "route"    # Landroid/net/RouteInfo;
    .param p1, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 708
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeUpdated(Landroid/net/RouteInfo;)V

    return-void
.end method

.method static synthetic lambda$notifyRouteChange$11(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V
    .locals 0
    .param p0, "route"    # Landroid/net/RouteInfo;
    .param p1, "o"    # Landroid/net/INetworkManagementEventObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 710
    invoke-interface {p1, p0}, Landroid/net/INetworkManagementEventObserver;->routeRemoved(Landroid/net/RouteInfo;)V

    return-void
.end method

.method private static makeUidRangeParcel(II)Landroid/net/UidRangeParcel;
    .locals 1
    .param p0, "start"    # I
    .param p1, "stop"    # I

    .line 1485
    new-instance v0, Landroid/net/UidRangeParcel;

    invoke-direct {v0}, Landroid/net/UidRangeParcel;-><init>()V

    .line 1486
    .local v0, "range":Landroid/net/UidRangeParcel;
    iput p0, v0, Landroid/net/UidRangeParcel;->start:I

    .line 1487
    iput p1, v0, Landroid/net/UidRangeParcel;->stop:I

    .line 1488
    return-object v0
.end method

.method private modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "add"    # Z
    .param p2, "fromIface"    # Ljava/lang/String;
    .param p3, "toIface"    # Ljava/lang/String;

    .line 1154
    if-eqz p1, :cond_0

    .line 1155
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p2, p3}, Landroid/net/INetd;->ipfwdAddInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1157
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p2, p3}, Landroid/net/INetd;->ipfwdRemoveInterfaceForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    :goto_0
    nop

    .line 1162
    return-void

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private modifyInterfaceInNetwork(ZILjava/lang/String;)V
    .locals 2
    .param p1, "add"    # Z
    .param p2, "netId"    # I
    .param p3, "iface"    # Ljava/lang/String;

    .line 2110
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2112
    if-eqz p1, :cond_0

    .line 2113
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p2, p3}, Landroid/net/INetd;->networkAddInterface(ILjava/lang/String;)V

    goto :goto_0

    .line 2115
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p2, p3}, Landroid/net/INetd;->networkRemoveInterface(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2119
    :goto_0
    nop

    .line 2120
    return-void

    .line 2117
    :catch_0
    move-exception v0

    .line 2118
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 693
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$hs6djmKbGd8sG4u1TMglrogNP_s;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$hs6djmKbGd8sG4u1TMglrogNP_s;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 694
    return-void
.end method

.method private notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/LinkAddress;

    .line 686
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$Yw12yNgo43yul34SibAKDtttAK8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$Yw12yNgo43yul34SibAKDtttAK8;-><init>(Ljava/lang/String;Landroid/net/LinkAddress;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 687
    return-void
.end method

.method private notifyInterfaceAdded(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 389
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$vX8dVVYxxv3YT9jQuN34bgGgRa8;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 390
    return-void
.end method

.method private notifyInterfaceClassActivity(IZJIZ)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "isActive"    # Z
    .param p3, "tsNanos"    # J
    .param p5, "uid"    # I
    .param p6, "fromRadio"    # Z

    .line 415
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    .line 416
    .local v0, "isMobile":Z
    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 417
    const/4 v2, 0x3

    goto :goto_0

    .line 418
    :cond_0
    move v2, v1

    :goto_0
    nop

    .line 419
    .local v2, "powerState":I
    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 420
    if-nez p6, :cond_1

    .line 421
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-eqz v1, :cond_2

    .line 425
    iget v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    goto :goto_1

    .line 428
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    .line 430
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    if-eq v1, v2, :cond_3

    .line 431
    iput v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    .line 433
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    invoke-interface {v1, v2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteMobileRadioPowerState(IJI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 435
    goto :goto_2

    .line 434
    :catch_0
    move-exception v1

    .line 436
    :goto_2
    const/16 v1, 0xc

    invoke-static {v1, p5, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 441
    :cond_3
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeWifi(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 442
    iget v1, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    if-eq v1, v2, :cond_4

    .line 443
    iput v2, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromWifi:I

    .line 445
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    invoke-interface {v1, v2, p3, p4, p5}, Lcom/android/internal/app/IBatteryStats;->noteWifiRadioPowerState(IJI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 447
    goto :goto_3

    .line 446
    :catch_1
    move-exception v1

    .line 448
    :goto_3
    const/16 v1, 0xd

    invoke-static {v1, p5, v3, v2}, Lcom/android/internal/util/FrameworkStatsLog;->write_non_chained(IILjava/lang/String;I)V

    .line 453
    :cond_4
    if-eqz v0, :cond_5

    if-nez p6, :cond_5

    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    if-nez v1, :cond_6

    .line 458
    :cond_5
    move v1, p2

    .line 459
    .local v1, "active":Z
    new-instance v3, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;

    invoke-direct {v3, p1, v1, p3, p4}, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;-><init>(IZJ)V

    invoke-direct {p0, v3}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 463
    .end local v1    # "active":Z
    :cond_6
    const/4 v1, 0x0

    .line 464
    .local v1, "report":Z
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 465
    :try_start_2
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 468
    const/4 p2, 0x1

    .line 470
    :cond_7
    iget-boolean v4, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-eq v4, p2, :cond_8

    .line 471
    iput-boolean p2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 472
    move v1, p2

    .line 474
    :cond_8
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 475
    if-eqz v1, :cond_9

    .line 476
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->reportNetworkActive()V

    .line 478
    :cond_9
    return-void

    .line 474
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lifetime"    # J
    .param p4, "addresses"    # [Ljava/lang/String;

    .line 700
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/-$$Lambda$NetworkManagementService$RVCc8O9RWjyrynN9cyM7inAv-fk;-><init>(Ljava/lang/String;J[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 701
    return-void
.end method

.method private notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 382
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$_L953cbquVj0BMBP1MZlSTm0Umg;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$_L953cbquVj0BMBP1MZlSTm0Umg;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 383
    return-void
.end method

.method private notifyInterfaceRemoved(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$FsR_UD5xfj4hgrwGdX74wq881Bk;

    invoke-direct {v0, p1}, Lcom/android/server/-$$Lambda$NetworkManagementService$FsR_UD5xfj4hgrwGdX74wq881Bk;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 401
    return-void
.end method

.method private notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "up"    # Z

    .line 374
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$fl14NirBlFUd6eJkGcL0QWd5-w0;-><init>(Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 375
    return-void
.end method

.method private notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "limitName"    # Ljava/lang/String;
    .param p2, "iface"    # Ljava/lang/String;

    .line 407
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$xer7k2RLU4mODjrkZqaX89S9gD8;

    invoke-direct {v0, p1, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$xer7k2RLU4mODjrkZqaX89S9gD8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 408
    return-void
.end method

.method private notifyRouteChange(ZLandroid/net/RouteInfo;)V
    .locals 1
    .param p1, "updated"    # Z
    .param p2, "route"    # Landroid/net/RouteInfo;

    .line 707
    if-eqz p1, :cond_0

    .line 708
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;

    invoke-direct {v0, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$VhSl9D6THA_3jE0unleMmkHavJ0;-><init>(Landroid/net/RouteInfo;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    goto :goto_0

    .line 710
    :cond_0
    new-instance v0, Lcom/android/server/-$$Lambda$NetworkManagementService$JKmkb4AIm_PPzQp1XOHOgPPRswo;

    invoke-direct {v0, p2}, Lcom/android/server/-$$Lambda$NetworkManagementService$JKmkb4AIm_PPzQp1XOHOgPPRswo;-><init>(Landroid/net/RouteInfo;)V

    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->invokeForAllObservers(Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;)V

    .line 712
    :goto_0
    return-void
.end method

.method private prepareNativeDaemon()V
    .locals 10

    .line 564
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 567
    :try_start_0
    const-string/jumbo v1, "net.qtaguid_enabled"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    .line 571
    iget-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p0, v2}, Lcom/android/server/NetworkManagementService;->setDataSaverModeEnabled(Z)Z

    .line 573
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 574
    .local v2, "size":I
    if-lez v2, :cond_1

    .line 575
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " active quota rules"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 577
    .local v3, "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    .line 578
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 579
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/NetworkManagementService;->setInterfaceQuota(Ljava/lang/String;J)V

    .line 580
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_0

    .line 583
    .end local v3    # "activeQuotas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    move v2, v3

    .line 584
    if-lez v2, :cond_3

    .line 585
    sget-boolean v3, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "NetworkManagement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pushing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " active alert rules"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_2
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 587
    .local v3, "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    .line 588
    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 589
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/server/NetworkManagementService;->setInterfaceAlert(Ljava/lang/String;J)V

    .line 590
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    goto :goto_1

    .line 593
    .end local v3    # "activeAlerts":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_3
    const/4 v3, 0x0

    .line 594
    .local v3, "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    const/4 v4, 0x0

    .line 595
    .local v4, "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 596
    :try_start_1
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v2, v6

    .line 597
    if-lez v2, :cond_5

    .line 598
    sget-boolean v6, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v6, :cond_4

    const-string v6, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pushing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " UIDs to metered blacklist rules"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_4
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    move-object v3, v6

    .line 600
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    .line 603
    :cond_5
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    move v2, v6

    .line 604
    if-lez v2, :cond_7

    .line 605
    sget-boolean v6, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v6, :cond_6

    const-string v6, "NetworkManagement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Pushing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " UIDs to metered whitelist rules"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_6
    iget-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    move-object v4, v6

    .line 607
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 609
    :cond_7
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 610
    if-eqz v3, :cond_8

    .line 611
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 612
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 613
    invoke-virtual {v3, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    .line 612
    invoke-virtual {p0, v6, v7}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkBlacklist(IZ)V

    .line 611
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 616
    .end local v5    # "i":I
    :cond_8
    if-eqz v4, :cond_9

    .line 617
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_9

    .line 618
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v6

    .line 619
    invoke-virtual {v4, v5}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v7

    .line 618
    invoke-virtual {p0, v6, v7}, Lcom/android/server/NetworkManagementService;->setUidMeteredNetworkWhitelist(IZ)V

    .line 617
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 623
    .end local v5    # "i":I
    :cond_9
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    move v2, v5

    .line 624
    if-lez v2, :cond_b

    .line 625
    sget-boolean v5, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v5, :cond_a

    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pushing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " active UID cleartext policies"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_a
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 627
    .local v5, "local":Landroid/util/SparseIntArray;
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    .line 628
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 629
    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-virtual {p0, v7, v8}, Lcom/android/server/NetworkManagementService;->setUidCleartextNetworkPolicy(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 628
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 635
    .end local v5    # "local":Landroid/util/SparseIntArray;
    .end local v6    # "i":I
    :cond_b
    :try_start_3
    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v5}, Landroid/net/INetd;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 636
    iget-boolean v5, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p0, v5}, Lcom/android/server/NetworkManagementService;->setFirewallEnabled(Z)V

    .line 638
    const-string v5, ""

    const/4 v6, 0x0

    invoke-direct {p0, v6, v5}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 639
    const-string/jumbo v5, "standby "

    const/4 v7, 0x2

    invoke-direct {p0, v7, v5}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 640
    const-string v5, "dozable "

    invoke-direct {p0, v1, v5}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 641
    const-string/jumbo v5, "powersave "

    const/4 v8, 0x3

    invoke-direct {p0, v8, v5}, Lcom/android/server/NetworkManagementService;->syncFirewallChainLocked(ILjava/lang/String;)V

    .line 643
    new-array v5, v8, [I

    aput v7, v5, v6

    aput v1, v5, v1

    aput v8, v5, v7

    .line 645
    .local v5, "chains":[I
    array-length v7, v5

    :goto_5
    if-ge v6, v7, :cond_d

    aget v8, v5, v6

    .line 646
    .local v8, "chain":I
    invoke-direct {p0, v8}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 647
    invoke-virtual {p0, v8, v1}, Lcom/android/server/NetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 645
    .end local v8    # "chain":I
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 653
    .end local v5    # "chains":[I
    :cond_d
    goto :goto_6

    .line 651
    :catch_0
    move-exception v1

    .line 652
    .local v1, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error set/sync firewall :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "size":I
    .end local v3    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    .end local v4    # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    :goto_6
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 676
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->getBatteryStats()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->noteNetworkStatsEnabled()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 678
    goto :goto_7

    .line 677
    :catch_1
    move-exception v0

    .line 680
    :goto_7
    return-void

    .line 609
    .restart local v2    # "size":I
    .restart local v3    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    .restart local v4    # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    :try_start_7
    throw v1

    .line 672
    .end local v2    # "size":I
    .end local v3    # "uidRejectOnQuota":Landroid/util/SparseBooleanArray;
    .end local v4    # "uidAcceptOnQuota":Landroid/util/SparseBooleanArray;
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v1
.end method

.method private readRouteList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 979
    const/4 v0, 0x0

    .line 980
    .local v0, "fstream":Ljava/io/FileInputStream;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 983
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 984
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 985
    .local v2, "in":Ljava/io/DataInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 990
    .local v3, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "s":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    .line 991
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 996
    .end local v2    # "in":Ljava/io/DataInputStream;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    nop

    .line 998
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 999
    :goto_1
    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_1

    .line 996
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_1

    .line 998
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 999
    :goto_2
    goto :goto_3

    :catch_1
    move-exception v3

    goto :goto_2

    .line 1001
    :cond_1
    :goto_3
    throw v2

    .line 993
    :catch_2
    move-exception v2

    .line 996
    if-eqz v0, :cond_2

    .line 998
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1003
    :cond_2
    :goto_4
    return-object v1
.end method

.method private reportNetworkActive()V
    .locals 3

    .line 2001
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2003
    .local v0, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2005
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/os/INetworkActivityListener;

    invoke-interface {v2}, Landroid/os/INetworkActivityListener;->onNetworkActive()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2007
    goto :goto_1

    .line 2010
    .end local v1    # "i":I
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2011
    throw v1

    .line 2006
    .restart local v1    # "i":I
    :catch_0
    move-exception v2

    .line 2003
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2010
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2011
    nop

    .line 2012
    return-void
.end method

.method private setFirewallChainState(IZ)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "state"    # Z

    .line 2253
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2254
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mFirewallChainStates:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 2255
    monitor-exit v0

    .line 2256
    return-void

    .line 2255
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setFirewallUidRuleLocked(III)V
    .locals 3
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 1896
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1897
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleType(II)I

    move-result v0

    .line 1899
    .local v0, "ruleType":I
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, v0}, Landroid/net/INetd;->firewallSetUidRule(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1902
    goto :goto_0

    .line 1900
    :catch_0
    move-exception v1

    .line 1901
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1904
    .end local v0    # "ruleType":I
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method private setUidOnMeteredNetworkList(IZZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "blacklist"    # Z
    .param p3, "enable"    # Z

    .line 1370
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1372
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1375
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1376
    if-eqz p2, :cond_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    .line 1377
    .local v2, "quotaList":Landroid/util/SparseBooleanArray;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v3

    .line 1378
    .local v3, "oldEnable":Z
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1379
    if-ne v3, p3, :cond_1

    .line 1381
    :try_start_2
    monitor-exit v0

    return-void

    .line 1384
    :cond_1
    const-string v1, "inetd bandwidth"

    const-wide/32 v4, 0x200000

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1386
    if-eqz p2, :cond_3

    .line 1387
    if-eqz p3, :cond_2

    .line 1388
    :try_start_3
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthAddNaughtyApp(I)V

    goto :goto_1

    .line 1390
    :cond_2
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveNaughtyApp(I)V

    goto :goto_1

    .line 1393
    :cond_3
    if-eqz p3, :cond_4

    .line 1394
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthAddNiceApp(I)V

    goto :goto_1

    .line 1396
    :cond_4
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveNiceApp(I)V

    .line 1399
    :goto_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1400
    if-eqz p3, :cond_5

    .line 1401
    const/4 v6, 0x1

    :try_start_4
    invoke-virtual {v2, p1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_2

    .line 1403
    :cond_5
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1405
    :goto_2
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1409
    :try_start_5
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1410
    nop

    .line 1411
    .end local v2    # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v3    # "oldEnable":Z
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1412
    return-void

    .line 1405
    .restart local v2    # "quotaList":Landroid/util/SparseBooleanArray;
    .restart local v3    # "oldEnable":Z
    :catchall_0
    move-exception v6

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .end local v2    # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v3    # "oldEnable":Z
    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "uid":I
    .end local p2    # "blacklist":Z
    .end local p3    # "enable":Z
    :try_start_7
    throw v6
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1409
    .restart local v2    # "quotaList":Landroid/util/SparseBooleanArray;
    .restart local v3    # "oldEnable":Z
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "uid":I
    .restart local p2    # "blacklist":Z
    .restart local p3    # "enable":Z
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 1406
    :catch_0
    move-exception v1

    .line 1407
    .local v1, "e":Ljava/lang/Exception;
    :try_start_8
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v2    # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v3    # "oldEnable":Z
    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "uid":I
    .end local p2    # "blacklist":Z
    .end local p3    # "enable":Z
    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1409
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "quotaList":Landroid/util/SparseBooleanArray;
    .restart local v3    # "oldEnable":Z
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "uid":I
    .restart local p2    # "blacklist":Z
    .restart local p3    # "enable":Z
    :goto_3
    :try_start_9
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 1410
    nop

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "uid":I
    .end local p2    # "blacklist":Z
    .end local p3    # "enable":Z
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1378
    .end local v2    # "quotaList":Landroid/util/SparseBooleanArray;
    .end local v3    # "oldEnable":Z
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "uid":I
    .restart local p2    # "blacklist":Z
    .restart local p3    # "enable":Z
    :catchall_2
    move-exception v2

    :try_start_a
    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "uid":I
    .end local p2    # "blacklist":Z
    .end local p3    # "enable":Z
    :try_start_b
    throw v2

    .line 1411
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "uid":I
    .restart local p2    # "blacklist":Z
    .restart local p3    # "enable":Z
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v1
.end method

.method private syncFirewallChainLocked(ILjava/lang/String;)V
    .locals 4
    .param p1, "chain"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 513
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 519
    .local v1, "uidFirewallRules":Landroid/util/SparseIntArray;
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v2

    .line 520
    .local v2, "rules":Landroid/util/SparseIntArray;
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 521
    .end local v1    # "uidFirewallRules":Landroid/util/SparseIntArray;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 526
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pushing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " active firewall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "UID rules"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 529
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 528
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 532
    .end local v0    # "i":I
    :cond_1
    return-void

    .line 521
    .end local v2    # "rules":Landroid/util/SparseIntArray;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;
    .locals 5
    .param p0, "cfg"    # Landroid/net/InterfaceConfiguration;
    .param p1, "iface"    # Ljava/lang/String;

    .line 824
    new-instance v0, Landroid/net/InterfaceConfigurationParcel;

    invoke-direct {v0}, Landroid/net/InterfaceConfigurationParcel;-><init>()V

    .line 825
    .local v0, "cfgParcel":Landroid/net/InterfaceConfigurationParcel;
    iput-object p1, v0, Landroid/net/InterfaceConfigurationParcel;->ifName:Ljava/lang/String;

    .line 826
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getHardwareAddress()Ljava/lang/String;

    move-result-object v1

    .line 827
    .local v1, "hwAddr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 828
    iput-object v1, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    goto :goto_0

    .line 830
    :cond_0
    const-string v2, ""

    iput-object v2, v0, Landroid/net/InterfaceConfigurationParcel;->hwAddr:Ljava/lang/String;

    .line 832
    :goto_0
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/InterfaceConfigurationParcel;->ipv4Addr:Ljava/lang/String;

    .line 833
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v2

    iput v2, v0, Landroid/net/InterfaceConfigurationParcel;->prefixLength:I

    .line 834
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v2, "flags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/net/InterfaceConfiguration;->getFlags()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 836
    .local v4, "flag":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    .end local v4    # "flag":Ljava/lang/String;
    goto :goto_1

    .line 838
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, v0, Landroid/net/InterfaceConfigurationParcel;->flags:[Ljava/lang/String;

    .line 840
    return-object v0
.end method

.method private static toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;
    .locals 4
    .param p0, "ranges"    # [Landroid/net/UidRange;

    .line 1492
    array-length v0, p0

    new-array v0, v0, [Landroid/net/UidRangeParcel;

    .line 1493
    .local v0, "stableRanges":[Landroid/net/UidRangeParcel;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1494
    aget-object v2, p0, v1

    iget v2, v2, Landroid/net/UidRange;->start:I

    aget-object v3, p0, v1

    iget v3, v3, Landroid/net/UidRange;->stop:I

    invoke-static {v2, v3}, Lcom/android/server/NetworkManagementService;->makeUidRangeParcel(II)Landroid/net/UidRangeParcel;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1493
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1496
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private updateFirewallUidRuleLocked(III)Z
    .locals 7
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 1908
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1909
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v1

    .line 1911
    .local v1, "uidFirewallRules":Landroid/util/SparseIntArray;
    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 1912
    .local v3, "oldUidFirewallRule":I
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_0

    .line 1913
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "oldRule = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", newRule="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " for uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " on chain "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    :cond_0
    if-ne v3, p3, :cond_2

    .line 1917
    sget-boolean v4, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v4, :cond_1

    const-string v4, "NetworkManagement"

    const-string v5, "!!!!! Skipping change"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    :cond_1
    monitor-exit v0

    return v2

    .line 1922
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v4

    .line 1923
    .local v4, "ruleName":Ljava/lang/String;
    invoke-direct {p0, p1, v3}, Lcom/android/server/NetworkManagementService;->getFirewallRuleName(II)Ljava/lang/String;

    move-result-object v5

    .line 1925
    .local v5, "oldRuleName":Ljava/lang/String;
    if-nez p3, :cond_3

    .line 1926
    invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 1928
    :cond_3
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 1930
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v2, 0x1

    :cond_4
    monitor-exit v0

    return v2

    .line 1931
    .end local v1    # "uidFirewallRules":Landroid/util/SparseIntArray;
    .end local v3    # "oldUidFirewallRule":I
    .end local v4    # "ruleName":Ljava/lang/String;
    .end local v5    # "oldRuleName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addIdleTimer(Ljava/lang/String;II)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "timeout"    # I
    .param p3, "type"    # I

    .line 1198
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1200
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagement"

    const-string v1, "Adding idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1203
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1204
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_1

    .line 1206
    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    .line 1207
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1211
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, p2, v3}, Landroid/net/INetd;->idletimerAddInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1214
    nop

    .line 1215
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    invoke-direct {v3, p2, p3}, Lcom/android/server/NetworkManagementService$IdleTimerParams;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-static {p3}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1219
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    .line 1221
    :cond_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;

    invoke-direct {v3, p0, p3}, Lcom/android/server/-$$Lambda$NetworkManagementService$YKgmK-4MuJjN-VLuMBhmJy1eWj4;-><init>(Lcom/android/server/NetworkManagementService;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1223
    nop

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    monitor-exit v0

    .line 1224
    return-void

    .line 1212
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_0
    move-exception v2

    .line 1213
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "timeout":I
    .end local p3    # "type":I
    throw v3

    .line 1223
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "timeout":I
    .restart local p3    # "type":I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public addInterfaceToLocalNetwork(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)V"
        }
    .end annotation

    .line 2200
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const/4 v0, 0x1

    const/16 v1, 0x63

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2202
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {v0, p1, p2}, Landroid/net/shared/RouteUtils;->addRoutesToLocalNetwork(Landroid/net/INetd;Ljava/lang/String;Ljava/util/List;)V

    .line 2203
    return-void
.end method

.method public addInterfaceToNetwork(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .line 2101
    const/4 v0, 0x1

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2102
    return-void
.end method

.method public addLegacyRouteForNetId(ILandroid/net/RouteInfo;I)V
    .locals 10
    .param p1, "netId"    # I
    .param p2, "routeInfo"    # Landroid/net/RouteInfo;
    .param p3, "uid"    # I

    .line 2124
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2126
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getDestinationLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 2127
    .local v0, "la":Landroid/net/LinkAddress;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    .line 2128
    .local v7, "ifName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v8

    .line 2131
    .local v8, "dst":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2132
    invoke-virtual {p2}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    .local v1, "nextHop":Ljava/lang/String;
    goto :goto_0

    .line 2134
    .end local v1    # "nextHop":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    move-object v9, v1

    .line 2137
    .local v9, "nextHop":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    move v2, p1

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move v6, p3

    invoke-interface/range {v1 .. v6}, Landroid/net/INetd;->networkAddLegacyRoute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2140
    nop

    .line 2141
    return-void

    .line 2138
    :catch_0
    move-exception v1

    .line 2139
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public addRoute(ILandroid/net/RouteInfo;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .line 968
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 969
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    sget-object v1, Landroid/net/shared/RouteUtils$ModifyOperation;->ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

    invoke-static {v0, v1, p1, p2}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 970
    return-void
.end method

.method public addVpnUidRanges(I[Landroid/net/UidRange;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .line 1665
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1668
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->networkAddUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1671
    nop

    .line 1672
    return-void

    .line 1669
    :catch_0
    move-exception v0

    .line 1670
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public allowProtect(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 2178
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2181
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkSetProtectAllow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2184
    nop

    .line 2185
    return-void

    .line 2182
    :catch_0
    move-exception v0

    .line 2183
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearDefaultNetId()V
    .locals 2

    .line 2156
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2159
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->networkClearDefault()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2162
    nop

    .line 2163
    return-void

    .line 2160
    :catch_0
    move-exception v0

    .line 2161
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearInterfaceAddresses(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 928
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 930
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->interfaceClearAddrs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 933
    nop

    .line 934
    return-void

    .line 931
    :catch_0
    move-exception v0

    .line 932
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public clearUidTos(IILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "tos"    # I
    .param p3, "ifaceName"    # Ljava/lang/String;

    .line 1470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearUidTos : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    :try_start_0
    const-string v0, "  onePlusClearUidTos before send onePlusClearUidTos"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->onePlusClearUidTos(IILjava/lang/String;)V

    .line 1474
    const-string v0, "  clearUidTos after send clearUidTos"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1478
    goto :goto_0

    .line 1475
    :catch_0
    move-exception v0

    .line 1476
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "  clearUidTos RemoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "  clearUidTos return true "

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    const/4 v0, 0x1

    return v0
.end method

.method public denyProtect(I)V
    .locals 2
    .param p1, "uid"    # I

    .line 2189
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkSetProtectDeny(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2195
    nop

    .line 2196
    return-void

    .line 2193
    :catch_0
    move-exception v0

    .line 2194
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableIpv6(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 958
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 960
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 963
    nop

    .line 964
    return-void

    .line 961
    :catch_0
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public disableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .line 1188
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1190
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->tetherRemoveForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1193
    nop

    .line 1194
    return-void

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 2016
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkManagement"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2018
    :cond_0
    const-string/jumbo v0, "mMobileActivityFromRadio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mMobileActivityFromRadio:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 2019
    const-string v0, " mLastPowerStateFromRadio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/NetworkManagementService;->mLastPowerStateFromRadio:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 2020
    const-string/jumbo v0, "mNetworkActive="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2022
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2023
    :try_start_0
    const-string v1, "Active quota ifaces: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2024
    const-string v1, "Active alert ifaces: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2025
    const-string v1, "Data saver mode: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2026
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2027
    :try_start_1
    const-string v2, "blacklist"

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidRejectOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2028
    const-string/jumbo v2, "whitelist"

    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mUidAllowOnMetered:Landroid/util/SparseBooleanArray;

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/NetworkManagementService;->dumpUidRuleOnQuotaLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseBooleanArray;)V

    .line 2029
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2030
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2032
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2033
    :try_start_3
    const-string v0, ""

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2035
    const-string v0, "UID firewall standby chain enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 2036
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    .line 2035
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2037
    const-string/jumbo v0, "standby"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallStandbyRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2039
    const-string v0, "UID firewall dozable chain enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2040
    invoke-direct {p0, v0}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v0

    .line 2039
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2041
    const-string v0, "dozable"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallDozableRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID firewall powersave chain enabled: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    .line 2044
    invoke-direct {p0, v2}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2043
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2045
    const-string/jumbo v0, "powersave"

    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidFirewallPowerSaveRules:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2, v0, v2}, Lcom/android/server/NetworkManagementService;->dumpUidFirewallRule(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseIntArray;)V

    .line 2046
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2048
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2049
    :try_start_4
    const-string v1, "Idle timers:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2050
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2051
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    const-string v3, "  "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2052
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 2053
    .local v3, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    const-string v4, "    timeout="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2054
    const-string v4, " type="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 2055
    const-string v4, " networkCount="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 2056
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/NetworkManagementService$IdleTimerParams;>;"
    .end local v3    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    goto :goto_0

    .line 2057
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2059
    const-string v0, "Firewall enabled: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2060
    const-string v0, "Netd service status: "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2061
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    if-nez v0, :cond_2

    .line 2062
    const-string v0, "disconnected"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 2065
    :cond_2
    :try_start_5
    invoke-interface {v0}, Landroid/net/INetd;->isAlive()Z

    move-result v0

    .line 2066
    .local v0, "alive":Z
    if-eqz v0, :cond_3

    const-string v1, "alive"

    goto :goto_1

    :cond_3
    const-string v1, "dead"

    :goto_1
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 2069
    .end local v0    # "alive":Z
    goto :goto_2

    .line 2067
    :catch_0
    move-exception v0

    .line 2068
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "unreachable"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2071
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 2057
    :catchall_0
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    .line 2046
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 2029
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_9
    throw v2

    .line 2030
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v1
.end method

.method public enableIpv6(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 938
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 940
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->interfaceSetEnableIPv6(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 943
    nop

    .line 944
    return-void

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public enableNat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "internalInterface"    # Ljava/lang/String;
    .param p2, "externalInterface"    # Ljava/lang/String;

    .line 1178
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1180
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->tetherAddForward(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    nop

    .line 1184
    return-void

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getDnsForwarders()[Ljava/lang/String;
    .locals 2

    .line 1135
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1137
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherDnsList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1138
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method getInjector()Lcom/android/server/NetworkManagementService$Injector;
    .locals 1

    .line 2274
    new-instance v0, Lcom/android/server/NetworkManagementService$Injector;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkManagementService$Injector;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-object v0
.end method

.method public getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 863
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 866
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->interfaceGetCfg(Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1

    .line 869
    .local v0, "result":Landroid/net/InterfaceConfigurationParcel;
    nop

    .line 872
    :try_start_1
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->fromStableParcel(Landroid/net/InterfaceConfigurationParcel;)Landroid/net/InterfaceConfiguration;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 873
    .local v1, "cfg":Landroid/net/InterfaceConfiguration;
    return-object v1

    .line 874
    .end local v1    # "cfg":Landroid/net/InterfaceConfiguration;
    :catch_0
    move-exception v1

    .line 875
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid InterfaceConfigurationParcel"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 867
    .end local v0    # "result":Landroid/net/InterfaceConfigurationParcel;
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 868
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getIpForwardingEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1027
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1030
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->ipfwdEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1031
    .local v0, "isEnabled":Z
    return v0

    .line 1032
    .end local v0    # "isEnabled":Z
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNetworkStatsTethering(I)Landroid/net/NetworkStats;
    .locals 7
    .param p1, "how"    # I

    .line 1627
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1629
    new-instance v0, Landroid/net/NetworkStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/NetworkStats;-><init>(JI)V

    .line 1645
    .local v0, "stats":Landroid/net/NetworkStats;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1646
    .local v1, "providers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/ITetheringStatsProvider;>;"
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v2

    .line 1647
    :try_start_0
    iget-object v3, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ITetheringStatsProvider;

    .line 1648
    .local v4, "provider":Landroid/net/ITetheringStatsProvider;
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1649
    nop

    .end local v4    # "provider":Landroid/net/ITetheringStatsProvider;
    goto :goto_0

    .line 1650
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1651
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1653
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;

    invoke-interface {v3, p1}, Landroid/net/ITetheringStatsProvider;->getTetherStats(I)Landroid/net/NetworkStats;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/net/NetworkStats;->combineAllValues(Landroid/net/NetworkStats;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1657
    goto :goto_2

    .line 1654
    :catch_0
    move-exception v3

    .line 1655
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Problem reading tethering stats from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1656
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1655
    const-string v5, "NetworkManagement"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1660
    .end local v2    # "i":I
    :cond_1
    return-object v0

    .line 1650
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public isBandwidthControlEnabled()Z
    .locals 1

    .line 1577
    const/4 v0, 0x1

    return v0
.end method

.method public isFirewallEnabled()Z
    .locals 1

    .line 1698
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1699
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    return v0
.end method

.method public isNetworkActive()Z
    .locals 2

    .line 1995
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 1996
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mNetworkActive:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    .line 1997
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isNetworkRestricted(I)Z
    .locals 3
    .param p1, "uid"    # I

    .line 2218
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OBSERVE_NETWORK_POLICY"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->isNetworkRestrictedInternal(I)Z

    move-result v0

    return v0
.end method

.method public isTetheringStarted()Z
    .locals 2

    .line 1078
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1081
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherIsEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    .local v0, "isEnabled":Z
    return v0

    .line 1083
    .end local v0    # "isEnabled":Z
    :catch_0
    move-exception v0

    .line 1084
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public synthetic lambda$addIdleTimer$12$NetworkManagementService(I)V
    .locals 7
    .param p1, "type"    # I

    .line 1221
    nop

    .line 1222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1221
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IZJIZ)V

    return-void
.end method

.method public synthetic lambda$removeIdleTimer$13$NetworkManagementService(Lcom/android/server/NetworkManagementService$IdleTimerParams;)V
    .locals 7
    .param p1, "params"    # Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1245
    iget v1, p1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1246
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 1245
    const/4 v2, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IZJIZ)V

    return-void
.end method

.method public synthetic lambda$tetherLimitReached$6$NetworkManagementService()V
    .locals 2

    .line 505
    const-string v0, "globalAlert"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public listInterfaces()[Ljava/lang/String;
    .locals 2

    .line 811
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 813
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->interfaceGetList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 814
    :catch_0
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public listTetheredInterfaces()[Ljava/lang/String;
    .locals 2

    .line 1112
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherInterfaceList()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1115
    :catch_0
    move-exception v0

    .line 1116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public registerNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .line 1985
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1986
    return-void
.end method

.method public registerObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .line 341
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 342
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 343
    return-void
.end method

.method public registerTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;
    .param p2, "name"    # Ljava/lang/String;

    .line 482
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 483
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    monitor-exit v0

    .line 487
    return-void

    .line 486
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeIdleTimer(Ljava/lang/String;)V
    .locals 5
    .param p1, "iface"    # Ljava/lang/String;

    .line 1228
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1230
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkManagement"

    const-string v1, "Removing idletimer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mIdleTimerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1233
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;

    .line 1234
    .local v1, "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->networkCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v2, :cond_1

    goto :goto_0

    .line 1239
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    iget v3, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->timeout:I

    iget v4, v1, Lcom/android/server/NetworkManagementService$IdleTimerParams;->type:I

    .line 1240
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 1239
    invoke-interface {v2, p1, v3, v4}, Landroid/net/INetd;->idletimerRemoveInterface(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1243
    nop

    .line 1244
    :try_start_2
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mActiveIdleTimers:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;

    invoke-direct {v3, p0, v1}, Lcom/android/server/-$$Lambda$NetworkManagementService$15DusjG2gzn5UASV-lMS3BUUn9c;-><init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$IdleTimerParams;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1247
    nop

    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    monitor-exit v0

    .line 1248
    return-void

    .line 1241
    .restart local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catch_0
    move-exception v2

    .line 1242
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    throw v3

    .line 1235
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 1247
    .end local v1    # "params":Lcom/android/server/NetworkManagementService$IdleTimerParams;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeInterfaceAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .line 1340
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1342
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1343
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1345
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 1350
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceAlert(Ljava/lang/String;)V

    .line 1351
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1354
    nop

    .line 1355
    :try_start_2
    monitor-exit v0

    .line 1356
    return-void

    .line 1352
    :catch_0
    move-exception v1

    .line 1353
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    throw v2

    .line 1355
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeInterfaceFromLocalNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 2207
    const/4 v0, 0x0

    const/16 v1, 0x63

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2208
    return-void
.end method

.method public removeInterfaceFromNetwork(Ljava/lang/String;I)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .line 2106
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2, p1}, Lcom/android/server/NetworkManagementService;->modifyInterfaceInNetwork(ZILjava/lang/String;)V

    .line 2107
    return-void
.end method

.method public removeInterfaceQuota(Ljava/lang/String;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;

    .line 1283
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1285
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1286
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1288
    monitor-exit v0

    return-void

    .line 1291
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1296
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthRemoveInterfaceQuota(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1299
    nop

    .line 1301
    :try_start_2
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1302
    :try_start_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1304
    .local v3, "provider":Landroid/net/ITetheringStatsProvider;
    const-wide/16 v4, -0x1

    :try_start_4
    invoke-interface {v3, p1, v4, v5}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1308
    goto :goto_1

    .line 1305
    :catch_0
    move-exception v4

    .line 1306
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem removing tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1307
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1306
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    .end local v3    # "provider":Landroid/net/ITetheringStatsProvider;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1310
    :cond_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1311
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1312
    return-void

    .line 1310
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    :try_start_8
    throw v2

    .line 1297
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 1298
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    throw v2

    .line 1311
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public removeRoute(ILandroid/net/RouteInfo;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "route"    # Landroid/net/RouteInfo;

    .line 974
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 975
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    sget-object v1, Landroid/net/shared/RouteUtils$ModifyOperation;->REMOVE:Landroid/net/shared/RouteUtils$ModifyOperation;

    invoke-static {v0, v1, p1, p2}, Landroid/net/shared/RouteUtils;->modifyRoute(Landroid/net/INetd;Landroid/net/shared/RouteUtils$ModifyOperation;ILandroid/net/RouteInfo;)V

    .line 976
    return-void
.end method

.method public removeRoutesFromLocalNetwork(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/RouteInfo;",
            ">;)I"
        }
    .end annotation

    .line 2212
    .local p1, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2213
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {v0, p1}, Landroid/net/shared/RouteUtils;->removeRoutesFromLocalNetwork(Landroid/net/INetd;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public removeVpnUidRanges(I[Landroid/net/UidRange;)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "ranges"    # [Landroid/net/UidRange;

    .line 1676
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1678
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->networkRemoveUidRanges(I[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1681
    nop

    .line 1682
    return-void

    .line 1679
    :catch_0
    move-exception v0

    .line 1680
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setAllowOnlyVpnForUids(Z[Landroid/net/UidRange;)V
    .locals 6
    .param p1, "add"    # Z
    .param p2, "uidRanges"    # [Landroid/net/UidRange;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 1502
    const-string v0, "): netd command failed"

    const-string v1, ", "

    const-string/jumbo v2, "setAllowOnlyVpnForUids("

    const-string v3, "NetworkManagement"

    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1504
    :try_start_0
    iget-object v4, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {p2}, Lcom/android/server/NetworkManagementService;->toStableParcels([Landroid/net/UidRange;)[Landroid/net/UidRangeParcel;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Landroid/net/INetd;->networkRejectNonSecureVpn(Z[Landroid/net/UidRangeParcel;)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1513
    nop

    .line 1514
    return-void

    .line 1509
    :catch_0
    move-exception v4

    .line 1510
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1512
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 1505
    .end local v4    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v4

    .line 1506
    .local v4, "e":Landroid/os/ServiceSpecificException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1508
    throw v4
.end method

.method public setDataSaverModeEnabled(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .line 1426
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.NETWORK_SETTINGS"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDataSaverMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1430
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    if-ne v1, p1, :cond_1

    .line 1431
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataSaverMode(): already "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1434
    :cond_1
    const-string v1, "bandwidthEnableDataSaver"

    const-wide/32 v2, 0x200000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1436
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1}, Landroid/net/INetd;->bandwidthEnableDataSaver(Z)Z

    move-result v1

    .line 1437
    .local v1, "changed":Z
    if-eqz v1, :cond_2

    .line 1438
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mDataSaverMode:Z

    goto :goto_0

    .line 1440
    :cond_2
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSaverMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "): netd command silently failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1442
    :goto_0
    nop

    .line 1447
    :try_start_2
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1442
    return v1

    .line 1447
    .end local v1    # "changed":Z
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1443
    :catch_0
    move-exception v1

    .line 1444
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v4, "NetworkManagement"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataSaverMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "): netd command failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1445
    const/4 v4, 0x0

    .line 1447
    :try_start_4
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    monitor-exit v0

    .line 1445
    return v4

    .line 1447
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 1448
    nop

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "enable":Z
    throw v1

    .line 1449
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "enable":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setDefaultNetId(I)V
    .locals 2
    .param p1, "netId"    # I

    .line 2145
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1}, Landroid/net/INetd;->networkSetDefault(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    nop

    .line 2152
    return-void

    .line 2149
    :catch_0
    move-exception v0

    .line 2150
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setDnsForwarders(Landroid/net/Network;[Ljava/lang/String;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "dns"    # [Ljava/lang/String;

    .line 1122
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1124
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/Network;->netId:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1127
    .local v0, "netId":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, v0, p2}, Landroid/net/INetd;->tetherDnsSet(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1130
    nop

    .line 1131
    return-void

    .line 1128
    :catch_0
    move-exception v1

    .line 1129
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFirewallChainEnabled(IZ)V
    .locals 5
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .line 1780
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1781
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1782
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1783
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainState(I)Z

    move-result v2

    if-ne v2, p2, :cond_0

    .line 1786
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 1788
    :cond_0
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->setFirewallChainState(IZ)V

    .line 1789
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1791
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getFirewallChainName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1792
    .local v1, "chainName":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 1797
    :try_start_5
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2, p1, p2}, Landroid/net/INetd;->firewallEnableChildChain(IZ)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1800
    nop

    .line 1806
    if-eqz p2, :cond_1

    .line 1807
    :try_start_6
    invoke-direct {p0, p1, v1}, Lcom/android/server/NetworkManagementService;->closeSocketsForFirewallChainLocked(ILjava/lang/String;)V

    .line 1809
    .end local v1    # "chainName":Ljava/lang/String;
    :cond_1
    monitor-exit v0

    .line 1810
    return-void

    .line 1798
    .restart local v1    # "chainName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1799
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "chain":I
    .end local p2    # "enable":Z
    throw v3

    .line 1793
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "chain":I
    .restart local p2    # "enable":Z
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad child chain: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "chain":I
    .end local p2    # "enable":Z
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1789
    .end local v1    # "chainName":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "chain":I
    .restart local p2    # "enable":Z
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "chain":I
    .end local p2    # "enable":Z
    :try_start_8
    throw v2

    .line 1809
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "chain":I
    .restart local p2    # "enable":Z
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public setFirewallEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .line 1686
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1688
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 1689
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 1688
    :goto_0
    invoke-interface {v0, v1}, Landroid/net/INetd;->firewallSetFirewallType(I)V

    .line 1690
    iput-boolean p1, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1693
    nop

    .line 1694
    return-void

    .line 1691
    :catch_0
    move-exception v0

    .line 1692
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFirewallInterfaceRule(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "allow"    # Z

    .line 1704
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1705
    iget-boolean v0, p0, Lcom/android/server/NetworkManagementService;->mFirewallEnabled:Z

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 1707
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    .line 1708
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1707
    :goto_0
    invoke-interface {v0, p1, v1}, Landroid/net/INetd;->firewallSetInterfaceRule(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1711
    nop

    .line 1712
    return-void

    .line 1709
    :catch_0
    move-exception v0

    .line 1710
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setFirewallUidRule(III)V
    .locals 2
    .param p1, "chain"    # I
    .param p2, "uid"    # I
    .param p3, "rule"    # I

    .line 1889
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1890
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1891
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NetworkManagementService;->setFirewallUidRuleLocked(III)V

    .line 1892
    monitor-exit v0

    .line 1893
    return-void

    .line 1892
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFirewallUidRules(I[I[I)V
    .locals 10
    .param p1, "chain"    # I
    .param p2, "uids"    # [I
    .param p3, "rules"    # [I

    .line 1840
    invoke-static {}, Lcom/android/server/NetworkManagementService;->enforceSystemUid()V

    .line 1841
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1842
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1843
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService;->getUidFirewallRulesLR(I)Landroid/util/SparseIntArray;

    move-result-object v2

    .line 1844
    .local v2, "uidFirewallRules":Landroid/util/SparseIntArray;
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 1846
    .local v3, "newRules":Landroid/util/SparseIntArray;
    array-length v4, p2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    .local v4, "index":I
    :goto_0
    if-ltz v4, :cond_0

    .line 1847
    aget v6, p2, v4

    .line 1848
    .local v6, "uid":I
    aget v7, p3, v4

    .line 1849
    .local v7, "rule":I
    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 1850
    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1846
    .end local v6    # "uid":I
    .end local v7    # "rule":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1853
    .end local v4    # "index":I
    :cond_0
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 1854
    .local v4, "rulesToRemove":Landroid/util/SparseIntArray;
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .local v6, "index":I
    :goto_1
    const/4 v7, 0x0

    if-ltz v6, :cond_2

    .line 1855
    invoke-virtual {v2, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1856
    .local v8, "uid":I
    invoke-virtual {v3, v8}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_1

    .line 1857
    invoke-virtual {v4, v8, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 1854
    .end local v8    # "uid":I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 1861
    .end local v6    # "index":I
    :cond_2
    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    sub-int/2addr v6, v5

    .restart local v6    # "index":I
    :goto_2
    if-ltz v6, :cond_3

    .line 1862
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 1863
    .restart local v8    # "uid":I
    invoke-direct {p0, p1, v8, v7}, Lcom/android/server/NetworkManagementService;->updateFirewallUidRuleLocked(III)Z

    .line 1861
    nop

    .end local v8    # "uid":I
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1865
    .end local v2    # "uidFirewallRules":Landroid/util/SparseIntArray;
    .end local v3    # "newRules":Landroid/util/SparseIntArray;
    .end local v4    # "rulesToRemove":Landroid/util/SparseIntArray;
    .end local v6    # "index":I
    :cond_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1867
    if-eq p1, v5, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    .line 1879
    :try_start_2
    const-string v1, "NetworkManagement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFirewallUidRules() called on invalid chain: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1881
    :catch_0
    move-exception v1

    goto :goto_4

    .line 1875
    :cond_4
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v2, "fw_powersave"

    invoke-interface {v1, v2, v5, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 1876
    goto :goto_3

    .line 1872
    :cond_5
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v2, "fw_standby"

    invoke-interface {v1, v2, v7, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    .line 1873
    goto :goto_3

    .line 1869
    :cond_6
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    const-string v2, "fw_dozable"

    invoke-interface {v1, v2, v5, p2}, Landroid/net/INetd;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1870
    nop

    .line 1883
    :goto_3
    goto :goto_5

    .line 1882
    .local v1, "e":Landroid/os/RemoteException;
    :goto_4
    :try_start_3
    const-string v2, "NetworkManagement"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error flushing firewall chain "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1884
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_5
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1885
    return-void

    .line 1865
    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "chain":I
    .end local p2    # "uids":[I
    .end local p3    # "rules":[I
    :try_start_5
    throw v2

    .line 1884
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "chain":I
    .restart local p2    # "uids":[I
    .restart local p3    # "rules":[I
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method public setGlobalAlert(J)V
    .locals 2
    .param p1, "alertBytes"    # J

    .line 1360
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1363
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->bandwidthSetGlobalAlert(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    nop

    .line 1367
    return-void

    .line 1364
    :catch_0
    move-exception v0

    .line 1365
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setIPv6AddrGenMode(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceSpecificException;
        }
    .end annotation

    .line 948
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 950
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->setIPv6AddrGenMode(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 953
    nop

    .line 954
    return-void

    .line 951
    :catch_0
    move-exception v0

    .line 952
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setInterfaceAlert(Ljava/lang/String;J)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "alertBytes"    # J

    .line 1316
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1319
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1323
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1330
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceAlert(Ljava/lang/String;J)V

    .line 1331
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveAlerts:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1334
    nop

    .line 1335
    :try_start_2
    monitor-exit v0

    .line 1336
    return-void

    .line 1332
    :catch_0
    move-exception v1

    .line 1333
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "alertBytes":J
    throw v2

    .line 1325
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "alertBytes":J
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already has alert"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "alertBytes":J
    throw v1

    .line 1335
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "alertBytes":J
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1320
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setting alert requires existing quota on iface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "cfg"    # Landroid/net/InterfaceConfiguration;

    .line 883
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/NetworkStack;->checkNetworkStackPermissionOr(Landroid/content/Context;[Ljava/lang/String;)V

    .line 884
    invoke-virtual {p2}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 885
    .local v0, "linkAddr":Landroid/net/LinkAddress;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 889
    invoke-static {p2, p1}, Lcom/android/server/NetworkManagementService;->toStableParcel(Landroid/net/InterfaceConfiguration;Ljava/lang/String;)Landroid/net/InterfaceConfigurationParcel;

    move-result-object v1

    .line 892
    .local v1, "cfgParcel":Landroid/net/InterfaceConfigurationParcel;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v2, v1}, Landroid/net/INetd;->interfaceSetCfg(Landroid/net/InterfaceConfigurationParcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    nop

    .line 896
    return-void

    .line 893
    :catch_0
    move-exception v2

    .line 894
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 886
    .end local v1    # "cfgParcel":Landroid/net/InterfaceConfigurationParcel;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Null LinkAddress given"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setInterfaceDown(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 900
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 902
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceDown()V

    .line 903
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 904
    return-void
.end method

.method public setInterfaceIpv6PrivacyExtensions(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 916
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 918
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->interfaceSetIPv6PrivacyExtensions(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    nop

    .line 922
    return-void

    .line 919
    :catch_0
    move-exception v0

    .line 920
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "quotaBytes"    # J

    .line 1252
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1254
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1255
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    .line 1261
    :try_start_1
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/INetd;->bandwidthSetInterfaceQuota(Ljava/lang/String;J)V

    .line 1263
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mActiveQuotas:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1266
    nop

    .line 1268
    :try_start_2
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1269
    :try_start_3
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ITetheringStatsProvider;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1271
    .local v3, "provider":Landroid/net/ITetheringStatsProvider;
    :try_start_4
    invoke-interface {v3, p1, p2, p3}, Landroid/net/ITetheringStatsProvider;->setInterfaceQuota(Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1275
    goto :goto_1

    .line 1272
    :catch_0
    move-exception v4

    .line 1273
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "NetworkManagement"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Problem setting tethering data limit on provider "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    .line 1274
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1273
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    .end local v3    # "provider":Landroid/net/ITetheringStatsProvider;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 1277
    :cond_0
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1278
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1279
    return-void

    .line 1277
    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "quotaBytes":J
    :try_start_8
    throw v2

    .line 1264
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "quotaBytes":J
    :catch_1
    move-exception v1

    .line 1265
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "quotaBytes":J
    throw v2

    .line 1256
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "quotaBytes":J
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already has quota"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/NetworkManagementService;
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "quotaBytes":J
    throw v1

    .line 1278
    .restart local p0    # "this":Lcom/android/server/NetworkManagementService;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "quotaBytes":J
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v1
.end method

.method public setInterfaceUp(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;

    .line 908
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 909
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    .line 910
    .local v0, "ifcg":Landroid/net/InterfaceConfiguration;
    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->setInterfaceUp()V

    .line 911
    invoke-virtual {p0, p1, v0}, Lcom/android/server/NetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 912
    return-void
.end method

.method public setIpForwardingEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .line 1039
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1041
    const-string/jumbo v0, "tethering"

    if-eqz p1, :cond_0

    .line 1042
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, v0}, Landroid/net/INetd;->ipfwdEnableForwarding(Ljava/lang/String;)V

    goto :goto_0

    .line 1044
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v1, v0}, Landroid/net/INetd;->ipfwdDisableForwarding(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_0
    nop

    .line 1049
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMtu(Ljava/lang/String;I)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I

    .line 1008
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1011
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->interfaceSetMtu(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    nop

    .line 1015
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setNetworkPermission(II)V
    .locals 2
    .param p1, "netId"    # I
    .param p2, "permission"    # I

    .line 2167
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 2170
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0, p1, p2}, Landroid/net/INetd;->networkSetPermissionForNetwork(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2173
    nop

    .line 2174
    return-void

    .line 2171
    :catch_0
    move-exception v0

    .line 2172
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setUidCleartextNetworkPolicy(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "policy"    # I

    .line 1542
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 1543
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1546
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mQuotaLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1547
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 1548
    .local v1, "oldPolicy":I
    if-ne v1, p2, :cond_1

    .line 1551
    monitor-exit v0

    return-void

    .line 1555
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/NetworkManagementService;->mStrictEnabled:Z

    if-nez v3, :cond_2

    .line 1558
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mUidCleartextPolicy:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 1559
    monitor-exit v0

    return-void

    .line 1566
    :cond_2
    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 1568
    invoke-direct {p0, p1, v2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1571
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/NetworkManagementService;->applyUidCleartextNetworkPolicy(II)V

    .line 1572
    .end local v1    # "oldPolicy":I
    monitor-exit v0

    .line 1573
    return-void

    .line 1572
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUidMeteredNetworkBlacklist(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 1416
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1417
    return-void
.end method

.method public setUidMeteredNetworkWhitelist(IZ)V
    .locals 1
    .param p1, "uid"    # I
    .param p2, "enable"    # Z

    .line 1421
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/NetworkManagementService;->setUidOnMeteredNetworkList(IZZ)V

    .line 1422
    return-void
.end method

.method public setUidTos(IILjava/lang/String;)Z
    .locals 3
    .param p1, "uid"    # I
    .param p2, "tos"    # I
    .param p3, "ifaceName"    # Ljava/lang/String;

    .line 1456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUidTos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkManagement"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    :try_start_0
    const-string v0, "  setUidTos before send onePlusSetUidTos"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mOemNetd:Lcom/android/internal/net/IOemNetd;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->onePlusSetUidTos(IILjava/lang/String;)V

    .line 1460
    const-string v0, "  setUidTos after send onePlusSetUidTos"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1463
    goto :goto_0

    .line 1461
    :catch_0
    move-exception v0

    .line 1462
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, " setUidTos RemoteException"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1464
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, " setUidTos return true"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    const/4 v0, 0x1

    return v0
.end method

.method public shutdown()V
    .locals 3

    .line 1020
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SHUTDOWN"

    const-string v2, "NetworkManagement"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    const-string v0, "Shutting down"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    return-void
.end method

.method public startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    .line 1166
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1167
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method public startTethering([Ljava/lang/String;)V
    .locals 1
    .param p1, "dhcpRange"    # [Ljava/lang/String;

    .line 1053
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/NetworkManagementService;->startTetheringWithConfiguration(Z[Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method public startTetheringWithConfiguration(Z[Ljava/lang/String;)V
    .locals 2
    .param p1, "usingLegacyDnsProxy"    # Z
    .param p2, "dhcpRange"    # [Ljava/lang/String;

    .line 1058
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1060
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {v0, p1, p2}, Landroid/net/shared/NetdUtils;->tetherStart(Landroid/net/INetd;Z[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1063
    nop

    .line 1064
    return-void

    .line 1061
    :catch_0
    move-exception v0

    .line 1062
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "fromIface"    # Ljava/lang/String;
    .param p2, "toIface"    # Ljava/lang/String;

    .line 1172
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1173
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/NetworkManagementService;->modifyInterfaceForward(ZLjava/lang/String;Ljava/lang/String;)V

    .line 1174
    return-void
.end method

.method public stopTethering()V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1070
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->tetherStop()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    nop

    .line 1074
    return-void

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public systemReady()V
    .locals 6

    .line 317
    sget-boolean v0, Lcom/android/server/NetworkManagementService;->DBG:Z

    if-eqz v0, :cond_0

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 319
    .local v0, "start":J
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 321
    .local v2, "delta":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepared in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NetworkManagement"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 324
    .end local v0    # "start":J
    .end local v2    # "delta":J
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkManagementService;->prepareNativeDaemon()V

    .line 326
    return-void
.end method

.method public tetherInterface(Ljava/lang/String;)V
    .locals 4
    .param p1, "iface"    # Ljava/lang/String;

    .line 1090
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1092
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/InterfaceConfiguration;->getLinkAddress()Landroid/net/LinkAddress;

    move-result-object v0

    .line 1093
    .local v0, "addr":Landroid/net/LinkAddress;
    new-instance v1, Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    .line 1094
    .local v1, "dest":Landroid/net/IpPrefix;
    iget-object v2, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {v2, p1, v1}, Landroid/net/shared/NetdUtils;->tetherInterface(Landroid/net/INetd;Ljava/lang/String;Landroid/net/IpPrefix;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1097
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v1    # "dest":Landroid/net/IpPrefix;
    nop

    .line 1098
    return-void

    .line 1095
    :catch_0
    move-exception v0

    .line 1096
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public tetherLimitReached(Landroid/net/ITetheringStatsProvider;)V
    .locals 3
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;

    .line 499
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 500
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 502
    monitor-exit v0

    return-void

    .line 505
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mDaemonHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/-$$Lambda$NetworkManagementService$Hs4ibiwzKmd9u0PZ04vysXRExho;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$NetworkManagementService$Hs4ibiwzKmd9u0PZ04vysXRExho;-><init>(Lcom/android/server/NetworkManagementService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 506
    monitor-exit v0

    .line 507
    return-void

    .line 506
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterNetworkActivityListener(Landroid/os/INetworkActivityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/os/INetworkActivityListener;

    .line 1990
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetworkActivityListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1991
    return-void
.end method

.method public unregisterObserver(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/net/INetworkManagementEventObserver;

    .line 347
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 348
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 349
    return-void
.end method

.method public unregisterTetheringStatsProvider(Landroid/net/ITetheringStatsProvider;)V
    .locals 2
    .param p1, "provider"    # Landroid/net/ITetheringStatsProvider;

    .line 491
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 492
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    monitor-enter v0

    .line 493
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkManagementService;->mTetheringStatsProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    monitor-exit v0

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public untetherInterface(Ljava/lang/String;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;

    .line 1102
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkStack;->checkNetworkStackPermission(Landroid/content/Context;)V

    .line 1104
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService;->mNetdService:Landroid/net/INetd;

    invoke-static {v0, p1}, Landroid/net/shared/NetdUtils;->untetherInterface(Landroid/net/INetd;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    nop

    .line 1108
    return-void

    .line 1105
    :catch_0
    move-exception v0

    .line 1106
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
