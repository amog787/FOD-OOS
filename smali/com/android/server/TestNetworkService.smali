.class Lcom/android/server/TestNetworkService;
.super Landroid/net/ITestNetworkManager$Stub;
.source "TestNetworkService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TestNetworkService$TestNetworkAgent;
    }
.end annotation


# static fields
.field private static final PERMISSION_NAME:Ljava/lang/String; = "android.permission.MANAGE_TEST_NETWORKS"

.field private static final TAG:Ljava/lang/String;

.field private static final TEST_NETWORK_TYPE:Ljava/lang/String; = "TEST_NETWORK"

.field private static final TEST_TAP_PREFIX:Ljava/lang/String; = "testtap"

.field private static final TEST_TUN_PREFIX:Ljava/lang/String; = "testtun"

.field private static final sTestTunIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mNMS:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;

.field private final mTestNetworkTracker:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mTestNetworkTracker"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/TestNetworkService$TestNetworkAgent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    const-class v0, Lcom/android/server/TestNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TestNetworkService;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/TestNetworkService;->sTestTunIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 78
    invoke-direct {p0}, Landroid/net/ITestNetworkManager$Stub;-><init>()V

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TestNetworkServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 80
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/TestNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mHandler:Landroid/os/Handler;

    .line 83
    const-string/jumbo v0, "missing Context"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    .line 84
    const-string/jumbo v0, "missing INetworkManagementService"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mNMS:Landroid/os/INetworkManagementService;

    .line 85
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    const-string v1, "could not get netd instance"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/INetd;

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mNetd:Landroid/net/INetd;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TestNetworkService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TestNetworkService;

    .line 59
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    return-object v0
.end method

.method private createInterface(Z[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .locals 3
    .param p1, "isTun"    # Z
    .param p2, "linkAddrs"    # [Landroid/net/LinkAddress;

    .line 95
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 97
    const-string/jumbo v0, "missing linkAddrs"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    if-eqz p1, :cond_0

    const-string/jumbo v0, "testtun"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "testtap"

    .line 100
    .local v0, "ifacePrefix":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/TestNetworkService;->sTestTunIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "iface":Ljava/lang/String;
    new-instance v2, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/server/-$$Lambda$TestNetworkService$kNsToB0Cr6DV8jrvpBel_EzoIHE;-><init>(Lcom/android/server/TestNetworkService;ZLjava/lang/String;[Landroid/net/LinkAddress;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/TestNetworkInterface;

    return-object v2
.end method

.method public static enforceTestNetworkPermissions(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 355
    const-string v0, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v1, "TestNetworkService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    return-void
.end method

.method private static native jniCreateTunTap(ZLjava/lang/String;)I
.end method

.method private registerTestNetworkAgent(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;ILandroid/os/IBinder;)Lcom/android/server/TestNetworkService$TestNetworkAgent;
    .locals 21
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "iface"    # Ljava/lang/String;
    .param p4, "callingUid"    # I
    .param p5, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 232
    move-object/from16 v0, p3

    const-string/jumbo v1, "missing Looper"

    move-object/from16 v12, p1

    invoke-static {v12, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string/jumbo v1, "missing Context"

    move-object/from16 v13, p2

    invoke-static {v13, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    new-instance v1, Landroid/net/NetworkInfo;

    const/4 v2, 0x0

    const/16 v3, 0x12

    const-string v4, "TEST_NETWORK"

    const-string v5, ""

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 238
    .local v1, "ni":Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v4}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 242
    new-instance v5, Landroid/net/NetworkCapabilities;

    invoke-direct {v5}, Landroid/net/NetworkCapabilities;-><init>()V

    move-object v14, v5

    .line 243
    .local v14, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v14}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 244
    const/4 v5, 0x7

    invoke-virtual {v14, v5}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 245
    const/16 v5, 0x15

    invoke-virtual {v14, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 246
    const/16 v5, 0xd

    invoke-virtual {v14, v5}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 247
    new-instance v5, Landroid/net/StringNetworkSpecifier;

    invoke-direct {v5, v0}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 250
    new-instance v5, Landroid/net/LinkProperties;

    invoke-direct {v5}, Landroid/net/LinkProperties;-><init>()V

    move-object v15, v5

    .line 251
    .local v15, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v15, v0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 254
    const/4 v5, 0x0

    .local v5, "allowIPv4":Z
    const/4 v6, 0x0

    .line 255
    .local v6, "allowIPv6":Z
    invoke-static/range {p3 .. p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v11

    .line 256
    .local v11, "netIntf":Ljava/net/NetworkInterface;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No such network interface found: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move/from16 v16, v5

    move/from16 v17, v6

    .end local v5    # "allowIPv4":Z
    .end local v6    # "allowIPv6":Z
    .local v16, "allowIPv4":Z
    .local v17, "allowIPv6":Z
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/net/InterfaceAddress;

    .line 259
    .local v5, "intfAddr":Ljava/net/InterfaceAddress;
    new-instance v6, Landroid/net/LinkAddress;

    .line 260
    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v9

    invoke-direct {v6, v8, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 259
    invoke-virtual {v15, v6}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 262
    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet6Address;

    if-eqz v6, :cond_0

    .line 263
    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    xor-int/2addr v6, v3

    or-int v6, v17, v6

    move/from16 v17, v6

    .end local v17    # "allowIPv6":Z
    .restart local v6    # "allowIPv6":Z
    goto :goto_1

    .line 264
    .end local v6    # "allowIPv6":Z
    .restart local v17    # "allowIPv6":Z
    :cond_0
    invoke-virtual {v5}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    instance-of v6, v6, Ljava/net/Inet4Address;

    if-eqz v6, :cond_1

    .line 265
    const/4 v6, 0x1

    move/from16 v16, v6

    .line 267
    .end local v5    # "intfAddr":Ljava/net/InterfaceAddress;
    :cond_1
    :goto_1
    goto :goto_0

    .line 270
    :cond_2
    if-eqz v16, :cond_3

    .line 271
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    sget-object v6, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v5, v6, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v3, v5, v4, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 273
    :cond_3
    if-eqz v17, :cond_4

    .line 274
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v5, Landroid/net/IpPrefix;

    sget-object v6, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v5, v6, v2}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v3, v5, v4, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 277
    :cond_4
    new-instance v18, Lcom/android/server/TestNetworkService$TestNetworkAgent;

    const/16 v19, 0x0

    move-object/from16 v2, v18

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object v6, v1

    move-object v7, v14

    move-object v8, v15

    move/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v20, v11

    .end local v11    # "netIntf":Ljava/net/NetworkInterface;
    .local v20, "netIntf":Ljava/net/NetworkInterface;
    move-object/from16 v11, v19

    invoke-direct/range {v2 .. v11}, Lcom/android/server/TestNetworkService$TestNetworkAgent;-><init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;Lcom/android/server/TestNetworkService$1;)V

    return-object v18
.end method


# virtual methods
.method public createTapInterface()Landroid/net/TestNetworkInterface;
    .locals 2

    .line 139
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/net/LinkAddress;

    invoke-direct {p0, v0, v1}, Lcom/android/server/TestNetworkService;->createInterface(Z[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public createTunInterface([Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .locals 1
    .param p1, "linkAddrs"    # [Landroid/net/LinkAddress;

    .line 128
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/TestNetworkService;->createInterface(Z[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$createInterface$0$TestNetworkService(ZLjava/lang/String;[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .locals 7
    .param p1, "isTun"    # Z
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "linkAddrs"    # [Landroid/net/LinkAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    nop

    .line 105
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/TestNetworkService;->jniCreateTunTap(ZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 106
    .local v0, "tunIntf":Landroid/os/ParcelFileDescriptor;
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 107
    .local v3, "addr":Landroid/net/LinkAddress;
    iget-object v4, p0, Lcom/android/server/TestNetworkService;->mNetd:Landroid/net/INetd;

    .line 109
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    .line 107
    invoke-interface {v4, p2, v5, v6}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 106
    .end local v3    # "addr":Landroid/net/LinkAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    new-instance v1, Landroid/net/TestNetworkInterface;

    invoke-direct {v1, v0, p2}, Landroid/net/TestNetworkInterface;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 114
    .end local v0    # "tunIntf":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public synthetic lambda$setupTestNetwork$1$TestNetworkService(Ljava/lang/String;ILandroid/os/IBinder;)V
    .locals 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 304
    :try_start_0
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :try_start_1
    iget-object v1, p0, Lcom/android/server/TestNetworkService;->mHandler:Landroid/os/Handler;

    .line 315
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    .line 314
    move-object v2, p0

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/android/server/TestNetworkService;->registerTestNetworkAgent(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;ILandroid/os/IBinder;)Lcom/android/server/TestNetworkService$TestNetworkAgent;

    move-result-object v1

    .line 321
    .local v1, "agent":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    iget-object v2, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/TestNetworkService$TestNetworkAgent;->netId:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 322
    .end local v1    # "agent":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    monitor-exit v0

    .line 327
    nop

    .line 328
    return-void

    .line 322
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/TestNetworkService;
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "callingUid":I
    .end local p3    # "binder":Landroid/os/IBinder;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 325
    .restart local p0    # "this":Lcom/android/server/TestNetworkService;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "callingUid":I
    .restart local p3    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 323
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 324
    .local v0, "e":Ljava/net/SocketException;
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public setupTestNetwork(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 288
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 290
    const-string/jumbo v0, "missing Iface"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string/jumbo v0, "missing IBinder"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    const-string v0, "ipsec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 294
    const-string/jumbo v0, "testtun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create network for non ipsec, non-testtun interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 301
    .local v0, "callingUid":I
    new-instance v1, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/server/-$$Lambda$TestNetworkService$jaBdxV1WIiJrgh0fXY_tPjFxN8I;-><init>(Lcom/android/server/TestNetworkService;Ljava/lang/String;ILandroid/os/IBinder;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 329
    return-void
.end method

.method public teardownTestNetwork(I)V
    .locals 3
    .param p1, "netId"    # I

    .line 334
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 337
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    monitor-enter v0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TestNetworkService$TestNetworkAgent;

    .line 339
    .local v1, "agent":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 341
    if-nez v1, :cond_0

    .line 342
    return-void

    .line 343
    :cond_0
    invoke-static {v1}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->access$200(Lcom/android/server/TestNetworkService$TestNetworkAgent;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 348
    invoke-static {v1}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->access$300(Lcom/android/server/TestNetworkService$TestNetworkAgent;)V

    .line 349
    return-void

    .line 344
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Attempted to modify other user\'s test networks"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    .end local v1    # "agent":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
