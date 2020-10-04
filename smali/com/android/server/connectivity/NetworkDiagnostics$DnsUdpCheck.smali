.class Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;
.super Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsUdpCheck"
.end annotation


# static fields
.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final RR_TYPE_A:I = 0x1

.field private static final RR_TYPE_AAAA:I = 0x1c

.field private static final TIMEOUT_RECV:I = 0x1f4

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mQueryType:I

.field private final mRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 2
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 523
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 524
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 510
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    .line 527
    iget p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mAddressFamily:I

    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_0

    .line 528
    const/16 p1, 0x1c

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    goto :goto_0

    .line 530
    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    .line 533
    :goto_0
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNS UDP dst{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mTarget:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 534
    return-void
.end method

.method private getDnsQueryPacket(Ljava/lang/String;)[B
    .locals 13
    .param p1, "sixRandomDigits"    # Ljava/lang/String;

    .line 596
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 597
    .local v0, "rnd":[B
    const/16 v1, 0x36

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    .line 598
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    aput-byte v4, v1, v2

    const/4 v5, 0x3

    aput-byte v3, v1, v5

    const/4 v6, 0x4

    aput-byte v3, v1, v6

    const/4 v7, 0x5

    aput-byte v4, v1, v7

    const/4 v8, 0x6

    aput-byte v3, v1, v8

    const/4 v9, 0x7

    aput-byte v3, v1, v9

    const/16 v10, 0x8

    aput-byte v3, v1, v10

    const/16 v10, 0x9

    aput-byte v3, v1, v10

    const/16 v10, 0xa

    aput-byte v3, v1, v10

    const/16 v10, 0xb

    aput-byte v3, v1, v10

    const/16 v10, 0x11

    const/16 v11, 0xc

    aput-byte v10, v1, v11

    aget-byte v11, v0, v3

    const/16 v12, 0xd

    aput-byte v11, v1, v12

    aget-byte v11, v0, v4

    const/16 v12, 0xe

    aput-byte v11, v1, v12

    aget-byte v2, v0, v2

    const/16 v11, 0xf

    aput-byte v2, v1, v11

    aget-byte v2, v0, v5

    const/16 v11, 0x10

    aput-byte v2, v1, v11

    aget-byte v2, v0, v6

    aput-byte v2, v1, v10

    aget-byte v2, v0, v7

    const/16 v6, 0x12

    aput-byte v2, v1, v6

    const/16 v2, 0x2d

    const/16 v6, 0x13

    aput-byte v2, v1, v6

    const/16 v6, 0x61

    const/16 v7, 0x14

    aput-byte v6, v1, v7

    const/16 v7, 0x15

    const/16 v10, 0x6e

    aput-byte v10, v1, v7

    const/16 v7, 0x64

    const/16 v10, 0x16

    aput-byte v7, v1, v10

    const/16 v10, 0x17

    const/16 v11, 0x72

    aput-byte v11, v1, v10

    const/16 v10, 0x18

    const/16 v11, 0x6f

    aput-byte v11, v1, v10

    const/16 v10, 0x69

    const/16 v11, 0x19

    aput-byte v10, v1, v11

    const/16 v11, 0x1a

    aput-byte v7, v1, v11

    const/16 v11, 0x1b

    aput-byte v2, v1, v11

    const/16 v11, 0x1c

    aput-byte v7, v1, v11

    const/16 v7, 0x1d

    const/16 v11, 0x73

    aput-byte v11, v1, v7

    const/16 v7, 0x1e

    aput-byte v8, v1, v7

    const/16 v7, 0x1f

    const/16 v8, 0x6d

    aput-byte v8, v1, v7

    const/16 v7, 0x20

    const/16 v8, 0x65

    aput-byte v8, v1, v7

    const/16 v7, 0x74

    const/16 v8, 0x21

    aput-byte v7, v1, v8

    const/16 v8, 0x22

    const/16 v11, 0x72

    aput-byte v11, v1, v8

    const/16 v8, 0x23

    aput-byte v10, v1, v8

    const/16 v8, 0x63

    const/16 v11, 0x24

    aput-byte v8, v1, v11

    const/16 v11, 0x25

    aput-byte v9, v1, v11

    const/16 v9, 0x26

    const/16 v11, 0x67

    aput-byte v11, v1, v9

    const/16 v9, 0x27

    const/16 v11, 0x73

    aput-byte v11, v1, v9

    const/16 v9, 0x28

    aput-byte v7, v1, v9

    const/16 v9, 0x29

    aput-byte v6, v1, v9

    const/16 v6, 0x2a

    aput-byte v7, v1, v6

    const/16 v6, 0x2b

    aput-byte v10, v1, v6

    const/16 v6, 0x2c

    aput-byte v8, v1, v6

    aput-byte v5, v1, v2

    const/16 v2, 0x2e

    aput-byte v8, v1, v2

    const/16 v2, 0x2f

    const/16 v5, 0x6f

    aput-byte v5, v1, v2

    const/16 v2, 0x30

    const/16 v5, 0x6d

    aput-byte v5, v1, v2

    const/16 v2, 0x31

    aput-byte v3, v1, v2

    const/16 v2, 0x32

    aput-byte v3, v1, v2

    iget v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    int-to-byte v2, v2

    const/16 v5, 0x33

    aput-byte v2, v1, v5

    const/16 v2, 0x34

    aput-byte v3, v1, v2

    const/16 v2, 0x35

    aput-byte v4, v1, v2

    .line 597
    return-object v1
.end method

.method private responseCodeStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "rcode"    # I

    .line 515
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->values()[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 539
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v0, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 543
    return-void

    .line 547
    :cond_0
    :try_start_0
    sget v5, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v6, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-wide/16 v7, 0x64

    const-wide/16 v9, 0x1f4

    const/16 v11, 0x35

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 552
    nop

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-object v4, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " src{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->getSocketAddressString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 556
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    const v1, 0xdbba0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x186a0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 557
    .local v0, "sixRandomDigits":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-object v5, v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " qtype{"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "} qname{"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "-android-ds.metric.gstatic.com}"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 561
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->getDnsQueryPacket(Ljava/lang/String;)[B

    move-result-object v1

    .line 563
    .local v1, "dnsPacket":[B
    const/4 v4, 0x0

    .line 564
    .local v4, "count":I
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 565
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v7}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$400(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-gez v5, :cond_2

    .line 566
    add-int/lit8 v4, v4, 0x1

    .line 568
    :try_start_1
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v5, v1, v6, v7}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    nop

    .line 575
    const/16 v5, 0x200

    :try_start_2
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 576
    .local v5, "reply":Ljava/nio/ByteBuffer;
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v6, v5}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    .line 579
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_1

    .line 580
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0xf

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->responseCodeStr(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 581
    :cond_1
    const-string v6, ""

    :goto_1
    nop

    .line 582
    .local v6, "rcodeStr":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 583
    goto :goto_2

    .line 584
    .end local v5    # "reply":Ljava/nio/ByteBuffer;
    .end local v6    # "rcodeStr":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 585
    .local v5, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 569
    .end local v5    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v5

    .line 570
    .restart local v5    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 588
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v5, v5, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    cmp-long v2, v5, v2

    if-nez v2, :cond_3

    .line 589
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 592
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->close()V

    .line 593
    return-void

    .line 549
    .end local v0    # "sixRandomDigits":Ljava/lang/String;
    .end local v1    # "dnsPacket":[B
    .end local v4    # "count":I
    :catch_2
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 551
    return-void
.end method
