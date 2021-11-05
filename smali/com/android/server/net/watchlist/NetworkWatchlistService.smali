.class public Lcom/android/server/net/watchlist/NetworkWatchlistService;
.super Lcom/android/internal/net/INetworkWatchlistManager$Stub;
.source "NetworkWatchlistService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final MAX_NUM_OF_WATCHLIST_DIGESTS:I = 0x2710

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

.field private final mContext:Landroid/content/Context;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

.field private volatile mIsLoggingEnabled:Z

.field private final mLoggingSwitchLock:Ljava/lang/Object;

.field private final mNetdEventCallback:Landroid/net/INetdEventCallback;

.field mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 112
    invoke-direct {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    .line 143
    new-instance v1, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

    invoke-direct {v1, p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;-><init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 113
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 115
    new-instance v1, Lcom/android/server/ServiceThread;

    sget-object v2, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 117
    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    .line 118
    new-instance v0, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    iget-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 119
    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 120
    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->reportWatchlistIfNecessary()V

    .line 121
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/ServiceThread;Lcom/android/server/net/watchlist/WatchlistLoggingHandler;Landroid/net/IIpConnectivityMetrics;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handlerThread"    # Lcom/android/server/ServiceThread;
    .param p3, "handler"    # Lcom/android/server/net/watchlist/WatchlistLoggingHandler;
    .param p4, "ipConnectivityMetrics"    # Landroid/net/IIpConnectivityMetrics;

    .line 126
    invoke-direct {p0}, Lcom/android/internal/net/INetworkWatchlistManager$Stub;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    .line 143
    new-instance v0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;-><init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    .line 127
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    .line 128
    invoke-static {}, Lcom/android/server/net/watchlist/WatchlistConfig;->getInstance()Lcom/android/server/net/watchlist/WatchlistConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    .line 129
    iput-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 130
    iput-object p3, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    .line 131
    iput-object p4, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 132
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 50
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 50
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->initIpConnectivityMetrics()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/net/watchlist/NetworkWatchlistService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/net/watchlist/NetworkWatchlistService;

    .line 50
    iget-boolean v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    return v0
.end method

.method private enforceWatchlistLoggingPermission()V
    .locals 5

    .line 245
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 246
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 250
    return-void

    .line 247
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 248
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 247
    const-string v3, "Uid %d has no permission to change watchlist setting."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private init()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->removeTestModeConfig()V

    .line 136
    return-void
.end method

.method private initIpConnectivityMetrics()V
    .locals 1

    .line 139
    nop

    .line 140
    const-string v0, "connmetrics"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/net/IIpConnectivityMetrics$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IIpConnectivityMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    .line 141
    return-void
.end method

.method private isCallerShell()Z
    .locals 2

    .line 163
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 164
    .local v0, "callingUid":I
    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/net/watchlist/WatchlistConfig;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public forceReportWatchlistForTest(J)Z
    .locals 1
    .param p1, "lastReportTime"    # J

    .line 272
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->isConfigSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    const/4 v0, 0x0

    return v0

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->forceReportWatchlistForTest(J)V

    .line 277
    const/4 v0, 0x1

    return v0
.end method

.method public getWatchlistConfigHash()[B
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->getWatchlistConfigHash()[B

    move-result-object v0

    return-object v0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 170
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->isCallerShell()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    sget-object v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const-string v1, "Only shell is allowed to call network watchlist shell commands"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void

    .line 174
    :cond_0
    new-instance v0, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;

    iget-object v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;-><init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;Landroid/content/Context;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/net/watchlist/NetworkWatchlistShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 176
    return-void
.end method

.method public reloadWatchlist()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->enforceWatchlistLoggingPermission()V

    .line 255
    sget-object v0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const-string v1, "Reloading watchlist"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mConfig:Lcom/android/server/net/watchlist/WatchlistConfig;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistConfig;->reloadConfig()V

    .line 257
    return-void
.end method

.method public reportWatchlistIfNecessary()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {v0}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->reportWatchlistIfNecessary()V

    .line 263
    return-void
.end method

.method public startWatchlistLogging()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->enforceWatchlistLoggingPermission()V

    .line 206
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->startWatchlistLoggingImpl()Z

    move-result v0

    return v0
.end method

.method protected startWatchlistLoggingImpl()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 185
    sget-object v1, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const-string v3, "Watchlist logging is already running"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 189
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetdEventCallback:Landroid/net/INetdEventCallback;

    invoke-interface {v3, v4, v5}, Landroid/net/IIpConnectivityMetrics;->addNetdEventCallback(ILandroid/net/INetdEventCallback;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 191
    iput-boolean v2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 192
    :try_start_2
    monitor-exit v0

    return v2

    .line 194
    :cond_1
    monitor-exit v0

    return v1

    .line 196
    :catch_0
    move-exception v2

    .line 198
    .local v2, "re":Landroid/os/RemoteException;
    monitor-exit v0

    return v1

    .line 200
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public stopWatchlistLogging()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->enforceWatchlistLoggingPermission()V

    .line 235
    invoke-virtual {p0}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->stopWatchlistLoggingImpl()Z

    move-result v0

    return v0
.end method

.method protected stopWatchlistLoggingImpl()Z
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mLoggingSwitchLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z

    if-nez v1, :cond_0

    .line 216
    sget-object v1, Lcom/android/server/net/watchlist/NetworkWatchlistService;->TAG:Ljava/lang/String;

    const-string v2, "Watchlist logging is not running"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 220
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIsLoggingEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    iget-object v2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mIpConnectivityMetrics:Landroid/net/IIpConnectivityMetrics;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/net/IIpConnectivityMetrics;->removeNetdEventCallback(I)Z

    move-result v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return v1

    .line 225
    :catch_0
    move-exception v2

    .line 227
    .local v2, "re":Landroid/os/RemoteException;
    monitor-exit v0

    return v1

    .line 229
    .end local v2    # "re":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
