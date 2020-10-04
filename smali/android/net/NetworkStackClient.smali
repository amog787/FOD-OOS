.class public Landroid/net/NetworkStackClient;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStackClient$NetworkStackConnection;,
        Landroid/net/NetworkStackClient$NetworkStackHealthListener;,
        Landroid/net/NetworkStackClient$NetworkStackCallback;
    }
.end annotation


# static fields
.field private static final CONFIG_ALWAYS_RATELIMIT_NETWORKSTACK_CRASH:Ljava/lang/String; = "always_ratelimit_networkstack_crash"

.field private static final CONFIG_MIN_CRASH_INTERVAL_MS:Ljava/lang/String; = "min_crash_interval"

.field private static final CONFIG_MIN_UPTIME_BEFORE_CRASH_MS:Ljava/lang/String; = "min_uptime_before_crash"

.field private static final DEFAULT_MIN_CRASH_INTERVAL_MS:J = 0x1499700L

.field private static final DEFAULT_MIN_UPTIME_BEFORE_CRASH_MS:J = 0x1b7740L

.field private static final IN_PROCESS_SUFFIX:Ljava/lang/String; = ".InProcess"

.field private static final NETWORKSTACK_TIMEOUT_MS:I = 0x2710

.field private static final PREFS_FILE:Ljava/lang/String; = "NetworkStackClientPrefs.xml"

.field private static final PREF_KEY_LAST_CRASH_TIME:Ljava/lang/String; = "lastcrash_time"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/net/NetworkStackClient;


# instance fields
.field private mConnector:Landroid/net/INetworkStackConnector;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingNetStackRequests"
        }
    .end annotation
.end field

.field private final mHealthListeners:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mHealthListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/NetworkStackClient$NetworkStackHealthListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLog"
        }
    .end annotation
.end field

.field private final mPendingNetStackRequests:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPendingNetStackRequests"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/NetworkStackClient$NetworkStackCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mWasSystemServerInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Landroid/net/NetworkStackClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 91
    new-instance v0, Landroid/net/util/SharedLog;

    sget-object v1, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 96
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    .line 116
    return-void
.end method

.method static synthetic access$000(Landroid/net/NetworkStackClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkStackClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkStackClient;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 59
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->registerNetworkStackService(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/NetworkStackClient;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkStackClient;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/content/Context;
    .param p3, "x3"    # Ljava/lang/String;

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/net/NetworkStackClient;->maybeCrashWithTerribleFailure(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private checkNetworkStackPermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "comp"    # Landroid/content/ComponentName;

    .line 332
    nop

    .line 333
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 334
    .local v0, "hasPermission":I
    if-nez v0, :cond_0

    .line 338
    return-void

    .line 335
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Network stack does not have permission android.permission.MAINLINE_NETWORK_STACK"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized getInstance()Landroid/net/NetworkStackClient;
    .locals 2

    const-class v0, Landroid/net/NetworkStackClient;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Landroid/net/NetworkStackClient;

    invoke-direct {v1}, Landroid/net/NetworkStackClient;-><init>()V

    sput-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;

    .line 125
    :cond_0
    sget-object v1, Landroid/net/NetworkStackClient;->sInstance:Landroid/net/NetworkStackClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 121
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getNetworkStackIntent(Landroid/content/pm/PackageManager;Z)Landroid/content/Intent;
    .locals 8
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "inSystemProcess"    # Z

    .line 300
    const-class v0, Landroid/net/INetworkStackConnector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 301
    .local v0, "baseAction":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .line 302
    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".InProcess"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 303
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v3

    .line 305
    .local v3, "comp":Landroid/content/ComponentName;
    if-nez v3, :cond_1

    .line 306
    const/4 v2, 0x0

    return-object v2

    .line 308
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 310
    const/4 v4, -0x1

    .line 312
    .local v4, "uid":I
    :try_start_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    .line 316
    goto :goto_1

    .line 313
    :catch_0
    move-exception v2

    .line 314
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "Network stack package not found"

    invoke-direct {p0, v5, v2}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 318
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    if-eqz p2, :cond_2

    const/16 v2, 0x3e8

    goto :goto_2

    :cond_2
    const/16 v2, 0x431

    .line 319
    .local v2, "expectedUid":I
    :goto_2
    if-ne v4, v2, :cond_4

    .line 323
    if-nez p2, :cond_3

    .line 324
    invoke-direct {p0, p1, v3}, Landroid/net/NetworkStackClient;->checkNetworkStackPermission(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V

    .line 327
    :cond_3
    return-object v1

    .line 320
    :cond_4
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid network stack UID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private getRemoteConnector()Landroid/net/INetworkStackConnector;
    .locals 9

    .line 470
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 471
    .local v1, "before":J
    :cond_0
    const-string/jumbo v3, "network_stack"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    move-object v4, v3

    .local v4, "connector":Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 472
    const-wide/16 v5, 0x14

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x2710

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    .line 474
    const-string v3, "Timeout waiting for NetworkStack connector"

    invoke-direct {p0, v3, v0}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 475
    return-object v0

    .line 481
    .end local v1    # "before":J
    :cond_1
    nop

    .line 483
    invoke-static {v4}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    return-object v0

    .line 478
    .end local v4    # "connector":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 479
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "Error waiting for NetworkStack connector"

    invoke-direct {p0, v2, v1}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 480
    return-object v0
.end method

.method private getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 398
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 399
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string v3, "NetworkStackClientPrefs.xml"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 400
    .local v0, "prefsFile":Ljava/io/File;
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v2

    .line 401
    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    return-object v1

    .line 402
    .end local v0    # "prefsFile":Ljava/io/File;
    :catchall_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Error loading shared preferences"

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    const/4 v1, 0x0

    return-object v1
.end method

.method static synthetic lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 1
    .param p0, "cb"    # Landroid/net/IIpMemoryStoreCallbacks;
    .param p1, "connector"    # Landroid/net/INetworkStackConnector;

    .line 191
    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 195
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$makeDhcpServer$0(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 1
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "params"    # Landroid/net/dhcp/DhcpServingParamsParcel;
    .param p2, "cb"    # Landroid/net/dhcp/IDhcpServerCallbacks;
    .param p3, "connector"    # Landroid/net/INetworkStackConnector;

    .line 146
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 150
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 1
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "cb"    # Landroid/net/ip/IIpClientCallbacks;
    .param p2, "connector"    # Landroid/net/INetworkStackConnector;

    .line 161
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 165
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$makeNetworkMonitor$2(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 1
    .param p0, "network"    # Landroid/net/Network;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/net/INetworkMonitorCallbacks;
    .param p3, "connector"    # Landroid/net/INetworkStackConnector;

    .line 176
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 180
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 431
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 432
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 433
    monitor-exit v0

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 437
    sget-object v0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 439
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 440
    monitor-exit v0

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 444
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 445
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 446
    monitor-exit v0

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private logi(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 453
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 454
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 455
    monitor-exit v0

    .line 456
    return-void

    .line 455
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeCrashWithTerribleFailure(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 23
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;

    .line 342
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    const/4 v0, 0x0

    invoke-direct {v1, v2, v0}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 345
    .local v4, "uptime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 346
    .local v6, "now":J
    const-string v0, "connectivity"

    const-string/jumbo v8, "min_crash_interval"

    const-wide/32 v9, 0x1499700

    invoke-static {v0, v8, v9, v10}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 348
    .local v8, "minCrashIntervalMs":J
    const-string v0, "connectivity"

    const-string/jumbo v10, "min_uptime_before_crash"

    const-wide/32 v11, 0x1b7740

    invoke-static {v0, v10, v11, v12}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v10

    .line 350
    .local v10, "minUptimeBeforeCrash":J
    const/4 v0, 0x0

    const-string v12, "connectivity"

    const-string v13, "always_ratelimit_networkstack_crash"

    invoke-static {v12, v13, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 353
    .local v12, "alwaysRatelimit":Z
    move-object/from16 v13, p2

    invoke-direct {v1, v13}, Landroid/net/NetworkStackClient;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 354
    .local v14, "prefs":Landroid/content/SharedPreferences;
    invoke-direct {v1, v14}, Landroid/net/NetworkStackClient;->tryGetLastCrashTime(Landroid/content/SharedPreferences;)J

    move-result-wide v15

    .line 367
    .local v15, "lastCrashTime":J
    sget-boolean v17, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/16 v18, 0x1

    if-eqz v17, :cond_0

    if-nez v12, :cond_0

    move/from16 v17, v18

    goto :goto_0

    :cond_0
    move/from16 v17, v0

    .line 368
    .local v17, "alwaysCrash":Z
    :goto_0
    cmp-long v19, v4, v10

    if-gez v19, :cond_1

    move/from16 v19, v18

    goto :goto_1

    :cond_1
    move/from16 v19, v0

    .line 369
    .local v19, "justBooted":Z
    :goto_1
    const-wide/16 v20, 0x0

    cmp-long v20, v15, v20

    if-eqz v20, :cond_2

    cmp-long v20, v15, v6

    if-gez v20, :cond_2

    move/from16 v20, v18

    goto :goto_2

    :cond_2
    move/from16 v20, v0

    .line 370
    .local v20, "haveLastCrashTime":Z
    :goto_2
    if-eqz v20, :cond_3

    add-long v21, v15, v8

    cmp-long v21, v6, v21

    if-gez v21, :cond_3

    move/from16 v0, v18

    :cond_3
    move/from16 v18, v0

    .line 372
    .local v18, "haveKnownRecentCrash":Z
    if-nez v17, :cond_8

    if-nez v19, :cond_5

    if-eqz v18, :cond_4

    goto :goto_3

    :cond_4
    move-wide/from16 v21, v4

    goto :goto_5

    .line 384
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 386
    move-wide/from16 v21, v4

    .end local v4    # "uptime":J
    .local v21, "uptime":J
    iget-object v4, v1, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v4

    .line 387
    :try_start_0
    new-instance v0, Landroid/util/ArraySet;

    iget-object v5, v1, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    invoke-direct {v0, v5}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    .line 388
    .local v0, "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/NetworkStackClient$NetworkStackHealthListener;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkStackClient$NetworkStackHealthListener;

    .line 390
    .local v5, "listener":Landroid/net/NetworkStackClient$NetworkStackHealthListener;
    invoke-interface {v5, v3}, Landroid/net/NetworkStackClient$NetworkStackHealthListener;->onNetworkStackFailure(Ljava/lang/String;)V

    .line 391
    .end local v5    # "listener":Landroid/net/NetworkStackClient$NetworkStackHealthListener;
    goto :goto_4

    .line 388
    .end local v0    # "listeners":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/net/NetworkStackClient$NetworkStackHealthListener;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 384
    .end local v21    # "uptime":J
    .restart local v4    # "uptime":J
    :cond_6
    move-wide/from16 v21, v4

    .line 393
    .end local v4    # "uptime":J
    .restart local v21    # "uptime":J
    :cond_7
    return-void

    .line 372
    .end local v21    # "uptime":J
    .restart local v4    # "uptime":J
    :cond_8
    move-wide/from16 v21, v4

    .line 378
    .end local v4    # "uptime":J
    .restart local v21    # "uptime":J
    :goto_5
    invoke-direct {v1, v14, v6, v7}, Landroid/net/NetworkStackClient;->tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V

    .line 379
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private registerNetworkStackService(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "service"    # Landroid/os/IBinder;

    .line 227
    invoke-static {p1}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    .line 229
    .local v0, "connector":Landroid/net/INetworkStackConnector;
    const-string/jumbo v1, "network_stack"

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, p1, v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 231
    const-string v1, "Network stack service registered"

    invoke-direct {p0, v1}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 234
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v1

    .line 235
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 236
    .local v2, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStackClient$NetworkStackCallback;>;"
    iget-object v3, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 237
    iput-object v0, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 238
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStackClient$NetworkStackCallback;

    .line 241
    .local v3, "r":Landroid/net/NetworkStackClient$NetworkStackCallback;
    invoke-interface {v3, v0}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 242
    .end local v3    # "r":Landroid/net/NetworkStackClient$NetworkStackCallback;
    goto :goto_0

    .line 243
    :cond_0
    return-void

    .line 238
    .end local v2    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStackClient$NetworkStackCallback;>;"
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V
    .locals 4
    .param p1, "request"    # Landroid/net/NetworkStackClient$NetworkStackCallback;

    .line 488
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 489
    .local v0, "caller":I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3ea

    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x3e9

    .line 490
    invoke-static {v0, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 492
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the system server should try to bind to the network stack."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 496
    :cond_1
    :goto_0
    iget-boolean v1, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    if-nez v1, :cond_2

    .line 499
    invoke-direct {p0}, Landroid/net/NetworkStackClient;->getRemoteConnector()Landroid/net/INetworkStackConnector;

    move-result-object v1

    .line 500
    .local v1, "connector":Landroid/net/INetworkStackConnector;
    iget-object v2, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v2

    .line 501
    :try_start_0
    iput-object v1, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 502
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-interface {p1, v1}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 504
    return-void

    .line 502
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 508
    .end local v1    # "connector":Landroid/net/INetworkStackConnector;
    :cond_2
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v1

    .line 509
    :try_start_2
    iget-object v2, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 510
    .local v2, "connector":Landroid/net/INetworkStackConnector;
    if-nez v2, :cond_3

    .line 511
    iget-object v3, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    monitor-exit v1

    return-void

    .line 514
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 516
    invoke-interface {p1, v2}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 517
    return-void

    .line 514
    .end local v2    # "connector":Landroid/net/INetworkStackConnector;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method private tryGetLastCrashTime(Landroid/content/SharedPreferences;)J
    .locals 4
    .param p1, "prefs"    # Landroid/content/SharedPreferences;

    .line 409
    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 411
    :cond_0
    :try_start_0
    const-string/jumbo v2, "lastcrash_time"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 412
    :catchall_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/Throwable;
    const-string v3, "Error getting last crash time"

    invoke-direct {p0, v3, v2}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 414
    return-wide v0
.end method

.method private tryWriteLastCrashTime(Landroid/content/SharedPreferences;J)V
    .locals 2
    .param p1, "prefs"    # Landroid/content/SharedPreferences;
    .param p2, "value"    # J

    .line 419
    if-nez p1, :cond_0

    return-void

    .line 421
    :cond_0
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "lastcrash_time"

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    goto :goto_0

    .line 422
    :catchall_0
    move-exception v0

    .line 423
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Error writing last crash time"

    invoke-direct {p0, v1, v0}, Landroid/net/NetworkStackClient;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 425
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 524
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 529
    .local v1, "requestsQueueLength":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pendingNetStackRequests length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 533
    return-void

    .line 529
    .end local v1    # "requestsQueueLength":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    .locals 1
    .param p1, "cb"    # Landroid/net/IIpMemoryStoreCallbacks;

    .line 189
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$qInwLPrclXOFvKSYRjcCaCSeEhw;

    invoke-direct {v0, p1}, Landroid/net/-$$Lambda$NetworkStackClient$qInwLPrclXOFvKSYRjcCaCSeEhw;-><init>(Landroid/net/IIpMemoryStoreCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 196
    return-void
.end method

.method public init()V
    .locals 1

    .line 250
    const-string v0, "Network stack init"

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 252
    return-void
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/net/dhcp/DhcpServingParamsParcel;
    .param p3, "cb"    # Landroid/net/dhcp/IDhcpServerCallbacks;

    .line 144
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;-><init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 151
    return-void
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/net/ip/IIpClientCallbacks;

    .line 159
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;

    invoke-direct {v0, p1, p2}, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;-><init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 166
    return-void
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/net/INetworkMonitorCallbacks;

    .line 174
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 181
    return-void
.end method

.method public registerHealthListener(Landroid/net/NetworkStackClient$NetworkStackHealthListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/net/NetworkStackClient$NetworkStackHealthListener;

    .line 132
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mHealthListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0

    .line 135
    return-void

    .line 134
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .line 263
    const-string v0, "Starting network stack"

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 268
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroid/net/NetworkStackClient;->getNetworkStackIntent(Landroid/content/pm/PackageManager;Z)Landroid/content/Intent;

    move-result-object v1

    .line 271
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 272
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Landroid/net/NetworkStackClient;->getNetworkStackIntent(Landroid/content/pm/PackageManager;Z)Landroid/content/Intent;

    move-result-object v1

    .line 273
    const-string v2, "Starting network stack process"

    invoke-direct {p0, v2}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    :cond_0
    const-string v2, "Starting network stack in-process"

    invoke-direct {p0, v2}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 278
    :goto_0
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 279
    const-string v3, "Could not resolve the network stack"

    invoke-direct {p0, v3, p1, v2}, Landroid/net/NetworkStackClient;->maybeCrashWithTerribleFailure(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 280
    return-void

    .line 283
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 287
    .local v3, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/net/NetworkStackClient$NetworkStackConnection;

    invoke-direct {v4, p0, p1, v3, v2}, Landroid/net/NetworkStackClient$NetworkStackConnection;-><init>(Landroid/net/NetworkStackClient;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkStackClient$1;)V

    const/16 v2, 0x41

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, v1, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not bind to network stack in-process, or in app with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p1, v3}, Landroid/net/NetworkStackClient;->maybeCrashWithTerribleFailure(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    .line 292
    return-void

    .line 295
    :cond_2
    const-string v2, "Network stack service start requested"

    invoke-direct {p0, v2}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 296
    return-void
.end method
