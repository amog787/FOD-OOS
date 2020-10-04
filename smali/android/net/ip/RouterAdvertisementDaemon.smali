.class public Landroid/net/ip/RouterAdvertisementDaemon;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;,
        Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;,
        Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;,
        Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    }
.end annotation


# static fields
.field private static final ALL_NODES:[B

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEFAULT_LIFETIME:I = 0xe10

.field private static final ICMPV6_ND_ROUTER_ADVERT:B

.field private static final ICMPV6_ND_ROUTER_SOLICIT:B

.field private static final MAX_RTR_ADV_INTERVAL_SEC:I = 0x258

.field private static final MAX_URGENT_RTR_ADVERTISEMENTS:I = 0x5

.field private static final MIN_DELAY_BETWEEN_RAS_SEC:I = 0x3

.field private static final MIN_RA_HEADER_SIZE:I = 0x10

.field private static final MIN_RTR_ADV_INTERVAL_SEC:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllNodes:Ljava/net/InetSocketAddress;

.field private final mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mInterface:Landroid/net/util/InterfaceParams;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

.field private final mRA:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRaLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private volatile mSocket:Ljava/io/FileDescriptor;

.field private volatile mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 73
    const-class v0, Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    .line 74
    const/16 v0, 0x85

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    .line 75
    const/16 v0, 0x86

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    .line 97
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/net/util/InterfaceParams;)V
    .locals 3
    .param p1, "ifParams"    # Landroid/net/util/InterfaceParams;

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    .line 109
    const/16 v0, 0x500

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    .line 238
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    .line 239
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget v1, v1, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->getAllNodesForScopeId(I)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 240
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>(Landroid/net/ip/RouterAdvertisementDaemon$1;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    .line 241
    return-void
.end method

.method static synthetic access$1000(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 72
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 72
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/ip/RouterAdvertisementDaemon;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 72
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    return v0
.end method

.method static synthetic access$300(Landroid/net/ip/RouterAdvertisementDaemon;)Z
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 72
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 72
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic access$500()B
    .locals 1

    .line 72
    sget-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;
    .param p1, "x1"    # Ljava/net/InetSocketAddress;

    .line 72
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeSendRA(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method static synthetic access$800(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 72
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .line 72
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private static asByte(I)B
    .locals 1
    .param p0, "value"    # I

    .line 365
    int-to-byte v0, p0

    return v0
.end method

.method private static asShort(I)S
    .locals 1
    .param p0, "value"    # I

    .line 366
    int-to-short v0, p0

    return v0
.end method

.method private assembleRaLocked()V
    .locals 8
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 289
    .local v0, "ra":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 291
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 292
    .local v1, "haveRaParams":Z
    :goto_0
    const/4 v4, 0x0

    .line 295
    .local v4, "shouldSendRA":Z
    if-eqz v1, :cond_1

    :try_start_0
    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-boolean v5, v5, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    if-eqz v5, :cond_1

    goto :goto_1

    .line 336
    :catch_0
    move-exception v2

    goto/16 :goto_5

    .line 295
    :cond_1
    move v2, v3

    .line 296
    :goto_1
    if-eqz v1, :cond_2

    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-byte v5, v5, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hopLimit:B

    goto :goto_2

    :cond_2
    const/16 v5, 0x41

    .line 295
    :goto_2
    invoke-static {v0, v2, v5}, Landroid/net/ip/RouterAdvertisementDaemon;->putHeader(Ljava/nio/ByteBuffer;ZB)V

    .line 297
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget-object v2, v2, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    invoke-virtual {v2}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon;->putSlla(Ljava/nio/ByteBuffer;[B)V

    .line 298
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iput v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 307
    if-eqz v1, :cond_4

    .line 308
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget v2, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    invoke-static {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon;->putMtu(Ljava/nio/ByteBuffer;I)V

    .line 309
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iput v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 311
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v2, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0xe10

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/IpPrefix;

    .line 312
    .local v5, "ipp":Landroid/net/IpPrefix;
    invoke-static {v0, v5, v6, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 313
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 314
    const/4 v4, 0x1

    .line 315
    .end local v5    # "ipp":Landroid/net/IpPrefix;
    goto :goto_3

    .line 317
    :cond_3
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v2, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 318
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v2, v2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-static {v0, v2, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 319
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    iput v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 320
    const/4 v2, 0x1

    move v4, v2

    .line 324
    :cond_4
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getPrefixes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/IpPrefix;

    .line 325
    .restart local v5    # "ipp":Landroid/net/IpPrefix;
    invoke-static {v0, v5, v3, v3}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 326
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 327
    const/4 v4, 0x1

    .line 328
    .end local v5    # "ipp":Landroid/net/IpPrefix;
    goto :goto_4

    .line 330
    :cond_5
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getDnses()Ljava/util/Set;

    move-result-object v2

    .line 331
    .local v2, "deprecatedDnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 332
    invoke-static {v0, v2, v3}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 333
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    iput v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    const/4 v4, 0x1

    .line 341
    .end local v2    # "deprecatedDnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    :cond_6
    goto :goto_6

    .line 340
    .local v2, "e":Ljava/nio/BufferOverflowException;
    :goto_5
    sget-object v5, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not construct new RA: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v2    # "e":Ljava/nio/BufferOverflowException;
    :goto_6
    if-nez v4, :cond_7

    .line 345
    iput v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 347
    :cond_7
    return-void
.end method

.method private closeSocket()V
    .locals 1

    .line 611
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 613
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 616
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 617
    return-void
.end method

.method private createSocket()Z
    .locals 7

    .line 588
    const/16 v0, 0x12c

    .line 590
    .local v0, "SEND_TIMEOUT_MS":I
    const/16 v1, -0x1fe

    invoke-static {v1}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v1

    .line 593
    .local v1, "oldTag":I
    :try_start_0
    sget v2, Landroid/system/OsConstants;->AF_INET6:I

    sget v3, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v4, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-static {v2, v3, v4}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v2

    iput-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 595
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    const-wide/16 v5, 0x12c

    .line 596
    invoke-static {v5, v6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v5

    .line 595
    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 597
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    iget-object v5, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget-object v5, v5, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    .line 598
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v2}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z

    .line 599
    iget-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget v3, v3, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->setupRaSocket(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 605
    nop

    .line 607
    const/4 v2, 0x1

    return v2

    .line 604
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 600
    :catch_0
    move-exception v2

    .line 601
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create RA daemon socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 602
    const/4 v3, 0x0

    .line 604
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 602
    return v3

    .line 604
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v2
.end method

.method private static getAllNodesForScopeId(I)Ljava/net/Inet6Address;
    .locals 4
    .param p0, "scopeId"    # I

    .line 358
    :try_start_0
    const-string v0, "ff02::1"

    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    invoke-static {v0, v1, p0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, "uhe":Ljava/net/UnknownHostException;
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to construct ff02::1 InetAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const/4 v1, 0x0

    return-object v1
.end method

.method private isSocketValid()Z
    .locals 2

    .line 620
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 621
    .local v0, "s":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isSuitableDestination(Ljava/net/InetSocketAddress;)Z
    .locals 4
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    .line 625
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    invoke-virtual {v0, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 626
    return v1

    .line 629
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 630
    .local v0, "destip":Ljava/net/InetAddress;
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1

    .line 631
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Ljava/net/Inet6Address;

    .line 632
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v2

    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mInterface:Landroid/net/util/InterfaceParams;

    iget v3, v3, Landroid/net/util/InterfaceParams;->index:I

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 630
    :goto_0
    return v1
.end method

.method private maybeNotifyMulticastTransmitter()V
    .locals 1

    .line 350
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 351
    .local v0, "m":Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;
    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->hup()V

    .line 354
    :cond_0
    return-void
.end method

.method private maybeSendRA(Ljava/net/InetSocketAddress;)V
    .locals 7
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    .line 636
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->isSuitableDestination(Ljava/net/InetSocketAddress;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    :cond_0
    iget-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 641
    :cond_1
    :try_start_0
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 642
    :try_start_1
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 644
    monitor-exit v6

    return-void

    .line 646
    :cond_2
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    const/4 v2, 0x0

    iget v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I

    .line 647
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :try_start_2
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RA sendto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    .line 653
    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "this":Landroid/net/ip/RouterAdvertisementDaemon;
    .end local p1    # "dest":Ljava/net/InetSocketAddress;
    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0

    .line 649
    .restart local p0    # "this":Landroid/net/ip/RouterAdvertisementDaemon;
    .restart local p1    # "dest":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 651
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendto error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return-void
.end method

.method private static putExpandedFlagsOption(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p0, "ra"    # Ljava/nio/ByteBuffer;

    .line 431
    const/16 v0, 0x1a

    .line 432
    .local v0, "ND_OPTION_EFO":B
    const/4 v1, 0x1

    .line 434
    .local v1, "EFO_NUM_8OCTETS":B
    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 435
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 436
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 437
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 438
    return-void
.end method

.method private static putHeader(Ljava/nio/ByteBuffer;ZB)V
    .locals 3
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "hasDefaultRoute"    # Z
    .param p2, "hopLimit"    # B

    .line 386
    sget-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 387
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 388
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 389
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 391
    if-eqz p1, :cond_0

    const/16 v2, 0x8

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v2

    :goto_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 392
    if-eqz p1, :cond_1

    const/16 v2, 0xe10

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 393
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 394
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 395
    return-void
.end method

.method private static putMtu(Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "mtu"    # I

    .line 452
    const/4 v0, 0x5

    .line 453
    .local v0, "ND_OPTION_MTU":B
    const/4 v1, 0x1

    .line 454
    .local v1, "MTU_NUM_8OCTETS":B
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 455
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 456
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 457
    const/16 v3, 0x500

    if-ge p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, p1

    :goto_0
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 458
    return-void
.end method

.method private static putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V
    .locals 6
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "ipp"    # Landroid/net/IpPrefix;
    .param p2, "validTime"    # I
    .param p3, "preferredTime"    # I

    .line 485
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    .line 486
    .local v0, "prefixLength":I
    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    .line 487
    return-void

    .line 489
    :cond_0
    const/4 v1, 0x3

    .line 490
    .local v1, "ND_OPTION_PIO":B
    const/4 v2, 0x4

    .line 492
    .local v2, "PIO_NUM_8OCTETS":B
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 493
    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    .line 494
    :cond_2
    if-le p3, p2, :cond_3

    move p3, p2

    .line 496
    :cond_3
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    .line 497
    .local v3, "addr":[B
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x4

    .line 498
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 499
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/16 v5, 0xc0

    .line 500
    invoke-static {v5}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 501
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 502
    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x0

    .line 503
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 504
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 505
    return-void
.end method

.method private static putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V
    .locals 6
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p2, "lifetime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set<",
            "Ljava/net/Inet6Address;",
            ">;I)V"
        }
    .end annotation

    .line 561
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 562
    .local v0, "filteredDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 563
    .local v2, "dns":Ljava/net/Inet6Address;
    new-instance v3, Landroid/net/LinkAddress;

    const/16 v4, 0x40

    invoke-direct {v3, v2, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v3}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 564
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v2    # "dns":Ljava/net/Inet6Address;
    :cond_0
    goto :goto_0

    .line 567
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 569
    :cond_2
    const/16 v1, 0x19

    .line 570
    .local v1, "ND_OPTION_RDNSS":B
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v2

    .line 571
    .local v2, "RDNSS_NUM_8OCTETS":B
    const/16 v3, 0x19

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 572
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    const/4 v4, 0x0

    .line 573
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 574
    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 576
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/Inet6Address;

    .line 583
    .local v4, "dns":Ljava/net/Inet6Address;
    invoke-virtual {v4}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 584
    .end local v4    # "dns":Ljava/net/Inet6Address;
    goto :goto_1

    .line 585
    :cond_3
    return-void
.end method

.method private static putRio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;)V
    .locals 9
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "ipp"    # Landroid/net/IpPrefix;

    .line 523
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    .line 524
    .local v0, "prefixLength":I
    const/16 v1, 0x40

    if-le v0, v1, :cond_0

    .line 525
    return-void

    .line 527
    :cond_0
    const/16 v2, 0x18

    .line 529
    .local v2, "ND_OPTION_RIO":B
    const/16 v3, 0x8

    if-nez v0, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-gt v0, v3, :cond_2

    const/4 v4, 0x2

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    .line 528
    :goto_0
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v4

    .line 531
    .local v4, "RIO_NUM_8OCTETS":B
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v5

    .line 532
    .local v5, "addr":[B
    const/16 v6, 0x18

    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 533
    invoke-virtual {v7, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 534
    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v8

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 535
    invoke-static {v6}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v6

    invoke-virtual {v7, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v6

    const/16 v7, 0xe10

    .line 536
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 539
    if-lez v0, :cond_4

    .line 540
    const/4 v6, 0x0

    if-gt v0, v1, :cond_3

    goto :goto_1

    :cond_3
    const/16 v3, 0x10

    :goto_1
    invoke-virtual {p0, v5, v6, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 542
    :cond_4
    return-void
.end method

.method private static putSlla(Ljava/nio/ByteBuffer;[B)V
    .locals 4
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "slla"    # [B

    .line 407
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    const/4 v0, 0x1

    .line 412
    .local v0, "ND_OPTION_SLLA":B
    const/4 v1, 0x1

    .line 413
    .local v1, "SLLA_NUM_8OCTETS":B
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 414
    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 415
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 416
    return-void

    .line 409
    .end local v0    # "ND_OPTION_SLLA":B
    .end local v1    # "SLLA_NUM_8OCTETS":B
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 3
    .param p1, "deprecatedParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .param p2, "newParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 244
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    if-eqz p1, :cond_0

    .line 246
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putPrefixes(Ljava/util/Set;)V

    .line 247
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putDnses(Ljava/util/Set;)V

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 250
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 252
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removePrefixes(Ljava/util/Set;)V

    .line 253
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removeDnses(Ljava/util/Set;)V

    .line 256
    :cond_1
    iput-object p2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 257
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V

    .line 258
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeNotifyMulticastTransmitter()V

    .line 261
    return-void

    .line 258
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public start()Z
    .locals 2

    .line 264
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->createSocket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    return v0

    .line 268
    :cond_0
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 269
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->start()V

    .line 271
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$1;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 272
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->start()V

    .line 274
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 1

    .line 278
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->closeSocket()V

    .line 281
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeNotifyMulticastTransmitter()V

    .line 282
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 283
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 284
    return-void
.end method
