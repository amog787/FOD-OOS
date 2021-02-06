.class public Landroid/net/NetworkStackClient;
.super Ljava/lang/Object;
.source "NetworkStackClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkStackClient$NetworkStackConnection;,
        Landroid/net/NetworkStackClient$DependenciesImpl;,
        Landroid/net/NetworkStackClient$Dependencies;,
        Landroid/net/NetworkStackClient$NetworkStackCallback;
    }
.end annotation


# static fields
.field private static final NETWORKSTACK_TIMEOUT_MS:I = 0x2710

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Landroid/net/NetworkStackClient;


# instance fields
.field private mConnector:Landroid/net/INetworkStackConnector;

.field private final mDependencies:Landroid/net/NetworkStackClient$Dependencies;

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mPendingNetStackRequests:Ljava/util/ArrayList;
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

    .line 48
    const-class v0, Landroid/net/NetworkStackClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 79
    new-instance v0, Landroid/net/NetworkStackClient$DependenciesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/NetworkStackClient$DependenciesImpl;-><init>(Landroid/net/NetworkStackClient$1;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;-><init>(Landroid/net/NetworkStackClient$Dependencies;)V

    .line 80
    return-void
.end method

.method protected constructor <init>(Landroid/net/NetworkStackClient$Dependencies;)V
    .locals 2
    .param p1, "dependencies"    # Landroid/net/NetworkStackClient$Dependencies;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Landroid/net/util/SharedLog;

    sget-object v1, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 75
    iput-object p1, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    .line 76
    return-void
.end method

.method static synthetic access$100(Landroid/net/NetworkStackClient;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkStackClient;
    .param p1, "x1"    # Ljava/lang/String;

    .line 47
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->logi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/net/NetworkStackClient;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/NetworkStackClient;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 47
    invoke-direct {p0, p1}, Landroid/net/NetworkStackClient;->registerNetworkStackService(Landroid/os/IBinder;)V

    return-void
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

.method private getRemoteConnector()Landroid/net/INetworkStackConnector;
    .locals 9

    .line 282
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 283
    .local v1, "before":J
    :cond_0
    const-string/jumbo v3, "network_stack"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    move-object v4, v3

    .local v4, "connector":Landroid/os/IBinder;
    if-nez v3, :cond_1

    .line 284
    const-wide/16 v5, 0x14

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x2710

    cmp-long v3, v5, v7

    if-lez v3, :cond_0

    .line 286
    const-string v3, "Timeout waiting for NetworkStack connector"

    invoke-direct {p0, v3, v0}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    return-object v0

    .line 293
    .end local v1    # "before":J
    :cond_1
    nop

    .line 295
    invoke-static {v4}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    return-object v0

    .line 290
    .end local v4    # "connector":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 291
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v2, "Error waiting for NetworkStack connector"

    invoke-direct {p0, v2, v1}, Landroid/net/NetworkStackClient;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    return-object v0
.end method

.method static synthetic lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 1
    .param p0, "cb"    # Landroid/net/IIpMemoryStoreCallbacks;
    .param p1, "connector"    # Landroid/net/INetworkStackConnector;

    .line 182
    :try_start_0
    invoke-interface {p1, p0}, Landroid/net/INetworkStackConnector;->fetchIpMemoryStore(Landroid/net/IIpMemoryStoreCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 186
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

    .line 137
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    goto :goto_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 141
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic lambda$makeIpClient$1(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V
    .locals 1
    .param p0, "ifName"    # Ljava/lang/String;
    .param p1, "cb"    # Landroid/net/ip/IIpClientCallbacks;
    .param p2, "connector"    # Landroid/net/INetworkStackConnector;

    .line 152
    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/net/INetworkStackConnector;->makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 156
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

    .line 167
    :try_start_0
    invoke-interface {p3, p0, p1, p2}, Landroid/net/INetworkStackConnector;->makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 171
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 243
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 245
    monitor-exit v0

    .line 246
    return-void

    .line 245
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

    .line 249
    sget-object v0, Landroid/net/NetworkStackClient;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    monitor-exit v0

    .line 253
    return-void

    .line 252
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

    .line 256
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1, p2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
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

    .line 265
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v1, p1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    .line 267
    monitor-exit v0

    .line 268
    return-void

    .line 267
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerNetworkStackService(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "service"    # Landroid/os/IBinder;

    .line 199
    invoke-static {p1}, Landroid/net/INetworkStackConnector$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStackConnector;

    move-result-object v0

    .line 200
    .local v0, "connector":Landroid/net/INetworkStackConnector;
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    invoke-interface {v1, p1}, Landroid/net/NetworkStackClient$Dependencies;->addToServiceManager(Landroid/os/IBinder;)V

    .line 201
    const-string v1, "Network stack service registered"

    invoke-direct {p0, v1}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v1

    .line 205
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 206
    .local v2, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/NetworkStackClient$NetworkStackCallback;>;"
    iget-object v3, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 207
    iput-object v0, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 208
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkStackClient$NetworkStackCallback;

    .line 211
    .local v3, "r":Landroid/net/NetworkStackClient$NetworkStackCallback;
    invoke-interface {v3, v0}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 212
    .end local v3    # "r":Landroid/net/NetworkStackClient$NetworkStackCallback;
    goto :goto_0

    .line 213
    :cond_0
    return-void

    .line 208
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
    .locals 3
    .param p1, "request"    # Landroid/net/NetworkStackClient$NetworkStackCallback;

    .line 299
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    invoke-interface {v0}, Landroid/net/NetworkStackClient$Dependencies;->checkCallerUid()V

    .line 301
    iget-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    if-nez v0, :cond_0

    .line 304
    invoke-direct {p0}, Landroid/net/NetworkStackClient;->getRemoteConnector()Landroid/net/INetworkStackConnector;

    move-result-object v0

    .line 305
    .local v0, "connector":Landroid/net/INetworkStackConnector;
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v1

    .line 306
    :try_start_0
    iput-object v0, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 307
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    invoke-interface {p1, v0}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 309
    return-void

    .line 307
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 313
    .end local v0    # "connector":Landroid/net/INetworkStackConnector;
    :cond_0
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 314
    :try_start_2
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mConnector:Landroid/net/INetworkStackConnector;

    .line 315
    .local v1, "connector":Landroid/net/INetworkStackConnector;
    if-nez v1, :cond_1

    .line 316
    iget-object v2, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    monitor-exit v0

    return-void

    .line 319
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 321
    invoke-interface {p1, v1}, Landroid/net/NetworkStackClient$NetworkStackCallback;->onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V

    .line 322
    return-void

    .line 319
    .end local v1    # "connector":Landroid/net/INetworkStackConnector;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 329
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mLog:Landroid/net/util/SharedLog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 331
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityModuleConnector;->dump(Ljava/io/PrintWriter;)V

    .line 334
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    monitor-enter v0

    .line 335
    :try_start_0
    iget-object v1, p0, Landroid/net/NetworkStackClient;->mPendingNetStackRequests:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 336
    .local v1, "requestsQueueLength":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pendingNetStackRequests length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    return-void

    .line 336
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

    .line 180
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$qInwLPrclXOFvKSYRjcCaCSeEhw;

    invoke-direct {v0, p1}, Landroid/net/-$$Lambda$NetworkStackClient$qInwLPrclXOFvKSYRjcCaCSeEhw;-><init>(Landroid/net/IIpMemoryStoreCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 187
    return-void
.end method

.method public init()V
    .locals 1

    .line 220
    const-string v0, "Network stack init"

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/NetworkStackClient;->mWasSystemServerInitialized:Z

    .line 222
    return-void
.end method

.method public makeDhcpServer(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/net/dhcp/DhcpServingParamsParcel;
    .param p3, "cb"    # Landroid/net/dhcp/IDhcpServerCallbacks;

    .line 135
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/-$$Lambda$NetworkStackClient$tuv4lz5fwSxR2XuU69pB4cKkltA;-><init>(Ljava/lang/String;Landroid/net/dhcp/DhcpServingParamsParcel;Landroid/net/dhcp/IDhcpServerCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 142
    return-void
.end method

.method public makeIpClient(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 1
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "cb"    # Landroid/net/ip/IIpClientCallbacks;

    .line 150
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;

    invoke-direct {v0, p1, p2}, Landroid/net/-$$Lambda$NetworkStackClient$EsrnifYD8E-HxTwVQsf45HJKvtM;-><init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 157
    return-void
.end method

.method public makeNetworkMonitor(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V
    .locals 1
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "cb"    # Landroid/net/INetworkMonitorCallbacks;

    .line 165
    new-instance v0, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;

    invoke-direct {v0, p1, p2, p3}, Landroid/net/-$$Lambda$NetworkStackClient$8Y7GJyozK7_xixdmgfHS4QSif-A;-><init>(Landroid/net/Network;Ljava/lang/String;Landroid/net/INetworkMonitorCallbacks;)V

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->requestConnector(Landroid/net/NetworkStackClient$NetworkStackCallback;)V

    .line 172
    return-void
.end method

.method public start()V
    .locals 4

    .line 233
    iget-object v0, p0, Landroid/net/NetworkStackClient;->mDependencies:Landroid/net/NetworkStackClient$Dependencies;

    invoke-interface {v0}, Landroid/net/NetworkStackClient$Dependencies;->getConnectivityModuleConnector()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-class v1, Landroid/net/INetworkStackConnector;

    .line 234
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/net/NetworkStackClient$NetworkStackConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/net/NetworkStackClient$NetworkStackConnection;-><init>(Landroid/net/NetworkStackClient;Landroid/net/NetworkStackClient$1;)V

    .line 233
    const-string v3, "android.permission.MAINLINE_NETWORK_STACK"

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V

    .line 236
    const-string v0, "Network stack service start requested"

    invoke-direct {p0, v0}, Landroid/net/NetworkStackClient;->log(Ljava/lang/String;)V

    .line 237
    return-void
.end method
