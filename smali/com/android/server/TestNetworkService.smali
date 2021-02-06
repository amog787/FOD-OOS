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

.field private static final sTestTunIndex:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mNMS:Landroid/os/INetworkManagementService;

.field private final mNetd:Landroid/net/INetd;

.field private final mTestNetworkTracker:Landroid/util/SparseArray;
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

    .line 64
    const-class v0, Lcom/android/server/TestNetworkService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/TestNetworkService;->TAG:Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/TestNetworkService;->sTestTunIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netManager"    # Landroid/os/INetworkManagementService;

    .line 80
    invoke-direct {p0}, Landroid/net/ITestNetworkManager$Stub;-><init>()V

    .line 145
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TestNetworkServiceThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 82
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/TestNetworkService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mHandler:Landroid/os/Handler;

    .line 85
    const-string/jumbo v0, "missing Context"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    .line 86
    const-string/jumbo v0, "missing INetworkManagementService"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mNMS:Landroid/os/INetworkManagementService;

    .line 87
    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    const-string v1, "could not get netd instance"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/net/INetd;

    iput-object v0, p0, Lcom/android/server/TestNetworkService;->mNetd:Landroid/net/INetd;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/TestNetworkService;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/TestNetworkService;

    .line 63
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    return-object v0
.end method

.method private createInterface(Z[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .locals 3
    .param p1, "isTun"    # Z
    .param p2, "linkAddrs"    # [Landroid/net/LinkAddress;

    .line 97
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 99
    const-string/jumbo v0, "missing linkAddrs"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    if-eqz p1, :cond_0

    const-string/jumbo v0, "testtun"

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "testtap"

    .line 102
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

    .line 103
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

    .line 374
    const-string v0, "android.permission.MANAGE_TEST_NETWORKS"

    const-string v1, "TestNetworkService"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method private static native jniCreateTunTap(ZLjava/lang/String;)I
.end method

.method private registerTestNetworkAgent(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/LinkProperties;ZI[ILandroid/os/IBinder;)Lcom/android/server/TestNetworkService$TestNetworkAgent;
    .locals 21
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "iface"    # Ljava/lang/String;
    .param p4, "lp"    # Landroid/net/LinkProperties;
    .param p5, "isMetered"    # Z
    .param p6, "callingUid"    # I
    .param p7, "administratorUids"    # [I
    .param p8, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 237
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    const-string/jumbo v2, "missing Looper"

    move-object/from16 v13, p1

    invoke-static {v13, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 238
    const-string/jumbo v2, "missing Context"

    move-object/from16 v14, p2

    invoke-static {v14, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 242
    new-instance v2, Landroid/net/NetworkInfo;

    const/16 v3, 0x12

    const/4 v4, 0x0

    const-string v5, "TEST_NETWORK"

    const-string v6, ""

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v2, "ni":Landroid/net/NetworkInfo;
    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v5}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 247
    new-instance v6, Landroid/net/NetworkCapabilities;

    invoke-direct {v6}, Landroid/net/NetworkCapabilities;-><init>()V

    move-object v15, v6

    .line 248
    .local v15, "nc":Landroid/net/NetworkCapabilities;
    invoke-virtual {v15}, Landroid/net/NetworkCapabilities;->clearAll()V

    .line 249
    const/4 v6, 0x7

    invoke-virtual {v15, v6}, Landroid/net/NetworkCapabilities;->addTransportType(I)Landroid/net/NetworkCapabilities;

    .line 250
    const/16 v6, 0x15

    invoke-virtual {v15, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 251
    const/16 v6, 0xd

    invoke-virtual {v15, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 252
    new-instance v6, Landroid/net/StringNetworkSpecifier;

    invoke-direct {v6, v0}, Landroid/net/StringNetworkSpecifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Landroid/net/NetworkSpecifier;)Landroid/net/NetworkCapabilities;

    .line 253
    move-object/from16 v12, p7

    invoke-virtual {v15, v12}, Landroid/net/NetworkCapabilities;->setAdministratorUids([I)Landroid/net/NetworkCapabilities;

    .line 254
    if-nez p5, :cond_0

    .line 255
    const/16 v6, 0xb

    invoke-virtual {v15, v6}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 259
    :cond_0
    if-nez v1, :cond_1

    .line 260
    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6}, Landroid/net/LinkProperties;-><init>()V

    move-object v1, v6

    .end local p4    # "lp":Landroid/net/LinkProperties;
    .local v1, "lp":Landroid/net/LinkProperties;
    goto :goto_0

    .line 262
    .end local v1    # "lp":Landroid/net/LinkProperties;
    .restart local p4    # "lp":Landroid/net/LinkProperties;
    :cond_1
    new-instance v6, Landroid/net/LinkProperties;

    invoke-direct {v6, v1}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    move-object v1, v6

    .line 265
    .end local p4    # "lp":Landroid/net/LinkProperties;
    .restart local v1    # "lp":Landroid/net/LinkProperties;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v6}, Landroid/net/LinkProperties;->setLinkAddresses(Ljava/util/Collection;)V

    .line 267
    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 270
    const/4 v6, 0x0

    .local v6, "allowIPv4":Z
    const/4 v7, 0x0

    .line 271
    .local v7, "allowIPv6":Z
    invoke-static/range {p3 .. p3}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v11

    .line 272
    .local v11, "netIntf":Ljava/net/NetworkInterface;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No such network interface found: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 274
    invoke-virtual {v11}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move/from16 v16, v6

    move/from16 v17, v7

    .end local v6    # "allowIPv4":Z
    .end local v7    # "allowIPv6":Z
    .local v16, "allowIPv4":Z
    .local v17, "allowIPv6":Z
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/net/InterfaceAddress;

    .line 275
    .local v6, "intfAddr":Ljava/net/InterfaceAddress;
    new-instance v7, Landroid/net/LinkAddress;

    .line 276
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v10

    invoke-direct {v7, v9, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 275
    invoke-virtual {v1, v7}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 278
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet6Address;

    if-eqz v7, :cond_2

    .line 279
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v7

    xor-int/2addr v7, v3

    or-int v7, v17, v7

    move/from16 v17, v7

    .end local v17    # "allowIPv6":Z
    .restart local v7    # "allowIPv6":Z
    goto :goto_2

    .line 280
    .end local v7    # "allowIPv6":Z
    .restart local v17    # "allowIPv6":Z
    :cond_2
    invoke-virtual {v6}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    instance-of v7, v7, Ljava/net/Inet4Address;

    if-eqz v7, :cond_3

    .line 281
    const/4 v7, 0x1

    move/from16 v16, v7

    .line 283
    .end local v6    # "intfAddr":Ljava/net/InterfaceAddress;
    :cond_3
    :goto_2
    goto :goto_1

    .line 286
    :cond_4
    if-eqz v16, :cond_5

    .line 287
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v3, v6, v5, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 289
    :cond_5
    if-eqz v17, :cond_6

    .line 290
    new-instance v3, Landroid/net/RouteInfo;

    new-instance v6, Landroid/net/IpPrefix;

    sget-object v7, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {v6, v7, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {v3, v6, v5, v0}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 293
    :cond_6
    new-instance v18, Lcom/android/server/TestNetworkService$TestNetworkAgent;

    const/16 v19, 0x0

    move-object/from16 v3, v18

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object v7, v2

    move-object v8, v15

    move-object v9, v1

    move/from16 v10, p6

    move-object/from16 v20, v11

    .end local v11    # "netIntf":Ljava/net/NetworkInterface;
    .local v20, "netIntf":Ljava/net/NetworkInterface;
    move-object/from16 v11, p8

    move-object/from16 v12, v19

    invoke-direct/range {v3 .. v12}, Lcom/android/server/TestNetworkService$TestNetworkAgent;-><init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;Lcom/android/server/TestNetworkService$1;)V

    return-object v18
.end method


# virtual methods
.method public createTapInterface()Landroid/net/TestNetworkInterface;
    .locals 2

    .line 141
    const/4 v0, 0x0

    new-array v1, v0, [Landroid/net/LinkAddress;

    invoke-direct {p0, v0, v1}, Lcom/android/server/TestNetworkService;->createInterface(Z[Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;

    move-result-object v0

    return-object v0
.end method

.method public createTunInterface([Landroid/net/LinkAddress;)Landroid/net/TestNetworkInterface;
    .locals 1
    .param p1, "linkAddrs"    # [Landroid/net/LinkAddress;

    .line 130
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

    .line 106
    nop

    .line 107
    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/TestNetworkService;->jniCreateTunTap(ZLjava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 108
    .local v0, "tunIntf":Landroid/os/ParcelFileDescriptor;
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    .line 109
    .local v3, "addr":Landroid/net/LinkAddress;
    iget-object v4, p0, Lcom/android/server/TestNetworkService;->mNetd:Landroid/net/INetd;

    .line 111
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v6

    .line 109
    invoke-interface {v4, p2, v5, v6}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 108
    .end local v3    # "addr":Landroid/net/LinkAddress;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    new-instance v1, Landroid/net/TestNetworkInterface;

    invoke-direct {v1, v0, p2}, Landroid/net/TestNetworkInterface;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 116
    .end local v0    # "tunIntf":Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public synthetic lambda$setupTestNetwork$1$TestNetworkService(Ljava/lang/String;)V
    .locals 1
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mNMS:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    return-void
.end method

.method public setupTestNetwork(Ljava/lang/String;Landroid/net/LinkProperties;Z[ILandroid/os/IBinder;)V
    .locals 14
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "lp"    # Landroid/net/LinkProperties;
    .param p3, "isMetered"    # Z
    .param p4, "administratorUids"    # [I
    .param p5, "binder"    # Landroid/os/IBinder;

    .line 309
    move-object v10, p0

    move-object v11, p1

    iget-object v0, v10, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 311
    const-string/jumbo v0, "missing Iface"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    const-string/jumbo v0, "missing IBinder"

    move-object/from16 v12, p5

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 314
    const-string/jumbo v0, "ipsec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    const-string/jumbo v0, "testtun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot create network for non ipsec, non-testtun interface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 322
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Lcom/android/server/-$$Lambda$TestNetworkService$1hp-BCN-pFkUplS_GtzJEkxX10Y;

    invoke-direct {v0, p0, p1}, Lcom/android/server/-$$Lambda$TestNetworkService$1hp-BCN-pFkUplS_GtzJEkxX10Y;-><init>(Lcom/android/server/TestNetworkService;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 329
    iget-object v13, v10, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    monitor-enter v13
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    :try_start_1
    iget-object v0, v10, Lcom/android/server/TestNetworkService;->mHandler:Landroid/os/Handler;

    .line 332
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, v10, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    .line 337
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 331
    move-object v1, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-direct/range {v1 .. v9}, Lcom/android/server/TestNetworkService;->registerTestNetworkAgent(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/LinkProperties;ZI[ILandroid/os/IBinder;)Lcom/android/server/TestNetworkService$TestNetworkAgent;

    move-result-object v0

    .line 341
    .local v0, "agent":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    iget-object v1, v10, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2

    iget v2, v2, Landroid/net/Network;->netId:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 342
    .end local v0    # "agent":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    monitor-exit v13

    .line 347
    nop

    .line 348
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/server/TestNetworkService;
    .end local p1    # "iface":Ljava/lang/String;
    .end local p2    # "lp":Landroid/net/LinkProperties;
    .end local p3    # "isMetered":Z
    .end local p4    # "administratorUids":[I
    .end local p5    # "binder":Landroid/os/IBinder;
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 345
    .restart local p0    # "this":Lcom/android/server/TestNetworkService;
    .restart local p1    # "iface":Ljava/lang/String;
    .restart local p2    # "lp":Landroid/net/LinkProperties;
    .restart local p3    # "isMetered":Z
    .restart local p4    # "administratorUids":[I
    .restart local p5    # "binder":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 343
    :catch_1
    move-exception v0

    goto :goto_2

    .line 346
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 344
    .local v0, "e":Ljava/net/SocketException;
    :goto_2
    new-instance v1, Ljava/io/UncheckedIOException;

    invoke-direct {v1, v0}, Ljava/io/UncheckedIOException;-><init>(Ljava/io/IOException;)V

    throw v1
.end method

.method public teardownTestNetwork(I)V
    .locals 3
    .param p1, "netId"    # I

    .line 353
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->enforceTestNetworkPermissions(Landroid/content/Context;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    monitor-enter v0

    .line 357
    :try_start_0
    iget-object v1, p0, Lcom/android/server/TestNetworkService;->mTestNetworkTracker:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/TestNetworkService$TestNetworkAgent;

    .line 358
    .local v1, "agent":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    if-nez v1, :cond_0

    .line 361
    return-void

    .line 362
    :cond_0
    invoke-static {v1}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->access$200(Lcom/android/server/TestNetworkService$TestNetworkAgent;)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 367
    invoke-static {v1}, Lcom/android/server/TestNetworkService$TestNetworkAgent;->access$300(Lcom/android/server/TestNetworkService$TestNetworkAgent;)V

    .line 368
    return-void

    .line 363
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Attempted to modify other user\'s test networks"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 358
    .end local v1    # "agent":Lcom/android/server/TestNetworkService$TestNetworkAgent;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
