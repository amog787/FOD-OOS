.class public Lcom/android/server/IpSecService;
.super Landroid/net/IIpSecService$Stub;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/IpSecService$UidFdTagger;,
        Lcom/android/server/IpSecService$EncapSocketRecord;,
        Lcom/android/server/IpSecService$TunnelInterfaceRecord;,
        Lcom/android/server/IpSecService$SpiRecord;,
        Lcom/android/server/IpSecService$TransformRecord;,
        Lcom/android/server/IpSecService$RefcountedResourceArray;,
        Lcom/android/server/IpSecService$OwnedResourceRecord;,
        Lcom/android/server/IpSecService$UserResourceTracker;,
        Lcom/android/server/IpSecService$UserRecord;,
        Lcom/android/server/IpSecService$ResourceTracker;,
        Lcom/android/server/IpSecService$RefcountedResource;,
        Lcom/android/server/IpSecService$IResource;,
        Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    }
.end annotation


# static fields
.field private static final ADDRESS_FAMILIES:[I

.field private static final DBG:Z

.field static final FREE_PORT_MIN:I = 0x400

.field private static final INADDR_ANY:Ljava/net/InetAddress;

.field static final MAX_PORT_BIND_ATTEMPTS:I = 0xa

.field private static final NETD_FETCH_TIMEOUT_MS:I = 0x1388

.field private static final NETD_SERVICE_NAME:Ljava/lang/String; = "netd"

.field static final PORT_MAX:I = 0xffff

.field private static final TAG:Ljava/lang/String; = "IpSecService"

.field private static final TUNNEL_OP:Ljava/lang/String; = "android:manage_ipsec_tunnels"

.field public static final TUN_INTF_NETID_RANGE:I = 0x400

.field static final TUN_INTF_NETID_START:I = 0xfc00


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNetworkManager:Landroid/os/INetworkManagementService;

.field private mNextResourceId:I

.field private mNextTunnelNetIdIndex:I

.field private final mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

.field private final mTunnelNetIds:Landroid/util/SparseBooleanArray;

.field final mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

.field final mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 93
    const-string v0, "IpSecService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/IpSecService;->DBG:Z

    .line 96
    const/4 v0, 0x2

    new-array v2, v0, [I

    sget v3, Landroid/system/OsConstants;->AF_INET:I

    const/4 v4, 0x0

    aput v3, v2, v4

    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v5, 0x1

    aput v3, v2, v5

    sput-object v2, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    .line 106
    const/4 v2, 0x4

    :try_start_0
    new-array v2, v2, [B

    aput-byte v4, v2, v4

    aput-byte v4, v2, v5

    aput-byte v4, v2, v0

    aput-byte v4, v2, v1

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    nop

    .line 110
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/net/UnknownHostException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;

    .line 1000
    sget-object v0, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->GETSRVINSTANCE:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V

    .line 1001
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/IpSecService$IpSecServiceConfiguration;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "config"    # Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1021
    sget-object v0, Lcom/android/server/-$$Lambda$IpSecService$AnqunmSwm_yQvDDEPg-gokhVs5M;->INSTANCE:Lcom/android/server/-$$Lambda$IpSecService$AnqunmSwm_yQvDDEPg-gokhVs5M;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/IpSecService$IpSecServiceConfiguration;Lcom/android/server/IpSecService$UidFdTagger;)V

    .line 1033
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Lcom/android/server/IpSecService$IpSecServiceConfiguration;Lcom/android/server/IpSecService$UidFdTagger;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkManager"    # Landroid/os/INetworkManagementService;
    .param p3, "config"    # Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    .param p4, "uidFdTagger"    # Lcom/android/server/IpSecService$UidFdTagger;

    .line 1038
    invoke-direct {p0}, Landroid/net/IIpSecService$Stub;-><init>()V

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    .line 481
    new-instance v0, Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-direct {v0}, Lcom/android/server/IpSecService$UserResourceTracker;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    .line 765
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    .line 766
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 1039
    iput-object p1, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    .line 1040
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Landroid/os/INetworkManagementService;

    iput-object v0, p0, Lcom/android/server/IpSecService;->mNetworkManager:Landroid/os/INetworkManagementService;

    .line 1041
    iput-object p3, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1042
    iput-object p4, p0, Lcom/android/server/IpSecService;->mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

    .line 1043
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/IpSecService;

    .line 91
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    return-object v0
.end method

.method static synthetic access$100()[I
    .locals 1

    .line 91
    sget-object v0, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    return-object v0
.end method

.method private bindToRandomPort(Ljava/io/FileDescriptor;)I
    .locals 6
    .param p1, "sockFd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1179
    const/16 v0, 0xa

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_1

    .line 1181
    :try_start_0
    sget v1, Landroid/system/OsConstants;->AF_INET:I

    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v1, v2, v3}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    .line 1182
    .local v1, "probeSocket":Ljava/io/FileDescriptor;
    sget-object v2, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 1183
    invoke-static {v1}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    .line 1184
    .local v2, "port":I
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    .line 1185
    const-string v3, "IpSecService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Binding to port "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    sget-object v3, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {p1, v3, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    return v2

    .line 1188
    .end local v1    # "probeSocket":Ljava/io/FileDescriptor;
    .end local v2    # "port":I
    :catch_0
    move-exception v1

    .line 1190
    .local v1, "e":Landroid/system/ErrnoException;
    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->EADDRINUSE:I

    if-ne v2, v3, :cond_0

    .line 1191
    nop

    .line 1179
    .end local v1    # "e":Landroid/system/ErrnoException;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1193
    .restart local v1    # "e":Landroid/system/ErrnoException;
    :cond_0
    invoke-virtual {v1}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1196
    .end local v0    # "i":I
    .end local v1    # "e":Landroid/system/ErrnoException;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Failed 10 attempts to bind to a port"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static checkDirection(I)V
    .locals 3
    .param p0, "direction"    # I

    .line 1098
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 1103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Direction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1101
    :cond_1
    :goto_0
    return-void
.end method

.method private static checkInetAddress(Ljava/lang/String;)V
    .locals 4
    .param p0, "inetAddress"    # Ljava/lang/String;

    .line 1082
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1086
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 1088
    .local v0, "checkAddr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1091
    return-void

    .line 1089
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inappropriate wildcard address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1083
    .end local v0    # "checkAddr":Ljava/net/InetAddress;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unspecified address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkIpSecConfig(Landroid/net/IpSecConfig;)V
    .locals 9
    .param p1, "config"    # Landroid/net/IpSecConfig;

    .line 1484
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1486
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1501
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid Encap Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1492
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1493
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v3

    .line 1492
    invoke-virtual {v1, v3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    .line 1495
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v1

    .line 1496
    .local v1, "port":I
    if-lez v1, :cond_2

    const v3, 0xffff

    if-gt v1, v3, :cond_2

    goto :goto_1

    .line 1497
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid remote UDP port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1488
    .end local v1    # "port":I
    :cond_3
    nop

    .line 1504
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/server/IpSecService;->validateAlgorithms(Landroid/net/IpSecConfig;)V

    .line 1507
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$SpiRecord;

    .line 1510
    .local v1, "s":Lcom/android/server/IpSecService$SpiRecord;
    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getOwnedByTransform()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1515
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1516
    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/IpSecConfig;->setDestinationAddress(Ljava/lang/String;)V

    .line 1520
    :cond_4
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/IpSecService$SpiRecord;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1527
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1530
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v3

    .line 1534
    .local v3, "sourceAddress":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v4

    .line 1535
    .local v4, "destinationAddress":Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/server/IpSecService;->getFamily(Ljava/lang/String;)I

    move-result v5

    .line 1536
    .local v5, "sourceFamily":I
    invoke-direct {p0, v4}, Lcom/android/server/IpSecService;->getFamily(Ljava/lang/String;)I

    move-result v6

    .line 1537
    .local v6, "destinationFamily":I
    if-ne v5, v6, :cond_9

    .line 1547
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v7

    if-eqz v7, :cond_6

    sget v7, Landroid/system/OsConstants;->AF_INET:I

    if-ne v5, v7, :cond_5

    goto :goto_2

    .line 1548
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v7, "UDP Encapsulation is not supported for this address family"

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1552
    :cond_6
    :goto_2
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v7

    if-eqz v7, :cond_8

    if-ne v7, v2, :cond_7

    .line 1556
    goto :goto_3

    .line 1558
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid IpSecTransform.mode: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1559
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1554
    :cond_8
    nop

    .line 1562
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/IpSecConfig;->setMarkValue(I)V

    .line 1563
    invoke-virtual {p1, v2}, Landroid/net/IpSecConfig;->setMarkMask(I)V

    .line 1564
    return-void

    .line 1538
    :cond_9
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Source address ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") and destination address ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ") have different address families."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1521
    .end local v3    # "sourceAddress":Ljava/lang/String;
    .end local v4    # "destinationAddress":Ljava/lang/String;
    .end local v5    # "sourceFamily":I
    .end local v6    # "destinationFamily":I
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Mismatched remote addresseses."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1511
    :cond_b
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "SPI already in use; cannot be used in new Transforms"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private connectNativeNetdService()V
    .locals 1

    .line 1055
    new-instance v0, Lcom/android/server/IpSecService$1;

    invoke-direct {v0, p0}, Lcom/android/server/IpSecService$1;-><init>(Lcom/android/server/IpSecService;)V

    .line 1062
    invoke-virtual {v0}, Lcom/android/server/IpSecService$1;->start()V

    .line 1063
    return-void
.end method

.method static create(Landroid/content/Context;Landroid/os/INetworkManagementService;)Lcom/android/server/IpSecService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkManager"    # Landroid/os/INetworkManagementService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1005
    new-instance v0, Lcom/android/server/IpSecService;

    invoke-direct {v0, p0, p1}, Lcom/android/server/IpSecService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;)V

    .line 1006
    .local v0, "service":Lcom/android/server/IpSecService;
    invoke-direct {v0}, Lcom/android/server/IpSecService;->connectNativeNetdService()V

    .line 1007
    return-object v0
.end method

.method private createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    .locals 29
    .param p1, "c"    # Landroid/net/IpSecConfig;
    .param p2, "resourceId"    # I
    .param p3, "spiRecord"    # Lcom/android/server/IpSecService$SpiRecord;
    .param p4, "socketRecord"    # Lcom/android/server/IpSecService$EncapSocketRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1591
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v22

    .local v22, "encapType":I
    const/4 v0, 0x0

    .local v0, "encapLocalPort":I
    const/4 v1, 0x0

    .line 1592
    .local v1, "encapRemotePort":I
    if-eqz v22, :cond_0

    .line 1593
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/IpSecService$EncapSocketRecord;->getPort()I

    move-result v0

    .line 1594
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapRemotePort()I

    move-result v1

    move/from16 v23, v0

    move/from16 v24, v1

    goto :goto_0

    .line 1592
    :cond_0
    move/from16 v23, v0

    move/from16 v24, v1

    .line 1597
    .end local v0    # "encapLocalPort":I
    .end local v1    # "encapRemotePort":I
    .local v23, "encapLocalPort":I
    .local v24, "encapRemotePort":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthentication()Landroid/net/IpSecAlgorithm;

    move-result-object v25

    .line 1598
    .local v25, "auth":Landroid/net/IpSecAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v26

    .line 1599
    .local v26, "crypt":Landroid/net/IpSecAlgorithm;
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v27

    .line 1602
    .local v27, "authCrypt":Landroid/net/IpSecAlgorithm;
    const-string v0, ""

    if-nez v26, :cond_2

    .line 1603
    if-nez v27, :cond_1

    const-string v1, "ecb(cipher_null)"

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    move-object/from16 v28, v1

    .local v1, "cryptName":Ljava/lang/String;
    goto :goto_2

    .line 1605
    .end local v1    # "cryptName":Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v26 .. v26}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    .line 1608
    .local v28, "cryptName":Ljava/lang/String;
    :goto_2
    move-object/from16 v15, p0

    iget-object v1, v15, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1609
    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    .line 1611
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1612
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v3

    .line 1613
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v4

    .line 1614
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v5

    .line 1615
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getNetwork()Landroid/net/Network;

    move-result-object v6

    iget v6, v6, Landroid/net/Network;->netId:I

    goto :goto_3

    :cond_3
    move v6, v7

    .line 1616
    :goto_3
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v8

    .line 1617
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkValue()I

    move-result v9

    .line 1618
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMarkMask()I

    move-result v10

    .line 1619
    if-eqz v25, :cond_4

    invoke-virtual/range {v25 .. v25}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v11

    goto :goto_4

    :cond_4
    move-object v11, v0

    .line 1620
    :goto_4
    if-eqz v25, :cond_5

    invoke-virtual/range {v25 .. v25}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v12

    goto :goto_5

    :cond_5
    new-array v12, v7, [B

    .line 1621
    :goto_5
    if-eqz v25, :cond_6

    invoke-virtual/range {v25 .. v25}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v13

    goto :goto_6

    :cond_6
    move v13, v7

    .line 1623
    :goto_6
    if-eqz v26, :cond_7

    invoke-virtual/range {v26 .. v26}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v14

    goto :goto_7

    :cond_7
    new-array v14, v7, [B

    .line 1624
    :goto_7
    if-eqz v26, :cond_8

    invoke-virtual/range {v26 .. v26}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v16

    goto :goto_8

    :cond_8
    move/from16 v16, v7

    .line 1625
    :goto_8
    if-eqz v27, :cond_9

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_9
    move-object/from16 v17, v0

    .line 1626
    if-eqz v27, :cond_a

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getKey()[B

    move-result-object v0

    goto :goto_9

    :cond_a
    new-array v0, v7, [B

    :goto_9
    move-object/from16 v18, v0

    .line 1627
    if-eqz v27, :cond_b

    invoke-virtual/range {v27 .. v27}, Landroid/net/IpSecAlgorithm;->getTruncationLengthBits()I

    move-result v0

    move/from16 v19, v0

    goto :goto_a

    :cond_b
    move/from16 v19, v7

    .line 1631
    :goto_a
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getXfrmInterfaceId()I

    move-result v21

    .line 1610
    move-object v0, v1

    move v1, v2

    move v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move v6, v8

    move v7, v9

    move v8, v10

    move-object v9, v11

    move-object v10, v12

    move v11, v13

    move-object/from16 v12, v28

    move-object v13, v14

    move/from16 v14, v16

    move-object/from16 v15, v17

    move-object/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v22

    move/from16 v19, v23

    move/from16 v20, v24

    invoke-interface/range {v0 .. v21}, Landroid/net/INetd;->ipSecAddSecurityAssociation(IILjava/lang/String;Ljava/lang/String;IIIILjava/lang/String;[BILjava/lang/String;[BILjava/lang/String;[BIIIII)V

    .line 1632
    return-void
.end method

.method private enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 1569
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.ipsec_tunnels"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1574
    const-string v0, "Null calling package cannot create IpSec tunnels"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1579
    invoke-direct {p0}, Lcom/android/server/IpSecService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    .line 1580
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1579
    const-string v2, "android:manage_ipsec_tunnels"

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 1581
    return-void

    .line 1583
    :cond_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_IPSEC_TUNNELS"

    const-string v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    return-void

    .line 1570
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IPsec Tunnel Mode requires PackageManager.FEATURE_IPSEC_TUNNELS"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 3

    .line 1012
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 1013
    .local v0, "appOps":Landroid/app/AppOpsManager;
    if-eqz v0, :cond_0

    .line 1014
    return-object v0

    .line 1013
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "System Server couldn\'t get AppOps"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getFamily(Ljava/lang/String;)I
    .locals 3
    .param p1, "inetAddress"    # Ljava/lang/String;

    .line 1469
    sget v0, Landroid/system/OsConstants;->AF_UNSPEC:I

    .line 1470
    .local v0, "family":I
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 1471
    .local v1, "checkAddress":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    .line 1472
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    goto :goto_0

    .line 1473
    :cond_0
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    .line 1474
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    .line 1476
    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic lambda$new$0(Ljava/io/FileDescriptor;I)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1027
    :try_start_0
    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsUid(I)V

    .line 1028
    invoke-static {p0}, Landroid/net/TrafficStats;->tagFileDescriptor(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1030
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 1031
    nop

    .line 1032
    return-void

    .line 1030
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsUid()V

    .line 1031
    throw v0
.end method

.method private releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    .locals 1
    .param p1, "resArray"    # Lcom/android/server/IpSecService$RefcountedResourceArray;
    .param p2, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1154
    invoke-virtual {p1, p2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$RefcountedResource;->userRelease()V

    .line 1155
    return-void
.end method


# virtual methods
.method public declared-synchronized addAddressToTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .locals 6
    .param p1, "tunnelResourceId"    # I
    .param p2, "localAddr"    # Landroid/net/LinkAddress;
    .param p3, "callingPackage"    # Ljava/lang/String;

    monitor-enter p0

    .line 1381
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1386
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1387
    invoke-virtual {v1, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    .local v1, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1393
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 1395
    invoke-static {v1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$200(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object v3

    .line 1396
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1397
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    .line 1394
    invoke-interface {v2, v3, v4, v5}, Landroid/net/INetd;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1400
    nop

    .line 1401
    monitor-exit p0

    return-void

    .line 1398
    .end local p0    # "this":Lcom/android/server/IpSecService;
    :catch_0
    move-exception v2

    .line 1399
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1380
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v1    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local p1    # "tunnelResourceId":I
    .end local p2    # "localAddr":Landroid/net/LinkAddress;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized allocateSecurityParameterIndex(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;
    .locals 16
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "requestedSpi"    # I
    .param p3, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move/from16 v8, p2

    move-object/from16 v9, p3

    monitor-enter p0

    .line 1110
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1112
    if-lez v8, :cond_1

    const/16 v0, 0x100

    if-lt v8, v0, :cond_0

    goto :goto_0

    .line 1113
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ESP SPI must not be in the range of 0-255."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1115
    .end local p0    # "this":Lcom/android/server/IpSecService;
    :cond_1
    :goto_0
    const-string v0, "Null Binder passed to allocateSecurityParameterIndex"

    invoke-static {v9, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1117
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v10, v0

    .line 1118
    .local v10, "callingUid":I
    iget-object v0, v7, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v0, v10}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v11, v0

    .line 1119
    .local v11, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget v0, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, v7, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v12, v0

    .line 1121
    .local v12, "resourceId":I
    const/4 v1, 0x0

    .line 1123
    .local v1, "spi":I
    const/4 v13, -0x1

    :try_start_1
    iget-object v0, v11, Lcom/android/server/IpSecService$UserRecord;->mSpiQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1124
    new-instance v0, Landroid/net/IpSecSpiResponse;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v13, v1}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1128
    :cond_2
    :try_start_2
    iget-object v0, v7, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1130
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    const-string v2, ""
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1131
    move-object/from16 v14, p1

    :try_start_3
    invoke-interface {v0, v10, v2, v14, v8}, Landroid/net/INetd;->ipSecAllocateSpi(ILjava/lang/String;Ljava/lang/String;I)I

    move-result v0
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v15, v0

    .line 1132
    .end local v1    # "spi":I
    .local v15, "spi":I
    :try_start_4
    const-string v0, "IpSecService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Allocated SPI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, v11, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v6, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v5, Lcom/android/server/IpSecService$SpiRecord;

    const-string v4, ""

    move-object v1, v5

    move-object/from16 v2, p0

    move v3, v12

    move-object v13, v5

    move-object/from16 v5, p1

    move-object v8, v6

    move v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/IpSecService$SpiRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v8, v7, v13, v9, v2}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v0, v12, v8}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1145
    nop

    .line 1146
    :try_start_5
    new-instance v0, Landroid/net/IpSecSpiResponse;

    invoke-direct {v0, v1, v12, v15}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1143
    :catch_0
    move-exception v0

    move v1, v15

    goto :goto_1

    .line 1137
    :catch_1
    move-exception v0

    move v1, v15

    goto :goto_2

    .line 1143
    .end local v15    # "spi":I
    .restart local v1    # "spi":I
    :catch_2
    move-exception v0

    goto :goto_1

    .line 1137
    :catch_3
    move-exception v0

    goto :goto_2

    .line 1143
    :catch_4
    move-exception v0

    move-object/from16 v14, p1

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    :goto_1
    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1137
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_5
    move-exception v0

    move-object/from16 v14, p1

    .line 1138
    .local v0, "e":Landroid/os/ServiceSpecificException;
    :goto_2
    iget v2, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v3, Landroid/system/OsConstants;->ENOENT:I

    if-ne v2, v3, :cond_3

    .line 1139
    new-instance v2, Landroid/net/IpSecSpiResponse;

    const/4 v3, 0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4, v1}, Landroid/net/IpSecSpiResponse;-><init>(III)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v2

    .line 1142
    :cond_3
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1109
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v1    # "spi":I
    .end local v10    # "callingUid":I
    .end local v11    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v12    # "resourceId":I
    .end local p1    # "destinationAddress":Ljava/lang/String;
    .end local p2    # "requestedSpi":I
    .end local p3    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;II)V
    .locals 11
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "direction"    # I
    .param p3, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1703
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1704
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    move-object v8, v1

    .line 1705
    .local v8, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    invoke-static {p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    .line 1707
    iget-object v1, v8, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-virtual {v1, p3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TransformRecord;

    move-object v9, v1

    .line 1710
    .local v9, "info":Lcom/android/server/IpSecService$TransformRecord;
    iget v1, v9, Lcom/android/server/IpSecService$TransformRecord;->pid:I

    invoke-static {}, Lcom/android/server/IpSecService;->getCallingPid()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget v1, v9, Lcom/android/server/IpSecService$TransformRecord;->uid:I

    if-ne v1, v0, :cond_1

    .line 1715
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v1

    move-object v10, v1

    .line 1716
    .local v10, "c":Landroid/net/IpSecConfig;
    nop

    .line 1717
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getMode()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Transform mode was not Transport mode; cannot be applied to a socket"

    .line 1716
    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1720
    iget-object v1, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1721
    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1

    .line 1726
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v5

    .line 1727
    invoke-virtual {v10}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v6

    .line 1728
    invoke-virtual {v9}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v7

    .line 1722
    move-object v2, p1

    move v3, v0

    move v4, p2

    invoke-interface/range {v1 .. v7}, Landroid/net/INetd;->ipSecApplyTransportModeTransform(Landroid/os/ParcelFileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1729
    monitor-exit p0

    return-void

    .line 1711
    .end local v10    # "c":Landroid/net/IpSecConfig;
    .end local p0    # "this":Lcom/android/server/IpSecService;
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only the owner of an IpSec Transform may apply it!"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1702
    .end local v0    # "callingUid":I
    .end local v8    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v9    # "info":Lcom/android/server/IpSecService$TransformRecord;
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    .end local p2    # "direction":I
    .end local p3    # "resourceId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyTunnelModeTransform(IIILjava/lang/String;)V
    .locals 27
    .param p1, "tunnelResourceId"    # I
    .param p2, "direction"    # I
    .param p3, "transformResourceId"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v12, p2

    move/from16 v13, p3

    monitor-enter p0

    .line 1753
    move-object/from16 v14, p4

    :try_start_0
    invoke-direct {v1, v14}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1754
    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkDirection(I)V

    .line 1756
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v15, v0

    .line 1757
    .local v15, "callingUid":I
    iget-object v0, v1, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v0, v15}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v11, v0

    .line 1760
    .local v11, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v0, v11, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1761
    invoke-virtual {v0, v13}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$TransformRecord;

    move-object/from16 v16, v0

    .line 1765
    .local v16, "transformInfo":Lcom/android/server/IpSecService$TransformRecord;
    iget-object v0, v11, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1766
    move/from16 v10, p1

    invoke-virtual {v0, v10}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v0

    check-cast v0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;

    move-object/from16 v17, v0

    .line 1769
    .local v17, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v0

    move-object v8, v0

    .line 1770
    .local v8, "c":Landroid/net/IpSecConfig;
    nop

    .line 1771
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getMode()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v4, "Transform mode was not Tunnel mode; cannot be applied to a tunnel interface"

    .line 1770
    invoke-static {v0, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1774
    const/4 v0, 0x0

    .line 1775
    .local v0, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v4

    if-eqz v4, :cond_1

    .line 1776
    iget-object v4, v11, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1777
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v4

    check-cast v4, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v0, v4

    move-object v7, v0

    goto :goto_1

    .line 1775
    .end local p0    # "this":Lcom/android/server/IpSecService;
    :cond_1
    move-object v7, v0

    .line 1779
    .end local v0    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v7, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/IpSecService$TransformRecord;->getSpiRecord()Lcom/android/server/IpSecService$SpiRecord;

    move-result-object v0

    move-object v6, v0

    .line 1782
    .local v6, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    if-ne v12, v3, :cond_2

    .line 1783
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getOkey()I

    move-result v0

    move v9, v0

    goto :goto_2

    .line 1784
    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getIkey()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v9, v0

    :goto_2
    nop

    .line 1789
    .local v9, "mark":I
    const/4 v0, 0x0

    .line 1790
    .local v0, "spi":I
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getIfId()I

    move-result v4

    invoke-virtual {v8, v4}, Landroid/net/IpSecConfig;->setXfrmInterfaceId(I)V
    :try_end_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1806
    if-ne v12, v3, :cond_3

    .line 1808
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUnderlyingNetwork()Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v8, v3}, Landroid/net/IpSecConfig;->setNetwork(Landroid/net/Network;)V

    .line 1812
    invoke-virtual {v6}, Lcom/android/server/IpSecService$SpiRecord;->getSpi()I

    move-result v3
    :try_end_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v0, v3

    goto :goto_3

    .line 1833
    .end local v0    # "spi":I
    :catch_0
    move-exception v0

    move-object v2, v6

    move-object v3, v7

    move-object v12, v8

    move-object/from16 v19, v11

    goto/16 :goto_5

    .line 1816
    .restart local v0    # "spi":I
    :cond_3
    :goto_3
    :try_start_3
    sget-object v5, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    array-length v3, v5
    :try_end_3
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    if-ge v2, v3, :cond_4

    :try_start_4
    aget v4, v5, v2

    .line 1817
    .local v4, "selAddrFamily":I
    move/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1818
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 1823
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/net/IpSecConfig;->getSourceAddress()Ljava/lang/String;

    move-result-object v19

    .line 1824
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/IpSecService$TransformRecord;->getConfig()Landroid/net/IpSecConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/net/IpSecConfig;->getDestinationAddress()Ljava/lang/String;

    move-result-object v20

    const/16 v21, -0x1

    .line 1828
    invoke-virtual {v8}, Landroid/net/IpSecConfig;->getXfrmInterfaceId()I

    move-result v22
    :try_end_4
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1819
    move/from16 v23, v3

    move v3, v15

    move-object/from16 v24, v5

    move/from16 v5, p2

    move-object/from16 v25, v6

    .end local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .local v25, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    move-object/from16 v6, v19

    move-object/from16 v26, v7

    .end local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v26, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    move-object/from16 v7, v20

    move-object v12, v8

    .end local v8    # "c":Landroid/net/IpSecConfig;
    .local v12, "c":Landroid/net/IpSecConfig;
    move v8, v0

    move/from16 v10, v21

    move-object/from16 v19, v11

    .end local v11    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v19, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    move/from16 v11, v22

    :try_start_5
    invoke-interface/range {v2 .. v11}, Landroid/net/INetd;->ipSecUpdateSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1816
    .end local v4    # "selAddrFamily":I
    add-int/lit8 v2, v18, 0x1

    move/from16 v10, p1

    move-object v8, v12

    move-object/from16 v11, v19

    move/from16 v3, v23

    move-object/from16 v5, v24

    move-object/from16 v6, v25

    move-object/from16 v7, v26

    move/from16 v12, p2

    goto :goto_4

    .line 1833
    .end local v0    # "spi":I
    :catch_1
    move-exception v0

    move-object/from16 v2, v25

    move-object/from16 v3, v26

    goto :goto_5

    .end local v12    # "c":Landroid/net/IpSecConfig;
    .end local v19    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v25    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v26    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v8    # "c":Landroid/net/IpSecConfig;
    .restart local v11    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :catch_2
    move-exception v0

    move-object v12, v8

    move-object/from16 v19, v11

    move-object v2, v6

    move-object v3, v7

    .end local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v8    # "c":Landroid/net/IpSecConfig;
    .end local v11    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v12    # "c":Landroid/net/IpSecConfig;
    .restart local v19    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v25    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v26    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    goto :goto_5

    .line 1832
    .end local v12    # "c":Landroid/net/IpSecConfig;
    .end local v19    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v25    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v26    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v0    # "spi":I
    .restart local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v8    # "c":Landroid/net/IpSecConfig;
    .restart local v11    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :cond_4
    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object v12, v8

    move-object/from16 v19, v11

    .end local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v8    # "c":Landroid/net/IpSecConfig;
    .end local v11    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v12    # "c":Landroid/net/IpSecConfig;
    .restart local v19    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v25    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v26    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    move-object/from16 v2, v25

    move-object/from16 v3, v26

    .end local v25    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v26    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v2, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .local v3, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :try_start_6
    invoke-direct {v1, v12, v13, v2, v3}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V
    :try_end_6
    .catch Landroid/os/ServiceSpecificException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1839
    .end local v0    # "spi":I
    nop

    .line 1840
    monitor-exit p0

    return-void

    .line 1833
    :catch_3
    move-exception v0

    goto :goto_5

    .end local v2    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v3    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v12    # "c":Landroid/net/IpSecConfig;
    .end local v19    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v8    # "c":Landroid/net/IpSecConfig;
    .restart local v11    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :catch_4
    move-exception v0

    move-object v2, v6

    move-object v3, v7

    move-object v12, v8

    move-object/from16 v19, v11

    .line 1834
    .end local v6    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v7    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v8    # "c":Landroid/net/IpSecConfig;
    .end local v11    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v0, "e":Landroid/os/ServiceSpecificException;
    .restart local v2    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .restart local v3    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .restart local v12    # "c":Landroid/net/IpSecConfig;
    .restart local v19    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    :goto_5
    :try_start_7
    iget v4, v0, Landroid/os/ServiceSpecificException;->errorCode:I

    sget v5, Landroid/system/OsConstants;->EINVAL:I

    if-ne v4, v5, :cond_5

    .line 1835
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1837
    :cond_5
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1752
    .end local v0    # "e":Landroid/os/ServiceSpecificException;
    .end local v2    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v3    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v9    # "mark":I
    .end local v12    # "c":Landroid/net/IpSecConfig;
    .end local v15    # "callingUid":I
    .end local v16    # "transformInfo":Lcom/android/server/IpSecService$TransformRecord;
    .end local v17    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v19    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p1    # "tunnelResourceId":I
    .end local p2    # "direction":I
    .end local p3    # "transformResourceId":I
    .end local p4    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeUdpEncapsulationSocket(I)V
    .locals 2
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1278
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1279
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1280
    monitor-exit p0

    return-void

    .line 1277
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p0    # "this":Lcom/android/server/IpSecService;
    .end local p1    # "resourceId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized createTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTransformResponse;
    .locals 18
    .param p1, "c"    # Landroid/net/IpSecConfig;
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1643
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1645
    move-object/from16 v8, p3

    invoke-direct {v7, v8}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    goto :goto_0

    .line 1644
    .end local p0    # "this":Lcom/android/server/IpSecService;
    :cond_0
    move-object/from16 v8, p3

    .line 1647
    :goto_0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/IpSecService;->checkIpSecConfig(Landroid/net/IpSecConfig;)V

    .line 1648
    const-string v1, "Null Binder passed to createTransform"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1649
    iget v1, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v1, 0x1

    iput v3, v7, Lcom/android/server/IpSecService;->mNextResourceId:I

    move v9, v1

    .line 1651
    .local v9, "resourceId":I
    iget-object v1, v7, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    move-object v10, v1

    .line 1652
    .local v10, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    .line 1654
    .local v11, "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/IpSecService$RefcountedResource;>;"
    iget-object v1, v10, Lcom/android/server/IpSecService$UserRecord;->mTransformQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v1}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1655
    new-instance v1, Landroid/net/IpSecTransformResponse;

    invoke-direct {v1, v2}, Landroid/net/IpSecTransformResponse;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1658
    :cond_1
    const/4 v1, 0x0

    .line 1659
    .local v1, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapType()I

    move-result v2

    if-eqz v2, :cond_2

    .line 1660
    iget-object v2, v10, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1662
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getEncapSocketResourceId()I

    move-result v3

    .line 1661
    invoke-virtual {v2, v3}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v2

    .line 1663
    .local v2, "refcountedSocketRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$EncapSocketRecord;>;"
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1664
    invoke-virtual {v2}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v3

    check-cast v3, Lcom/android/server/IpSecService$EncapSocketRecord;

    move-object v1, v3

    move-object v12, v1

    goto :goto_1

    .line 1659
    .end local v2    # "refcountedSocketRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$EncapSocketRecord;>;"
    :cond_2
    move-object v12, v1

    .line 1667
    .end local v1    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .local v12, "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    :goto_1
    iget-object v1, v10, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1668
    invoke-virtual/range {p1 .. p1}, Landroid/net/IpSecConfig;->getSpiResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getRefcountedResourceOrThrow(I)Lcom/android/server/IpSecService$RefcountedResource;

    move-result-object v1

    move-object v13, v1

    .line 1669
    .local v13, "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1670
    invoke-virtual {v13}, Lcom/android/server/IpSecService$RefcountedResource;->getResource()Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$SpiRecord;

    move-object v14, v1

    .line 1672
    .local v14, "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    move-object/from16 v15, p1

    invoke-direct {v7, v15, v9, v14, v12}, Lcom/android/server/IpSecService;->createOrUpdateTransform(Landroid/net/IpSecConfig;ILcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    .line 1675
    iget-object v6, v10, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v5, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v4, Lcom/android/server/IpSecService$TransformRecord;

    move-object v1, v4

    move-object/from16 v2, p0

    move v3, v9

    move-object v8, v4

    move-object/from16 v4, p1

    move-object/from16 v16, v10

    move-object v10, v5

    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v16, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    move-object v5, v14

    move-object/from16 v17, v13

    move-object v13, v6

    .end local v13    # "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    .local v17, "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    move-object v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/server/IpSecService$TransformRecord;-><init>(Lcom/android/server/IpSecService;ILandroid/net/IpSecConfig;Lcom/android/server/IpSecService$SpiRecord;Lcom/android/server/IpSecService$EncapSocketRecord;)V

    .line 1680
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-interface {v11, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v10, v7, v8, v0, v1}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    .line 1675
    invoke-virtual {v13, v9, v10}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1681
    new-instance v1, Landroid/net/IpSecTransformResponse;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v9}, Landroid/net/IpSecTransformResponse;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    .line 1642
    .end local v9    # "resourceId":I
    .end local v11    # "dependencies":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/IpSecService$RefcountedResource;>;"
    .end local v12    # "socketRecord":Lcom/android/server/IpSecService$EncapSocketRecord;
    .end local v14    # "spiRecord":Lcom/android/server/IpSecService$SpiRecord;
    .end local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v17    # "refcountedSpiRecord":Lcom/android/server/IpSecService$RefcountedResource;, "Lcom/android/server/IpSecService$RefcountedResource<Lcom/android/server/IpSecService$SpiRecord;>;"
    .end local p1    # "c":Landroid/net/IpSecConfig;
    .end local p2    # "binder":Landroid/os/IBinder;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTunnelInterface(Ljava/lang/String;Ljava/lang/String;Landroid/net/Network;Landroid/os/IBinder;Ljava/lang/String;)Landroid/net/IpSecTunnelInterfaceResponse;
    .locals 33
    .param p1, "localAddr"    # Ljava/lang/String;
    .param p2, "remoteAddr"    # Ljava/lang/String;
    .param p3, "underlyingNetwork"    # Landroid/net/Network;
    .param p4, "binder"    # Landroid/os/IBinder;
    .param p5, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    monitor-enter p0

    .line 1291
    move-object/from16 v13, p5

    :try_start_0
    invoke-direct {v11, v13}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1292
    const-string v0, "Null Binder passed to createTunnelInterface"

    invoke-static {v12, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1293
    const-string v0, "No underlying network was specified"

    move-object/from16 v14, p3

    invoke-static {v14, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1294
    invoke-static/range {p1 .. p1}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1295
    invoke-static/range {p2 .. p2}, Lcom/android/server/IpSecService;->checkInetAddress(Ljava/lang/String;)V

    .line 1300
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move v15, v0

    .line 1301
    .local v15, "callerUid":I
    iget-object v0, v11, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v0, v15}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    move-object v10, v0

    .line 1302
    .local v10, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v0, v10, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1303
    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse;

    invoke-direct {v0, v1}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    monitor-exit p0

    return-object v0

    .line 1306
    .end local p0    # "this":Lcom/android/server/IpSecService;
    :cond_0
    :try_start_1
    iget v0, v11, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v11, Lcom/android/server/IpSecService;->mNextResourceId:I

    move v9, v0

    .line 1307
    .local v9, "resourceId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v0

    move v8, v0

    .line 1308
    .local v8, "ikey":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/IpSecService;->reserveNetId()I

    move-result v0

    move v7, v0

    .line 1309
    .local v7, "okey":I
    const-string v0, "%s%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "ipsec"

    const/4 v6, 0x0

    aput-object v3, v2, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    move-object v5, v0

    .line 1316
    .local v5, "intfName":Ljava/lang/String;
    :try_start_2
    iget-object v0, v11, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    :try_start_3
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v25

    .line 1317
    .local v25, "netd":Landroid/net/INetd;
    move-object/from16 v26, v5

    move-object/from16 v27, p1

    move-object/from16 v28, p2

    move/from16 v29, v8

    move/from16 v30, v7

    move/from16 v31, v9

    invoke-interface/range {v25 .. v31}, Landroid/net/INetd;->ipSecAddTunnelInterface(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 1319
    :try_start_4
    new-instance v0, Lcom/android/server/-$$Lambda$IpSecService$fEohV8w-aKy2H7Pc5nplFrk1PZs;

    invoke-direct {v0, v11, v5}, Lcom/android/server/-$$Lambda$IpSecService$fEohV8w-aKy2H7Pc5nplFrk1PZs;-><init>(Lcom/android/server/IpSecService;Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    :try_start_5
    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1323
    sget-object v0, Lcom/android/server/IpSecService;->ADDRESS_FAMILIES:[I

    array-length v4, v0
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    move v2, v6

    :goto_0
    if-ge v2, v4, :cond_1

    :try_start_6
    aget v3, v0, v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1325
    .local v3, "selAddrFamily":I
    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v1, v25

    move/from16 v26, v2

    move v2, v15

    move/from16 v27, v4

    move/from16 v4, v16

    move-object/from16 v28, v5

    .end local v5    # "intfName":Ljava/lang/String;
    .local v28, "intfName":Ljava/lang/String;
    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v29, v7

    .end local v7    # "okey":I
    .local v29, "okey":I
    move/from16 v7, v17

    move/from16 v30, v8

    .end local v8    # "ikey":I
    .local v30, "ikey":I
    move/from16 v8, v29

    move/from16 v31, v9

    .end local v9    # "resourceId":I
    .local v31, "resourceId":I
    move/from16 v9, v18

    move-object v13, v10

    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v13, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    move/from16 v10, v31

    :try_start_7
    invoke-interface/range {v1 .. v10}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1335
    const/16 v18, 0x0

    const/16 v21, 0x0

    const/16 v23, -0x1

    move/from16 v32, v15

    .end local v15    # "callerUid":I
    .local v32, "callerUid":I
    move-object/from16 v15, v25

    move/from16 v16, v32

    move/from16 v17, v3

    move-object/from16 v19, p2

    move-object/from16 v20, p1

    move/from16 v22, v30

    move/from16 v24, v31

    :try_start_8
    invoke-interface/range {v15 .. v24}, Landroid/net/INetd;->ipSecAddSecurityPolicy(IIILjava/lang/String;Ljava/lang/String;IIII)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1323
    .end local v3    # "selAddrFamily":I
    add-int/lit8 v2, v26, 0x1

    move-object v10, v13

    move/from16 v4, v27

    move-object/from16 v5, v28

    move/from16 v7, v29

    move/from16 v8, v30

    move/from16 v9, v31

    move/from16 v15, v32

    const/4 v6, 0x0

    move-object/from16 v13, p5

    goto :goto_0

    .line 1366
    .end local v25    # "netd":Landroid/net/INetd;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v2, v31

    goto/16 :goto_2

    .line 1361
    :catch_0
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v4, v29

    move/from16 v1, v30

    move/from16 v2, v31

    goto/16 :goto_3

    .line 1366
    .end local v32    # "callerUid":I
    .restart local v15    # "callerUid":I
    :catchall_1
    move-exception v0

    move/from16 v32, v15

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v2, v31

    .end local v15    # "callerUid":I
    .restart local v32    # "callerUid":I
    goto/16 :goto_2

    .line 1361
    .end local v32    # "callerUid":I
    .restart local v15    # "callerUid":I
    :catch_1
    move-exception v0

    move/from16 v32, v15

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v4, v29

    move/from16 v1, v30

    move/from16 v2, v31

    .end local v15    # "callerUid":I
    .restart local v32    # "callerUid":I
    goto/16 :goto_3

    .line 1366
    .end local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28    # "intfName":Ljava/lang/String;
    .end local v29    # "okey":I
    .end local v30    # "ikey":I
    .end local v31    # "resourceId":I
    .end local v32    # "callerUid":I
    .restart local v5    # "intfName":Ljava/lang/String;
    .restart local v7    # "okey":I
    .restart local v8    # "ikey":I
    .restart local v9    # "resourceId":I
    .restart local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15    # "callerUid":I
    :catchall_2
    move-exception v0

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v32, v15

    move-object v3, v5

    move v2, v9

    move-object/from16 v16, v10

    .end local v5    # "intfName":Ljava/lang/String;
    .end local v7    # "okey":I
    .end local v8    # "ikey":I
    .end local v9    # "resourceId":I
    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15    # "callerUid":I
    .restart local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28    # "intfName":Ljava/lang/String;
    .restart local v29    # "okey":I
    .restart local v30    # "ikey":I
    .restart local v31    # "resourceId":I
    .restart local v32    # "callerUid":I
    goto/16 :goto_2

    .line 1361
    .end local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28    # "intfName":Ljava/lang/String;
    .end local v29    # "okey":I
    .end local v30    # "ikey":I
    .end local v31    # "resourceId":I
    .end local v32    # "callerUid":I
    .restart local v5    # "intfName":Ljava/lang/String;
    .restart local v7    # "okey":I
    .restart local v8    # "ikey":I
    .restart local v9    # "resourceId":I
    .restart local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15    # "callerUid":I
    :catch_2
    move-exception v0

    move/from16 v32, v15

    move-object v3, v5

    move v4, v7

    move v1, v8

    move v2, v9

    move-object/from16 v16, v10

    .end local v5    # "intfName":Ljava/lang/String;
    .end local v7    # "okey":I
    .end local v8    # "ikey":I
    .end local v9    # "resourceId":I
    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15    # "callerUid":I
    .restart local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28    # "intfName":Ljava/lang/String;
    .restart local v29    # "okey":I
    .restart local v30    # "ikey":I
    .restart local v31    # "resourceId":I
    .restart local v32    # "callerUid":I
    goto/16 :goto_3

    .line 1347
    .end local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28    # "intfName":Ljava/lang/String;
    .end local v29    # "okey":I
    .end local v30    # "ikey":I
    .end local v31    # "resourceId":I
    .end local v32    # "callerUid":I
    .restart local v5    # "intfName":Ljava/lang/String;
    .restart local v7    # "okey":I
    .restart local v8    # "ikey":I
    .restart local v9    # "resourceId":I
    .restart local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15    # "callerUid":I
    .restart local v25    # "netd":Landroid/net/INetd;
    :cond_1
    move-object/from16 v28, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move/from16 v31, v9

    move-object v13, v10

    move/from16 v32, v15

    .end local v5    # "intfName":Ljava/lang/String;
    .end local v7    # "okey":I
    .end local v8    # "ikey":I
    .end local v9    # "resourceId":I
    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15    # "callerUid":I
    .restart local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28    # "intfName":Ljava/lang/String;
    .restart local v29    # "okey":I
    .restart local v30    # "ikey":I
    .restart local v31    # "resourceId":I
    .restart local v32    # "callerUid":I
    :try_start_9
    iget-object v0, v13, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v15, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v10, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    move-object v1, v10

    move-object/from16 v2, p0

    move/from16 v3, v31

    move-object/from16 v4, v28

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move/from16 v8, v30

    move/from16 v9, v29

    move-object/from16 v16, v13

    move-object v13, v10

    .end local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .local v16, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    move/from16 v10, v31

    :try_start_a
    invoke-direct/range {v1 .. v10}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;-><init>(Lcom/android/server/IpSecService;ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;III)V

    const/4 v1, 0x0

    new-array v2, v1, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v15, v11, v13, v12, v2}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move/from16 v2, v31

    .end local v31    # "resourceId":I
    .local v2, "resourceId":I
    :try_start_b
    invoke-virtual {v0, v2, v15}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1360
    new-instance v0, Landroid/net/IpSecTunnelInterfaceResponse;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object/from16 v3, v28

    .end local v28    # "intfName":Ljava/lang/String;
    .local v3, "intfName":Ljava/lang/String;
    :try_start_c
    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecTunnelInterfaceResponse;-><init>(IILjava/lang/String;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    monitor-exit p0

    return-object v0

    .line 1366
    .end local v25    # "netd":Landroid/net/INetd;
    .restart local p0    # "this":Lcom/android/server/IpSecService;
    :catchall_3
    move-exception v0

    goto/16 :goto_2

    .line 1361
    :catch_3
    move-exception v0

    goto :goto_1

    .line 1366
    .end local v3    # "intfName":Ljava/lang/String;
    .restart local v28    # "intfName":Ljava/lang/String;
    :catchall_4
    move-exception v0

    move-object/from16 v3, v28

    .end local v28    # "intfName":Ljava/lang/String;
    .restart local v3    # "intfName":Ljava/lang/String;
    goto/16 :goto_2

    .line 1361
    .end local v3    # "intfName":Ljava/lang/String;
    .restart local v28    # "intfName":Ljava/lang/String;
    :catch_4
    move-exception v0

    move-object/from16 v3, v28

    move/from16 v4, v29

    move/from16 v1, v30

    .end local v28    # "intfName":Ljava/lang/String;
    .restart local v3    # "intfName":Ljava/lang/String;
    goto/16 :goto_3

    .line 1366
    .end local v2    # "resourceId":I
    .end local v3    # "intfName":Ljava/lang/String;
    .restart local v28    # "intfName":Ljava/lang/String;
    .restart local v31    # "resourceId":I
    :catchall_5
    move-exception v0

    move-object/from16 v3, v28

    move/from16 v2, v31

    .end local v28    # "intfName":Ljava/lang/String;
    .end local v31    # "resourceId":I
    .restart local v2    # "resourceId":I
    .restart local v3    # "intfName":Ljava/lang/String;
    goto :goto_2

    .line 1361
    .end local v2    # "resourceId":I
    .end local v3    # "intfName":Ljava/lang/String;
    .restart local v28    # "intfName":Ljava/lang/String;
    .restart local v31    # "resourceId":I
    :catch_5
    move-exception v0

    move-object/from16 v3, v28

    move/from16 v2, v31

    move/from16 v4, v29

    move/from16 v1, v30

    .end local v28    # "intfName":Ljava/lang/String;
    .end local v31    # "resourceId":I
    .restart local v2    # "resourceId":I
    .restart local v3    # "intfName":Ljava/lang/String;
    goto/16 :goto_3

    .line 1366
    .end local v2    # "resourceId":I
    .end local v3    # "intfName":Ljava/lang/String;
    .end local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28    # "intfName":Ljava/lang/String;
    .restart local v31    # "resourceId":I
    :catchall_6
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v2, v31

    .end local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28    # "intfName":Ljava/lang/String;
    .end local v31    # "resourceId":I
    .restart local v2    # "resourceId":I
    .restart local v3    # "intfName":Ljava/lang/String;
    .restart local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    goto :goto_2

    .line 1361
    .end local v2    # "resourceId":I
    .end local v3    # "intfName":Ljava/lang/String;
    .end local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v28    # "intfName":Ljava/lang/String;
    .restart local v31    # "resourceId":I
    :catch_6
    move-exception v0

    move-object/from16 v16, v13

    move-object/from16 v3, v28

    move/from16 v2, v31

    move/from16 v4, v29

    move/from16 v1, v30

    .end local v13    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v28    # "intfName":Ljava/lang/String;
    .end local v31    # "resourceId":I
    .restart local v2    # "resourceId":I
    .restart local v3    # "intfName":Ljava/lang/String;
    .restart local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    goto :goto_3

    .end local v2    # "resourceId":I
    .end local v3    # "intfName":Ljava/lang/String;
    .end local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v29    # "okey":I
    .end local v30    # "ikey":I
    .end local v32    # "callerUid":I
    .restart local v5    # "intfName":Ljava/lang/String;
    .restart local v7    # "okey":I
    .restart local v8    # "ikey":I
    .restart local v9    # "resourceId":I
    .restart local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15    # "callerUid":I
    :catch_7
    move-exception v0

    move-object v3, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move v2, v9

    move-object/from16 v16, v10

    move/from16 v32, v15

    .end local v5    # "intfName":Ljava/lang/String;
    .end local v7    # "okey":I
    .end local v8    # "ikey":I
    .end local v9    # "resourceId":I
    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15    # "callerUid":I
    .restart local v2    # "resourceId":I
    .restart local v3    # "intfName":Ljava/lang/String;
    .restart local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v29    # "okey":I
    .restart local v30    # "ikey":I
    .restart local v32    # "callerUid":I
    :goto_1
    move/from16 v4, v29

    move/from16 v1, v30

    goto :goto_3

    .end local v2    # "resourceId":I
    .end local v3    # "intfName":Ljava/lang/String;
    .end local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v29    # "okey":I
    .end local v30    # "ikey":I
    .end local v32    # "callerUid":I
    .restart local v5    # "intfName":Ljava/lang/String;
    .restart local v7    # "okey":I
    .restart local v8    # "ikey":I
    .restart local v9    # "resourceId":I
    .restart local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15    # "callerUid":I
    :catch_8
    move-exception v0

    move-object v3, v5

    move v2, v9

    move-object/from16 v16, v10

    move/from16 v32, v15

    move v4, v7

    move v1, v8

    .end local v5    # "intfName":Ljava/lang/String;
    .end local v7    # "okey":I
    .end local v8    # "ikey":I
    .end local v9    # "resourceId":I
    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15    # "callerUid":I
    .restart local v2    # "resourceId":I
    .restart local v3    # "intfName":Ljava/lang/String;
    .restart local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v29    # "okey":I
    .restart local v30    # "ikey":I
    .restart local v32    # "callerUid":I
    goto :goto_3

    .line 1366
    .end local v2    # "resourceId":I
    .end local v3    # "intfName":Ljava/lang/String;
    .end local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v29    # "okey":I
    .end local v30    # "ikey":I
    .end local v32    # "callerUid":I
    .restart local v5    # "intfName":Ljava/lang/String;
    .restart local v7    # "okey":I
    .restart local v8    # "ikey":I
    .restart local v9    # "resourceId":I
    .restart local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15    # "callerUid":I
    :catchall_7
    move-exception v0

    move-object v3, v5

    move/from16 v29, v7

    move/from16 v30, v8

    move v2, v9

    move-object/from16 v16, v10

    move/from16 v32, v15

    .line 1368
    .end local v5    # "intfName":Ljava/lang/String;
    .end local v7    # "okey":I
    .end local v8    # "ikey":I
    .end local v9    # "resourceId":I
    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15    # "callerUid":I
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v2    # "resourceId":I
    .restart local v3    # "intfName":Ljava/lang/String;
    .restart local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v29    # "okey":I
    .restart local v30    # "ikey":I
    .restart local v32    # "callerUid":I
    :goto_2
    move/from16 v1, v30

    .end local v30    # "ikey":I
    .local v1, "ikey":I
    :try_start_d
    invoke-virtual {v11, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1369
    move/from16 v4, v29

    .end local v29    # "okey":I
    .local v4, "okey":I
    invoke-virtual {v11, v4}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1370
    throw v0

    .line 1361
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v1    # "ikey":I
    .end local v2    # "resourceId":I
    .end local v3    # "intfName":Ljava/lang/String;
    .end local v4    # "okey":I
    .end local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v32    # "callerUid":I
    .end local p0    # "this":Lcom/android/server/IpSecService;
    .restart local v5    # "intfName":Ljava/lang/String;
    .restart local v7    # "okey":I
    .restart local v8    # "ikey":I
    .restart local v9    # "resourceId":I
    .restart local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v15    # "callerUid":I
    :catch_9
    move-exception v0

    move-object v3, v5

    move v4, v7

    move v1, v8

    move v2, v9

    move-object/from16 v16, v10

    move/from16 v32, v15

    .line 1363
    .end local v5    # "intfName":Ljava/lang/String;
    .end local v7    # "okey":I
    .end local v8    # "ikey":I
    .end local v9    # "resourceId":I
    .end local v10    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v15    # "callerUid":I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v1    # "ikey":I
    .restart local v2    # "resourceId":I
    .restart local v3    # "intfName":Ljava/lang/String;
    .restart local v4    # "okey":I
    .restart local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .restart local v32    # "callerUid":I
    :goto_3
    invoke-virtual {v11, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1364
    invoke-virtual {v11, v4}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    .line 1365
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 1290
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "ikey":I
    .end local v2    # "resourceId":I
    .end local v3    # "intfName":Ljava/lang/String;
    .end local v4    # "okey":I
    .end local v16    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v32    # "callerUid":I
    .end local p1    # "localAddr":Ljava/lang/String;
    .end local p2    # "remoteAddr":Ljava/lang/String;
    .end local p3    # "underlyingNetwork":Landroid/net/Network;
    .end local p4    # "binder":Landroid/os/IBinder;
    .end local p5    # "callingPackage":Ljava/lang/String;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteTransform(I)V
    .locals 2
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1692
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1693
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTransformRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1694
    monitor-exit p0

    return-void

    .line 1691
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p0    # "this":Lcom/android/server/IpSecService;
    .end local p1    # "resourceId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteTunnelInterface(ILjava/lang/String;)V
    .locals 2
    .param p1, "resourceId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1439
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1440
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1441
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1442
    monitor-exit p0

    return-void

    .line 1438
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p0    # "this":Lcom/android/server/IpSecService;
    .end local p1    # "resourceId":I
    .end local p2    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    monitor-enter p0

    .line 1844
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "IpSecService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1846
    const-string v0, "IpSecService dump:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1847
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetdNativeService Connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "alive"

    goto :goto_0

    .end local p0    # "this":Lcom/android/server/IpSecService;
    :cond_0
    const-string v1, "dead"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1850
    const-string/jumbo v0, "mUserResourceTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1851
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1852
    monitor-exit p0

    return-void

    .line 1843
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized isNetdAlive()Z
    .locals 2

    monitor-enter p0

    .line 1067
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1068
    .local v1, "netd":Landroid/net/INetd;
    if-nez v1, :cond_0

    .line 1069
    monitor-exit p0

    return v0

    .line 1071
    :cond_0
    :try_start_2
    invoke-interface {v1}, Landroid/net/INetd;->isAlive()Z

    move-result v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 1072
    .end local v1    # "netd":Landroid/net/INetd;
    .end local p0    # "this":Lcom/android/server/IpSecService;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1066
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1072
    .restart local p0    # "this":Lcom/android/server/IpSecService;
    :catch_1
    move-exception v1

    .line 1073
    .local v1, "re":Landroid/os/RemoteException;
    :goto_0
    monitor-exit p0

    return v0
.end method

.method public synthetic lambda$createTunnelInterface$1$IpSecService(Ljava/lang/String;)V
    .locals 1
    .param p1, "intfName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/android/server/IpSecService;->mNetworkManager:Landroid/os/INetworkManagementService;

    invoke-interface {v0, p1}, Landroid/os/INetworkManagementService;->setInterfaceUp(Ljava/lang/String;)V

    .line 1321
    return-void
.end method

.method public declared-synchronized openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;
    .locals 10
    .param p1, "port"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1228
    if-eqz p1, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    const v0, 0xffff

    if-gt p1, v0, :cond_0

    goto :goto_0

    .line 1229
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Specified port number must be a valid non-reserved UDP port"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1232
    .end local p0    # "this":Lcom/android/server/IpSecService;
    :cond_1
    :goto_0
    const-string v0, "Null Binder passed to openUdpEncapsulationSocket"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1235
    .local v0, "callingUid":I
    iget-object v1, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v1

    .line 1236
    .local v1, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget v2, p0, Lcom/android/server/IpSecService;->mNextResourceId:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/server/IpSecService;->mNextResourceId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1237
    .local v2, "resourceId":I
    const/4 v3, 0x0

    .line 1239
    .local v3, "sockFd":Ljava/io/FileDescriptor;
    const/4 v4, 0x1

    :try_start_1
    iget-object v5, v1, Lcom/android/server/IpSecService$UserRecord;->mSocketQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    invoke-virtual {v5}, Lcom/android/server/IpSecService$ResourceTracker;->isAvailable()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1240
    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v5

    .line 1243
    :cond_2
    :try_start_2
    sget v5, Landroid/system/OsConstants;->AF_INET:I

    sget v6, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v7, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v5, v6, v7}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v5

    move-object v3, v5

    .line 1244
    iget-object v5, p0, Lcom/android/server/IpSecService;->mUidFdTagger:Lcom/android/server/IpSecService$UidFdTagger;

    invoke-interface {v5, v3, v0}, Lcom/android/server/IpSecService$UidFdTagger;->tag(Ljava/io/FileDescriptor;I)V

    .line 1247
    sget v5, Landroid/system/OsConstants;->IPPROTO_UDP:I

    sget v6, Landroid/system/OsConstants;->UDP_ENCAP:I

    sget v7, Landroid/system/OsConstants;->UDP_ENCAP_ESPINUDP:I

    invoke-static {v3, v5, v6, v7}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 1253
    iget-object v5, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    invoke-interface {v5}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v5

    new-instance v6, Landroid/os/ParcelFileDescriptor;

    invoke-direct {v6, v3}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    invoke-interface {v5, v6, v0}, Landroid/net/INetd;->ipSecSetEncapSocketOwner(Landroid/os/ParcelFileDescriptor;I)V

    .line 1255
    if-eqz p1, :cond_3

    .line 1256
    const-string v5, "IpSecService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Binding to port "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    sget-object v5, Lcom/android/server/IpSecService;->INADDR_ANY:Ljava/net/InetAddress;

    invoke-static {v3, v5, p1}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    goto :goto_1

    .line 1259
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/server/IpSecService;->bindToRandomPort(Ljava/io/FileDescriptor;)I

    move-result v5

    move p1, v5

    .line 1262
    :goto_1
    iget-object v5, v1, Lcom/android/server/IpSecService$UserRecord;->mEncapSocketRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    new-instance v6, Lcom/android/server/IpSecService$RefcountedResource;

    new-instance v7, Lcom/android/server/IpSecService$EncapSocketRecord;

    invoke-direct {v7, p0, v2, v3, p1}, Lcom/android/server/IpSecService$EncapSocketRecord;-><init>(Lcom/android/server/IpSecService;ILjava/io/FileDescriptor;I)V

    const/4 v8, 0x0

    new-array v9, v8, [Lcom/android/server/IpSecService$RefcountedResource;

    invoke-direct {v6, p0, v7, p2, v9}, Lcom/android/server/IpSecService$RefcountedResource;-><init>(Lcom/android/server/IpSecService;Lcom/android/server/IpSecService$IResource;Landroid/os/IBinder;[Lcom/android/server/IpSecService$RefcountedResource;)V

    invoke-virtual {v5, v2, v6}, Lcom/android/server/IpSecService$RefcountedResourceArray;->put(ILcom/android/server/IpSecService$RefcountedResource;)V

    .line 1266
    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v8, v2, p1, v3}, Landroid/net/IpSecUdpEncapResponse;-><init>(IIILjava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v5

    .line 1267
    :catch_0
    move-exception v5

    .line 1268
    .local v5, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 1272
    .end local v5    # "e":Ljava/lang/Exception;
    new-instance v5, Landroid/net/IpSecUdpEncapResponse;

    invoke-direct {v5, v4}, Landroid/net/IpSecUdpEncapResponse;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v5

    .line 1227
    .end local v0    # "callingUid":I
    .end local v1    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v2    # "resourceId":I
    .end local v3    # "sockFd":Ljava/io/FileDescriptor;
    .end local p1    # "port":I
    .end local p2    # "binder":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method releaseNetId(I)V
    .locals 2
    .param p1, "netId"    # I

    .line 795
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 797
    monitor-exit v0

    .line 798
    return-void

    .line 797
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized releaseSecurityParameterIndex(I)V
    .locals 2
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1161
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mSpiRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    invoke-direct {p0, v1, p1}, Lcom/android/server/IpSecService;->releaseResource(Lcom/android/server/IpSecService$RefcountedResourceArray;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1162
    monitor-exit p0

    return-void

    .line 1159
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local p0    # "this":Lcom/android/server/IpSecService;
    .end local p1    # "resourceId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAddressFromTunnelInterface(ILandroid/net/LinkAddress;Ljava/lang/String;)V
    .locals 6
    .param p1, "tunnelResourceId"    # I
    .param p2, "localAddr"    # Landroid/net/LinkAddress;
    .param p3, "callingPackage"    # Ljava/lang/String;

    monitor-enter p0

    .line 1410
    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/IpSecService;->enforceTunnelFeatureAndPermissions(Ljava/lang/String;)V

    .line 1412
    iget-object v0, p0, Lcom/android/server/IpSecService;->mUserResourceTracker:Lcom/android/server/IpSecService$UserResourceTracker;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserResourceTracker;->getUserRecord(I)Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    .line 1415
    .local v0, "userRecord":Lcom/android/server/IpSecService$UserRecord;
    iget-object v1, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelInterfaceRecords:Lcom/android/server/IpSecService$RefcountedResourceArray;

    .line 1416
    invoke-virtual {v1, p1}, Lcom/android/server/IpSecService$RefcountedResourceArray;->getResourceOrThrow(I)Lcom/android/server/IpSecService$IResource;

    move-result-object v1

    check-cast v1, Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1421
    .local v1, "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1422
    invoke-interface {v2}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v2

    .line 1424
    invoke-static {v1}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->access$200(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;

    move-result-object v3

    .line 1425
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 1426
    invoke-virtual {p2}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v5

    .line 1423
    invoke-interface {v2, v3, v4, v5}, Landroid/net/INetd;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    nop

    .line 1430
    monitor-exit p0

    return-void

    .line 1427
    .end local p0    # "this":Lcom/android/server/IpSecService;
    :catch_0
    move-exception v2

    .line 1428
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1409
    .end local v0    # "userRecord":Lcom/android/server/IpSecService$UserRecord;
    .end local v1    # "tunnelInterfaceInfo":Lcom/android/server/IpSecService$TunnelInterfaceRecord;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local p1    # "tunnelResourceId":I
    .end local p2    # "localAddr":Landroid/net/LinkAddress;
    .end local p3    # "callingPackage":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeTransportModeTransforms(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 1740
    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService;->mSrvConfig:Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    .line 1741
    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    .line 1742
    invoke-interface {v0, p1}, Landroid/net/INetd;->ipSecRemoveTransportModeTransform(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1743
    monitor-exit p0

    return-void

    .line 1739
    .end local p0    # "this":Lcom/android/server/IpSecService;
    .end local p1    # "socket":Landroid/os/ParcelFileDescriptor;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method reserveNetId()I
    .locals 7

    .line 779
    iget-object v0, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    monitor-enter v0

    .line 780
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x400

    if-ge v1, v2, :cond_2

    .line 781
    :try_start_0
    iget v3, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 782
    .local v3, "index":I
    const v4, 0xfc00

    add-int/2addr v4, v3

    .line 783
    .local v4, "netId":I
    iget v5, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    if-lt v5, v2, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/IpSecService;->mNextTunnelNetIdIndex:I

    .line 784
    :cond_0
    iget-object v2, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 785
    iget-object v2, p0, Lcom/android/server/IpSecService;->mTunnelNetIds:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 786
    monitor-exit v0

    return v4

    .line 780
    .end local v3    # "index":I
    .end local v4    # "netId":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    .end local v1    # "i":I
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No free netIds to allocate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 789
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public systemReady()V
    .locals 2

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/IpSecService;->isNetdAlive()Z

    move-result v0

    const-string v1, "IpSecService"

    if-eqz v0, :cond_0

    .line 1047
    const-string v0, "IpSecService is ready"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1049
    :cond_0
    const-string v0, "IpSecService not ready: failed to connect to NetD Native Service!"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    :goto_0
    return-void
.end method

.method validateAlgorithms(Landroid/net/IpSecConfig;)V
    .locals 7
    .param p1, "config"    # Landroid/net/IpSecConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1446
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getAuthentication()Landroid/net/IpSecAlgorithm;

    move-result-object v0

    .line 1447
    .local v0, "auth":Landroid/net/IpSecAlgorithm;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v1

    .line 1448
    .local v1, "crypt":Landroid/net/IpSecAlgorithm;
    invoke-virtual {p1}, Landroid/net/IpSecConfig;->getAuthenticatedEncryption()Landroid/net/IpSecAlgorithm;

    move-result-object v2

    .line 1451
    .local v2, "aead":Landroid/net/IpSecAlgorithm;
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v4

    :goto_1
    const-string v6, "No Encryption or Authentication algorithms specified"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1454
    if-eqz v0, :cond_3

    .line 1455
    invoke-virtual {v0}, Landroid/net/IpSecAlgorithm;->isAuthentication()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v4

    .line 1454
    :goto_3
    const-string v6, "Unsupported algorithm for Authentication"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1457
    if-eqz v1, :cond_5

    .line 1458
    invoke-virtual {v1}, Landroid/net/IpSecAlgorithm;->isEncryption()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v5, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v5, v4

    .line 1457
    :goto_5
    const-string v6, "Unsupported algorithm for Encryption"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1459
    if-eqz v2, :cond_7

    .line 1460
    invoke-virtual {v2}, Landroid/net/IpSecAlgorithm;->isAead()Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_6

    :cond_6
    move v5, v3

    goto :goto_7

    :cond_7
    :goto_6
    move v5, v4

    .line 1459
    :goto_7
    const-string v6, "Unsupported algorithm for Authenticated Encryption"

    invoke-static {v5, v6}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1462
    if-eqz v2, :cond_8

    if-nez v0, :cond_9

    if-nez v1, :cond_9

    :cond_8
    move v3, v4

    :cond_9
    const-string v4, "Authenticated Encryption is mutually exclusive with other Authentication or Encryption algorithms"

    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1466
    return-void
.end method
