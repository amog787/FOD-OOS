.class public final Lcom/android/server/connectivity/IpConnectivityEventBuilder;
.super Ljava/lang/Object;
.source "IpConnectivityEventBuilder.java"


# static fields
.field private static final IFNAME_LINKLAYERS:[I

.field private static final IFNAME_PREFIXES:[Ljava/lang/String;

.field private static final KNOWN_PREFIX:I = 0x7

.field private static final TRANSPORT_LINKLAYER_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 377
    const/16 v0, 0x8

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    .line 379
    const/4 v2, 0x0

    const/4 v3, 0x2

    aput v3, v1, v2

    .line 380
    const/4 v4, 0x1

    const/4 v5, 0x4

    aput v5, v1, v4

    .line 381
    aput v4, v1, v3

    .line 382
    const/4 v6, 0x3

    aput v6, v1, v6

    .line 383
    aput v2, v1, v5

    .line 384
    const/4 v7, 0x5

    aput v0, v1, v7

    .line 385
    const/4 v8, 0x6

    const/16 v9, 0x9

    aput v9, v1, v8

    .line 401
    const/4 v1, 0x7

    new-array v10, v1, [Ljava/lang/String;

    sput-object v10, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    .line 402
    new-array v11, v1, [I

    sput-object v11, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    .line 405
    const-string/jumbo v12, "rmnet"

    aput-object v12, v10, v2

    .line 406
    aput v3, v11, v2

    .line 408
    const-string/jumbo v2, "wlan"

    aput-object v2, v10, v4

    .line 409
    aput v5, v11, v4

    .line 411
    const-string v2, "bt-pan"

    aput-object v2, v10, v3

    .line 412
    aput v4, v11, v3

    .line 414
    const-string/jumbo v2, "p2p"

    aput-object v2, v10, v6

    .line 415
    aput v1, v11, v6

    .line 417
    const-string v1, "aware"

    aput-object v1, v10, v5

    .line 418
    aput v0, v11, v5

    .line 420
    const-string v0, "eth"

    aput-object v0, v10, v7

    .line 421
    aput v6, v11, v7

    .line 423
    const-string/jumbo v0, "wpan"

    aput-object v0, v10, v8

    .line 424
    aput v9, v11, v8

    .line 425
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1
    .param p0, "netId"    # I
    .param p1, "transports"    # J
    .param p3, "ifname"    # Ljava/lang/String;

    .line 159
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    .line 160
    .local v0, "ev":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    .line 161
    iput-wide p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    .line 162
    if-eqz p3, :cond_0

    .line 163
    iput-object p3, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 165
    :cond_0
    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->inferLinkLayer(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V

    .line 166
    return-object v0
.end method

.method private static bytesToInts([B)[I
    .locals 3
    .param p0, "in"    # [B

    .line 308
    array-length v0, p0

    new-array v0, v0, [I

    .line 309
    .local v0, "out":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 310
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 312
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private static ifnameToLinkLayer(Ljava/lang/String;)I
    .locals 3
    .param p0, "ifname"    # Ljava/lang/String;

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    .line 392
    sget-object v1, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 393
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    sget-object v2, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aget v2, v2, v0

    return v2

    .line 391
    .end local v1    # "pattern":Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static inferLinkLayer(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V
    .locals 5
    .param p0, "ev"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 345
    const/4 v0, 0x0

    .line 346
    .local v0, "linkLayer":I
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 347
    iget-wide v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportsToLinkLayer(J)I

    move-result v0

    goto :goto_0

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 349
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ifnameToLinkLayer(Ljava/lang/String;)I

    move-result v0

    .line 351
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 352
    return-void

    .line 354
    :cond_2
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    .line 355
    const-string v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 356
    return-void
.end method

.method private static ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I
    .locals 1
    .param p0, "in"    # Landroid/net/metrics/DefaultNetworkEvent;

    .line 328
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_0

    .line 329
    const/4 v0, 0x3

    return v0

    .line 331
    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv6:Z

    if-eqz v0, :cond_1

    .line 332
    const/4 v0, 0x2

    return v0

    .line 334
    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->ipv4:Z

    if-eqz v0, :cond_2

    .line 335
    const/4 v0, 0x1

    return v0

    .line 337
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isBitSet(II)Z
    .locals 2
    .param p0, "flags"    # I
    .param p1, "bit"    # I

    .line 341
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static serialize(ILjava/util/List;)[B
    .locals 2
    .param p0, "dropped"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    .line 63
    .local v0, "log":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 64
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    .line 65
    iget-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v1, v1

    if-gtz v1, :cond_0

    if-lez p0, :cond_1

    .line 67
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    .line 69
    :cond_1
    invoke-static {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    return-object v1
.end method

.method private static setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V
    .locals 3
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ApfProgramEvent;

    .line 264
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    .line 266
    .local v0, "apfProgramEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    iget-wide v1, p1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 267
    iget-wide v1, p1, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    .line 268
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 269
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 270
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 271
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 272
    iput-boolean v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 274
    :cond_0
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 275
    iput-boolean v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 277
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 278
    return-void
.end method

.method private static setApfStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V
    .locals 3
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ApfStats;

    .line 281
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    .line 283
    .local v0, "apfStatistics":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    iget-wide v1, p1, Landroid/net/metrics/ApfStats;->durationMs:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 284
    iget v1, p1, Landroid/net/metrics/ApfStats;->receivedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 285
    iget v1, p1, Landroid/net/metrics/ApfStats;->matchingRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 286
    iget v1, p1, Landroid/net/metrics/ApfStats;->droppedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 287
    iget v1, p1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 288
    iget v1, p1, Landroid/net/metrics/ApfStats;->parseErrors:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 289
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdates:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 290
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    .line 291
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    .line 292
    iget v1, p1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 293
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 294
    return-void
.end method

.method private static setDhcpClientEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DhcpClientEvent;

    .line 225
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    .line 226
    .local v0, "dhcpEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setStateTransition(Ljava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    .line 227
    iget v1, p1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    .line 228
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 229
    return-void
.end method

.method private static setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DhcpErrorEvent;

    .line 219
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    .line 220
    .local v0, "dhcpEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    iget v1, p1, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setErrorCode(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    .line 221
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 222
    return-void
.end method

.method private static setEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/os/Parcelable;

    .line 170
    instance-of v0, p1, Landroid/net/metrics/DhcpErrorEvent;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 171
    move-object v0, p1

    check-cast v0, Landroid/net/metrics/DhcpErrorEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V

    .line 172
    return v1

    .line 175
    :cond_0
    instance-of v0, p1, Landroid/net/metrics/DhcpClientEvent;

    if-eqz v0, :cond_1

    .line 176
    move-object v0, p1

    check-cast v0, Landroid/net/metrics/DhcpClientEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpClientEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V

    .line 177
    return v1

    .line 180
    :cond_1
    instance-of v0, p1, Landroid/net/metrics/IpManagerEvent;

    if-eqz v0, :cond_2

    .line 181
    move-object v0, p1

    check-cast v0, Landroid/net/metrics/IpManagerEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpManagerEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V

    .line 182
    return v1

    .line 185
    :cond_2
    instance-of v0, p1, Landroid/net/metrics/IpReachabilityEvent;

    if-eqz v0, :cond_3

    .line 186
    move-object v0, p1

    check-cast v0, Landroid/net/metrics/IpReachabilityEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V

    .line 187
    return v1

    .line 190
    :cond_3
    instance-of v0, p1, Landroid/net/metrics/NetworkEvent;

    if-eqz v0, :cond_4

    .line 191
    move-object v0, p1

    check-cast v0, Landroid/net/metrics/NetworkEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V

    .line 192
    return v1

    .line 195
    :cond_4
    instance-of v0, p1, Landroid/net/metrics/ValidationProbeEvent;

    if-eqz v0, :cond_5

    .line 196
    move-object v0, p1

    check-cast v0, Landroid/net/metrics/ValidationProbeEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V

    .line 197
    return v1

    .line 200
    :cond_5
    instance-of v0, p1, Landroid/net/metrics/ApfProgramEvent;

    if-eqz v0, :cond_6

    .line 201
    move-object v0, p1

    check-cast v0, Landroid/net/metrics/ApfProgramEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V

    .line 202
    return v1

    .line 205
    :cond_6
    instance-of v0, p1, Landroid/net/metrics/ApfStats;

    if-eqz v0, :cond_7

    .line 206
    move-object v0, p1

    check-cast v0, Landroid/net/metrics/ApfStats;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V

    .line 207
    return v1

    .line 210
    :cond_7
    instance-of v0, p1, Landroid/net/metrics/RaEvent;

    if-eqz v0, :cond_8

    .line 211
    move-object v0, p1

    check-cast v0, Landroid/net/metrics/RaEvent;

    invoke-static {p0, v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V

    .line 212
    return v1

    .line 215
    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method private static setIpManagerEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V
    .locals 3
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/IpManagerEvent;

    .line 232
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    .line 234
    .local v0, "ipProvisioningEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
    iget v1, p1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    .line 235
    iget-wide v1, p1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    .line 236
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpProvisioningEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 237
    return-void
.end method

.method private static setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/IpReachabilityEvent;

    .line 240
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    .line 242
    .local v0, "ipReachabilityEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;
    iget v1, p1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 244
    return-void
.end method

.method private static setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V
    .locals 3
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/NetworkEvent;

    .line 247
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;-><init>()V

    .line 249
    .local v0, "networkEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;
    iget v1, p1, Landroid/net/metrics/NetworkEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->eventType:I

    .line 250
    iget-wide v1, p1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 252
    return-void
.end method

.method private static setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V
    .locals 3
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/RaEvent;

    .line 297
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    .line 298
    .local v0, "raEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 299
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 300
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 301
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 302
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 303
    iget-wide v1, p1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 304
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 305
    return-void
.end method

.method private static setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V
    .locals 3
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ValidationProbeEvent;

    .line 255
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    .line 257
    .local v0, "validationProbeEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;
    iget-wide v1, p1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    long-to-int v1, v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    .line 258
    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    .line 259
    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 261
    return-void
.end method

.method private static toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    .locals 5
    .param p0, "counts"    # Landroid/util/SparseIntArray;

    .line 316
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    .line 317
    .local v0, "s":I
    new-array v1, v0, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 318
    .local v1, "pairs":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 319
    new-instance v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v3}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    .line 320
    .local v3, "p":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->key:I

    .line 321
    invoke-virtual {p0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v3, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->value:I

    .line 322
    aput-object v3, v1, v2

    .line 318
    .end local v3    # "p":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public static toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 4
    .param p0, "ev"    # Landroid/net/ConnectivityMetricsEvent;

    .line 85
    iget v0, p0, Landroid/net/ConnectivityMetricsEvent;->netId:I

    iget-wide v1, p0, Landroid/net/ConnectivityMetricsEvent;->transports:J

    iget-object v3, p0, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    .line 86
    .local v0, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    iget-wide v1, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    .line 87
    iget-object v1, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_0
    return-object v0
.end method

.method public static toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5
    .param p0, "in"    # Landroid/net/metrics/ConnectStats;

    .line 94
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    .line 96
    .local v0, "stats":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    .line 97
    iget v1, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    .line 98
    iget v1, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    .line 99
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->toArray()[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    .line 100
    iget-object v1, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 101
    iget v1, p0, Landroid/net/metrics/ConnectStats;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/ConnectStats;->transports:J

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    .line 102
    .local v1, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setConnectStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 103
    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5
    .param p0, "in"    # Landroid/net/metrics/DefaultNetworkEvent;

    .line 141
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    .line 143
    .local v0, "ev":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->finalScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->finalScore:J

    .line 144
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->initialScore:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->initialScore:J

    .line 145
    invoke-static {p0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I

    move-result v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->ipSupport:I

    .line 146
    iget-wide v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->durationMs:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->defaultNetworkDurationMs:J

    .line 147
    iget-wide v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->validatedMs:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->validationDurationMs:J

    .line 148
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->previousTransports:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportsToLinkLayer(J)I

    move-result v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousDefaultNetworkLinkLayer:I

    .line 149
    iget v1, p0, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    .line 150
    .local v1, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    iget v2, p0, Landroid/net/metrics/DefaultNetworkEvent;->transports:I

    if-nez v2, :cond_0

    .line 152
    const/4 v2, 0x5

    iput v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    .line 154
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 155
    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5
    .param p0, "in"    # Landroid/net/metrics/DnsEvent;

    .line 108
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    .line 110
    .local v0, "dnsLookupBatch":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    iget v1, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-virtual {p0, v1}, Landroid/net/metrics/DnsEvent;->resize(I)V

    .line 111
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 112
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 113
    iget-object v1, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 114
    iget v1, p0, Landroid/net/metrics/DnsEvent;->netId:I

    iget-wide v2, p0, Landroid/net/metrics/DnsEvent;->transports:J

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    .line 115
    .local v1, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDnsLookupBatch(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 116
    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5
    .param p0, "in"    # Landroid/net/metrics/WakeupStats;

    .line 120
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    .line 122
    .local v0, "wakeupStats":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    .line 123
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    .line 124
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    .line 125
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    .line 126
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    .line 127
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    .line 128
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    .line 129
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    .line 130
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2UnicastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2UnicastCount:J

    .line 131
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2MulticastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2MulticastCount:J

    .line 132
    iget-wide v1, p0, Landroid/net/metrics/WakeupStats;->l2BroadcastCount:J

    iput-wide v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->l2BroadcastCount:J

    .line 133
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ethertypes:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ethertypeCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 134
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->ipNextHeaders:Landroid/util/SparseIntArray;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->ipNextHeaderCounts:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 135
    iget-object v1, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static {v2, v3, v4, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    .line 136
    .local v1, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setWakeupStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 137
    return-object v1
.end method

.method public static toProto(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    .line 73
    .local p0, "eventsIn":Ljava/util/List;, "Ljava/util/List<Landroid/net/ConnectivityMetricsEvent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v0, "eventsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityMetricsEvent;

    .line 75
    .local v2, "in":Landroid/net/ConnectivityMetricsEvent;
    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    .line 76
    .local v3, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    if-nez v3, :cond_0

    .line 77
    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    .end local v2    # "in":Landroid/net/ConnectivityMetricsEvent;
    .end local v3    # "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    goto :goto_0

    .line 81
    :cond_1
    return-object v0
.end method

.method private static transportToLinkLayer(I)I
    .locals 2
    .param p0, "transport"    # I

    .line 371
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 372
    aget v0, v0, p0

    return v0

    .line 374
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static transportsToLinkLayer(J)I
    .locals 2
    .param p0, "transports"    # J

    .line 359
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 366
    const/4 v0, 0x6

    return v0

    .line 363
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 364
    .local v0, "t":I
    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportToLinkLayer(I)I

    move-result v1

    return v1

    .line 361
    .end local v0    # "t":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
