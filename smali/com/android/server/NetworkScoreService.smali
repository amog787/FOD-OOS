.class public Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScoreService$ServiceHandler;,
        Lcom/android/server/NetworkScoreService$ScoringServiceConnection;,
        Lcom/android/server/NetworkScoreService$ScanResultsScoreCacheFilter;,
        Lcom/android/server/NetworkScoreService$CurrentNetworkScoreCacheFilter;,
        Lcom/android/server/NetworkScoreService$ScanResultsSupplier;,
        Lcom/android/server/NetworkScoreService$WifiInfoSupplier;,
        Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;,
        Lcom/android/server/NetworkScoreService$DispatchingContentObserver;,
        Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;,
        Lcom/android/server/NetworkScoreService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "NetworkScoreService"

.field private static final VERBOSE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLocationModeReceiver:Landroid/content/BroadcastReceiver;

.field private final mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

.field private mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

.field private final mPackageMonitorLock:Ljava/lang/Object;

.field private final mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

.field private final mScoreCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mServiceConnProducer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Landroid/net/NetworkScorerAppData;",
            "Lcom/android/server/NetworkScoreService$ScoringServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

.field private final mServiceConnectionLock:Ljava/lang/Object;

.field private final mUseOpenWifiPackageObserver:Landroid/database/ContentObserver;

.field private mUserIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 83
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x1

    const-string v2, "NetworkScoreService"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    .line 84
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    sput-boolean v1, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 262
    new-instance v0, Lcom/android/server/NetworkScorerAppManager;

    invoke-direct {v0, p1}, Lcom/android/server/NetworkScorerAppManager;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/server/-$$Lambda$QTLvklqCTz22VSzZPEWJs-o0bv4;->INSTANCE:Lcom/android/server/-$$Lambda$QTLvklqCTz22VSzZPEWJs-o0bv4;

    .line 263
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    .line 262
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V

    .line 264
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkScoreAppManager"    # Lcom/android/server/NetworkScorerAppManager;
    .param p4, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/NetworkScorerAppManager;",
            "Ljava/util/function/Function<",
            "Landroid/net/NetworkScorerAppData;",
            "Lcom/android/server/NetworkScoreService$ScoringServiceConnection;",
            ">;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 269
    .local p3, "serviceConnProducer":Ljava/util/function/Function;, "Ljava/util/function/Function<Landroid/net/NetworkScorerAppData;Lcom/android/server/NetworkScoreService$ScoringServiceConnection;>;"
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    .line 103
    new-instance v0, Lcom/android/server/NetworkScoreService$1;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$1;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 117
    new-instance v0, Lcom/android/server/NetworkScoreService$2;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$2;-><init>(Lcom/android/server/NetworkScoreService;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    .line 270
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 271
    iput-object p2, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    .line 272
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 273
    new-instance v4, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v4, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    .local v4, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mUserIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 278
    new-instance v0, Lcom/android/server/NetworkScoreService$ServiceHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/server/NetworkScoreService$ServiceHandler;-><init>(Lcom/android/server/NetworkScoreService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    .line 279
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.location.MODE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 280
    .local v8, "locationModeFilter":Landroid/content/IntentFilter;
    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/NetworkScoreService;->mLocationModeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v10, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 283
    new-instance v0, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    .line 284
    iput-object p3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    .line 285
    new-instance v0, Lcom/android/server/NetworkScoreService$3;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkScoreService$3;-><init>(Lcom/android/server/NetworkScoreService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mUseOpenWifiPackageObserver:Landroid/database/ContentObserver;

    .line 300
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 301
    const-string/jumbo v1, "use_open_wifi_package"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mUseOpenWifiPackageObserver:Landroid/database/ContentObserver;

    .line 300
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 305
    const-class v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    new-instance v1, Lcom/android/server/-$$Lambda$NetworkScoreService$vwytA23Qz3U83FJaKiA52aJ1mts;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$NetworkScoreService$vwytA23Qz3U83FJaKiA52aJ1mts;-><init>(Lcom/android/server/NetworkScoreService;)V

    .line 306
    invoke-virtual {v0, v1}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->setUseOpenWifiAppPackagesProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackagesProvider;)V

    .line 314
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/NetworkScoreService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkScoreService;

    .line 81
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/NetworkScoreService;)Lcom/android/server/NetworkScorerAppManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkScoreService;

    .line 81
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/NetworkScoreService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkScoreService;

    .line 81
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/NetworkScoreService;Landroid/net/NetworkScorerAppData;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/NetworkScoreService;
    .param p1, "x1"    # Landroid/net/NetworkScorerAppData;

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/NetworkScoreService;

    .line 81
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 81
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->VERBOSE:Z

    return v0
.end method

.method private bindToScoringServiceIfNeeded()V
    .locals 2

    .line 391
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string v1, "bindToScoringServiceIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 393
    .local v0, "scorerData":Landroid/net/NetworkScorerAppData;
    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V

    .line 394
    return-void
.end method

.method private bindToScoringServiceIfNeeded(Landroid/net/NetworkScorerAppData;)V
    .locals 3
    .param p1, "appData"    # Landroid/net/NetworkScorerAppData;

    .line 404
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bindToScoringServiceIfNeeded("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScoreService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_0
    if-eqz p1, :cond_3

    .line 406
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 409
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/NetworkScorerAppData;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    .line 414
    :cond_1
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-nez v1, :cond_2

    .line 415
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnProducer:Ljava/util/function/Function;

    invoke-interface {v1, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iput-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->bind(Landroid/content/Context;)V

    .line 420
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 422
    :cond_3
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->unbindFromScoringServiceIfNeeded()V

    .line 424
    :goto_0
    return-void
.end method

.method private clearInternal()V
    .locals 2

    .line 800
    new-instance v0, Lcom/android/server/NetworkScoreService$4;

    invoke-direct {v0, p0}, Lcom/android/server/NetworkScoreService$4;-><init>(Lcom/android/server/NetworkScoreService;)V

    .line 811
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCacheLists()Ljava/util/Collection;

    move-result-object v1

    .line 800
    invoke-direct {p0, v0, v1}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V

    .line 812
    return-void
.end method

.method private enforceSystemOnly()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    const-string v2, "Caller must be granted REQUEST_NETWORK_SCORES."

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method private enforceSystemOrHasScoreNetworks()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 736
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 738
    const-string v1, "android.permission.SCORE_NETWORKS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 740
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither the system process or a network scorer."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 743
    :cond_1
    :goto_0
    return-void
.end method

.method private enforceSystemOrIsActiveScorer(I)V
    .locals 2
    .param p1, "callingUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 746
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REQUEST_NETWORK_SCORES"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-virtual {p0, p1}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 749
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Caller is neither the system process or the active network scorer."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 752
    :cond_1
    :goto_0
    return-void
.end method

.method private getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;
    .locals 2

    .line 941
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 942
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 945
    :cond_0
    monitor-exit v0

    .line 946
    const/4 v0, 0x0

    return-object v0

    .line 945
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getScoreCacheLists()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;"
        }
    .end annotation

    .line 917
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v0

    .line 918
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 919
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private refreshBinding()V
    .locals 2

    .line 334
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "refreshBinding()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->updateState()V

    .line 337
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->migrateNetworkScorerAppSettingIfNeeded()V

    .line 338
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageMonitorIfNeeded()V

    .line 339
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->bindToScoringServiceIfNeeded()V

    .line 340
    return-void
.end method

.method private registerPackageMonitorIfNeeded()V
    .locals 7

    .line 360
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "registerPackageMonitorIfNeeded()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 362
    .local v0, "appData":Landroid/net/NetworkScorerAppData;
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    .line 365
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v4, v4, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 367
    :cond_1
    sget-boolean v2, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v2, :cond_2

    .line 368
    const-string v2, "NetworkScoreService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregistering package monitor for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v5, v5, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_2
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    invoke-virtual {v2}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->unregister()V

    .line 372
    iput-object v3, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 376
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    if-nez v2, :cond_4

    .line 377
    new-instance v2, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 378
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v4, v3}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;Lcom/android/server/NetworkScoreService$1;)V

    iput-object v2, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    .line 380
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v3, v5, v6}, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 382
    sget-boolean v2, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v2, :cond_4

    .line 383
    const-string v2, "NetworkScoreService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registered package monitor for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mPackageMonitor:Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;

    iget-object v4, v4, Lcom/android/server/NetworkScoreService$NetworkScorerPackageMonitor;->mPackageToWatch:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_4
    monitor-exit v1

    .line 388
    return-void

    .line 387
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private registerRecommendationSettingsObserver()V
    .locals 4

    .line 343
    const-string/jumbo v0, "network_recommendations_package"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 344
    .local v0, "packageNameUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    .line 347
    const-string/jumbo v1, "network_recommendations_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 348
    .local v1, "settingUri":Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mRecommendationSettingsObserver:Lcom/android/server/NetworkScoreService$DispatchingContentObserver;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/android/server/NetworkScoreService$DispatchingContentObserver;->observe(Landroid/net/Uri;I)V

    .line 350
    return-void
.end method

.method private sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/net/INetworkScoreCache;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Collection<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/INetworkScoreCache;",
            ">;>;)V"
        }
    .end annotation

    .line 924
    .local p1, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/INetworkScoreCache;Ljava/lang/Object;>;"
    .local p2, "remoteCallbackLists":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    .line 925
    .local v1, "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    monitor-enter v1

    .line 926
    :try_start_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 928
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 929
    :try_start_1
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/net/INetworkScoreCache;

    .line 930
    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    .line 929
    invoke-interface {p1, v4, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 933
    .end local v3    # "i":I
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 934
    nop

    .end local v1    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    .end local p0    # "this":Lcom/android/server/NetworkScoreService;
    .end local p1    # "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/INetworkScoreCache;Ljava/lang/Object;>;"
    .end local p2    # "remoteCallbackLists":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;>;"
    throw v0

    .line 933
    .restart local v1    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    .restart local p0    # "this":Lcom/android/server/NetworkScoreService;
    .restart local p1    # "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/INetworkScoreCache;Ljava/lang/Object;>;"
    .restart local p2    # "remoteCallbackLists":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;>;"
    :cond_0
    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 934
    nop

    .line 935
    .end local v2    # "count":I
    monitor-exit v1

    .line 936
    .end local v1    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    goto :goto_0

    .line 935
    .restart local v1    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 937
    .end local v1    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    :cond_1
    return-void
.end method

.method private unbindFromScoringServiceIfNeeded()V
    .locals 4

    .line 427
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "unbindFromScoringServiceIfNeeded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->unbind(Landroid/content/Context;)V

    .line 431
    sget-boolean v1, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disconnected from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 432
    invoke-virtual {v3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 435
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    .line 437
    return-void

    .line 435
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public clearScores()Z
    .locals 3

    .line 699
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrIsActiveScorer(I)V

    .line 700
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 702
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    const/4 v2, 0x1

    .line 705
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 703
    return v2

    .line 705
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 706
    throw v2
.end method

.method public disableScoring()V
    .locals 1

    .line 794
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrIsActiveScorer(I)V

    .line 796
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 887
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string v1, "NetworkScoreService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 888
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 890
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v2}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v2

    .line 891
    .local v2, "currentScorer":Landroid/net/NetworkScorerAppData;
    if-nez v2, :cond_1

    .line 892
    const-string v3, "Scoring is disabled."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 906
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 893
    return-void

    .line 895
    :cond_1
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current scorer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 898
    :try_start_2
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v4, :cond_2

    .line 899
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    invoke-virtual {v4, p1, p2, p3}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    .line 901
    :cond_2
    const-string v4, "ScoringServiceConnection: null"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    :goto_0
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 904
    :try_start_3
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 906
    .end local v2    # "currentScorer":Landroid/net/NetworkScorerAppData;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    nop

    .line 908
    return-void

    .line 903
    .restart local v2    # "currentScorer":Landroid/net/NetworkScorerAppData;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/NetworkScoreService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "writer":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 906
    .end local v2    # "currentScorer":Landroid/net/NetworkScorerAppData;
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/NetworkScoreService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "writer":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 907
    throw v2
.end method

.method public getActiveScorer()Landroid/net/NetworkScorerAppData;
    .locals 1

    .line 776
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 777
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    return-object v0
.end method

.method public getActiveScorerPackage()Ljava/lang/String;
    .locals 2

    .line 762
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrHasScoreNetworks()V

    .line 763
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 764
    .local v0, "appData":Landroid/net/NetworkScorerAppData;
    if-nez v0, :cond_0

    .line 765
    const/4 v1, 0x0

    return-object v1

    .line 767
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAllValidScorers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/NetworkScorerAppData;",
            ">;"
        }
    .end annotation

    .line 787
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 788
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0}, Lcom/android/server/NetworkScorerAppManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isCallerActiveScorer(I)Z
    .locals 2
    .param p1, "callingUid"    # I

    .line 723
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mServiceConnectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mServiceConnection:Lcom/android/server/NetworkScoreService$ScoringServiceConnection;

    .line 725
    invoke-virtual {v1}, Lcom/android/server/NetworkScoreService$ScoringServiceConnection;->getAppData()Landroid/net/NetworkScorerAppData;

    move-result-object v1

    iget v1, v1, Landroid/net/NetworkScorerAppData;->packageUid:I

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 724
    return v1

    .line 726
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$0$NetworkScoreService(I)[Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 307
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "use_open_wifi_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "useOpenWifiPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 310
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 312
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method onUserUnlocked(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 329
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUserUnlocked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkScoreService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->refreshBinding()V

    .line 331
    return-void
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;I)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;
    .param p3, "filterType"    # I

    .line 818
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 819
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 821
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 822
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 823
    .local v3, "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    if-nez v3, :cond_0

    .line 824
    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v3, v4

    .line 825
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 828
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 829
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    :cond_1
    const-string v4, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 832
    const-string v4, "NetworkScoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to register NetworkScoreCache for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    .end local v3    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 837
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    nop

    .line 839
    return-void

    .line 835
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/NetworkScoreService;
    .end local p1    # "networkType":I
    .end local p2    # "scoreCache":Landroid/net/INetworkScoreCache;
    .end local p3    # "filterType":I
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 837
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/NetworkScoreService;
    .restart local p1    # "networkType":I
    .restart local p2    # "scoreCache":Landroid/net/INetworkScoreCache;
    .restart local p3    # "filterType":I
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 838
    throw v2
.end method

.method public requestScores([Landroid/net/NetworkKey;)Z
    .locals 6
    .param p1, "networks"    # [Landroid/net/NetworkKey;

    .line 864
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 865
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 867
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getRecommendationProvider()Landroid/net/INetworkRecommendationProvider;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 868
    .local v2, "provider":Landroid/net/INetworkRecommendationProvider;
    if-eqz v2, :cond_0

    .line 870
    :try_start_1
    invoke-interface {v2, p1}, Landroid/net/INetworkRecommendationProvider;->requestScores([Landroid/net/NetworkKey;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    const/4 v3, 0x1

    .line 881
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 873
    return v3

    .line 874
    :catch_0
    move-exception v3

    .line 875
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "NetworkScoreService"

    const-string v5, "Failed to request scores."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 879
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v3, 0x0

    .line 881
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    return v3

    .line 881
    .end local v2    # "provider":Landroid/net/INetworkRecommendationProvider;
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 882
    throw v2
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 711
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOrHasScoreNetworks()V

    .line 712
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mNetworkScorerAppManager:Lcom/android/server/NetworkScorerAppManager;

    invoke-virtual {v0, p1}, Lcom/android/server/NetworkScorerAppManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method systemReady()V
    .locals 2

    .line 318
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerRecommendationSettingsObserver()V

    .line 320
    return-void
.end method

.method systemRunning()V
    .locals 2

    .line 324
    sget-boolean v0, Lcom/android/server/NetworkScoreService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NetworkScoreService"

    const-string/jumbo v1, "systemRunning"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    return-void
.end method

.method public unregisterNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 7
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    .line 843
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->enforceSystemOnly()V

    .line 844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 846
    .local v0, "token":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 847
    :try_start_1
    iget-object v3, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 848
    .local v3, "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 853
    :cond_0
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 854
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 849
    :cond_1
    :goto_0
    const-string v4, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 850
    const-string v4, "NetworkScoreService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to unregister NetworkScoreCache for type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v3    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    :cond_2
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 859
    nop

    .line 860
    return-void

    .line 856
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/NetworkScoreService;
    .end local p1    # "networkType":I
    .end local p2    # "scoreCache":Landroid/net/INetworkScoreCache;
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 858
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/NetworkScoreService;
    .restart local p1    # "networkType":I
    .restart local p2    # "scoreCache":Landroid/net/INetworkScoreCache;
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 859
    throw v2
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 11
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;

    .line 441
    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/NetworkScoreService;->isCallerActiveScorer(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 446
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 449
    .local v0, "token":J
    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 450
    .local v2, "networksByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    array-length v3, p1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, p1, v5

    .line 451
    .local v6, "network":Landroid/net/ScoredNetwork;
    iget-object v7, v6, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v7, v7, Landroid/net/NetworkKey;->type:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 452
    .local v7, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez v7, :cond_0

    .line 453
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v8

    .line 454
    iget-object v8, v6, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v8, v8, Landroid/net/NetworkKey;->type:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    :cond_0
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    nop

    .end local v6    # "network":Landroid/net/ScoredNetwork;
    .end local v7    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 460
    :cond_1
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 463
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 464
    :try_start_1
    iget-object v8, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RemoteCallbackList;

    .line 465
    .local v8, "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    if-eqz v8, :cond_4

    .line 466
    invoke-virtual {v8}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    move v6, v4

    goto :goto_3

    :cond_4
    :goto_2
    nop

    .line 467
    .local v6, "isEmpty":Z
    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    if-eqz v6, :cond_5

    .line 470
    :try_start_2
    const-string v7, "NetworkScoreService"

    const/4 v9, 0x2

    invoke-static {v7, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 471
    const-string v7, "NetworkScoreService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No scorer registered for type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", discarding"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 477
    :cond_5
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 478
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 479
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 478
    invoke-static {v7, v9, v10}, Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;->create(Landroid/content/Context;Ljava/util/List;I)Lcom/android/server/NetworkScoreService$FilteringCacheUpdatingConsumer;

    move-result-object v7

    .line 480
    .local v7, "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/INetworkScoreCache;Ljava/lang/Object;>;"
    invoke-static {v8}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v9

    invoke-direct {p0, v7, v9}, Lcom/android/server/NetworkScoreService;->sendCacheUpdateCallback(Ljava/util/function/BiConsumer;Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 481
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .end local v6    # "isEmpty":Z
    .end local v7    # "consumer":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Landroid/net/INetworkScoreCache;Ljava/lang/Object;>;"
    .end local v8    # "callbackList":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Landroid/net/INetworkScoreCache;>;"
    goto :goto_1

    .line 467
    .restart local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "token":J
    .end local p0    # "this":Lcom/android/server/NetworkScoreService;
    .end local p1    # "networks":[Landroid/net/ScoredNetwork;
    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 483
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .restart local v0    # "token":J
    .restart local p0    # "this":Lcom/android/server/NetworkScoreService;
    .restart local p1    # "networks":[Landroid/net/ScoredNetwork;
    :cond_6
    nop

    .line 485
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    return v6

    .line 485
    .end local v2    # "networksByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    throw v2

    .line 442
    .end local v0    # "token":J
    :cond_7
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller with UID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not the active scorer."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
