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
.field protected final mQueryType:I

.field protected final mRandom:Ljava/util/Random;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 2
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 581
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 582
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 568
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    .line 585
    iget p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mAddressFamily:I

    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_0

    .line 586
    const/16 p1, 0x1c

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    goto :goto_0

    .line 588
    :cond_0
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    .line 591
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

    .line 592
    return-void
.end method


# virtual methods
.method protected appendDnsToMeasurementDescription(Ljava/lang/String;Ljava/net/SocketAddress;)V
    .locals 3
    .param p1, "sixRandomDigits"    # Ljava/lang/String;
    .param p2, "sockAddr"    # Ljava/net/SocketAddress;

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " src{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$400(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} qtype{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} qname{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-android-ds.metric.gstatic.com}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 670
    return-void
.end method

.method protected getDnsQueryPacket(Ljava/lang/String;)[B
    .locals 17
    .param p1, "sixRandomDigits"    # Ljava/lang/String;

    .line 646
    move-object/from16 v0, p0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 647
    .local v1, "rnd":[B
    const/16 v3, 0x36

    new-array v3, v3, [B

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    .line 648
    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    const/4 v5, 0x0

    aput-byte v4, v3, v5

    iget-object v4, v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    const/4 v6, 0x1

    aput-byte v4, v3, v6

    const/4 v4, 0x2

    aput-byte v6, v3, v4

    const/4 v7, 0x3

    aput-byte v5, v3, v7

    const/4 v8, 0x4

    aput-byte v5, v3, v8

    const/4 v9, 0x5

    aput-byte v6, v3, v9

    const/4 v10, 0x6

    aput-byte v5, v3, v10

    const/4 v11, 0x7

    aput-byte v5, v3, v11

    const/16 v12, 0x8

    aput-byte v5, v3, v12

    const/16 v12, 0x9

    aput-byte v5, v3, v12

    const/16 v12, 0xa

    aput-byte v5, v3, v12

    const/16 v12, 0xb

    aput-byte v5, v3, v12

    const/16 v12, 0xc

    const/16 v13, 0x11

    aput-byte v13, v3, v12

    aget-byte v12, v1, v5

    const/16 v14, 0xd

    aput-byte v12, v3, v14

    aget-byte v12, v1, v6

    const/16 v14, 0xe

    aput-byte v12, v3, v14

    aget-byte v4, v1, v4

    const/16 v12, 0xf

    aput-byte v4, v3, v12

    aget-byte v4, v1, v7

    const/16 v12, 0x10

    aput-byte v4, v3, v12

    aget-byte v4, v1, v8

    aput-byte v4, v3, v13

    aget-byte v4, v1, v9

    const/16 v8, 0x12

    aput-byte v4, v3, v8

    const/16 v4, 0x13

    const/16 v8, 0x2d

    aput-byte v8, v3, v4

    const/16 v4, 0x14

    const/16 v9, 0x61

    aput-byte v9, v3, v4

    const/16 v4, 0x15

    const/16 v12, 0x6e

    aput-byte v12, v3, v4

    const/16 v4, 0x16

    const/16 v12, 0x64

    aput-byte v12, v3, v4

    const/16 v4, 0x17

    const/16 v13, 0x72

    aput-byte v13, v3, v4

    const/16 v4, 0x18

    const/16 v14, 0x6f

    aput-byte v14, v3, v4

    const/16 v4, 0x19

    const/16 v15, 0x69

    aput-byte v15, v3, v4

    const/16 v4, 0x1a

    aput-byte v12, v3, v4

    const/16 v4, 0x1b

    aput-byte v8, v3, v4

    const/16 v4, 0x1c

    aput-byte v12, v3, v4

    const/16 v4, 0x1d

    const/16 v12, 0x73

    aput-byte v12, v3, v4

    const/16 v4, 0x1e

    aput-byte v10, v3, v4

    const/16 v4, 0x1f

    const/16 v10, 0x6d

    aput-byte v10, v3, v4

    const/16 v4, 0x20

    const/16 v16, 0x65

    aput-byte v16, v3, v4

    const/16 v4, 0x21

    const/16 v16, 0x74

    aput-byte v16, v3, v4

    const/16 v4, 0x22

    aput-byte v13, v3, v4

    const/16 v4, 0x23

    aput-byte v15, v3, v4

    const/16 v4, 0x24

    const/16 v13, 0x63

    aput-byte v13, v3, v4

    const/16 v4, 0x25

    aput-byte v11, v3, v4

    const/16 v4, 0x26

    const/16 v11, 0x67

    aput-byte v11, v3, v4

    const/16 v4, 0x27

    aput-byte v12, v3, v4

    const/16 v4, 0x28

    aput-byte v16, v3, v4

    const/16 v4, 0x29

    aput-byte v9, v3, v4

    const/16 v4, 0x2a

    aput-byte v16, v3, v4

    const/16 v4, 0x2b

    aput-byte v15, v3, v4

    const/16 v4, 0x2c

    aput-byte v13, v3, v4

    aput-byte v7, v3, v8

    const/16 v4, 0x2e

    aput-byte v13, v3, v4

    const/16 v4, 0x2f

    aput-byte v14, v3, v4

    const/16 v4, 0x30

    aput-byte v10, v3, v4

    const/16 v4, 0x31

    aput-byte v5, v3, v4

    const/16 v4, 0x32

    aput-byte v5, v3, v4

    iget v4, v0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mQueryType:I

    int-to-byte v4, v4

    const/16 v7, 0x33

    aput-byte v4, v3, v7

    const/16 v4, 0x34

    aput-byte v5, v3, v4

    const/16 v4, 0x35

    aput-byte v6, v3, v4

    .line 647
    return-object v3
.end method

.method protected responseCodeStr(I)Ljava/lang/String;
    .locals 2
    .param p1, "rcode"    # I

    .line 573
    :try_start_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->values()[Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsResponseCode;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 574
    :catch_0
    move-exception v0

    .line 575
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public run()V
    .locals 9

    .line 596
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->ensureMeasurementNecessary()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 599
    :cond_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v3, Landroid/system/OsConstants;->IPPROTO_UDP:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x1f4

    const/16 v8, 0x35

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 604
    nop

    .line 607
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mRandom:Ljava/util/Random;

    const v1, 0xdbba0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x186a0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "sixRandomDigits":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mSocketAddress:Ljava/net/SocketAddress;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->appendDnsToMeasurementDescription(Ljava/lang/String;Ljava/net/SocketAddress;)V

    .line 611
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->getDnsQueryPacket(Ljava/lang/String;)[B

    move-result-object v1

    .line 613
    .local v1, "dnsPacket":[B
    const/4 v2, 0x0

    .line 614
    .local v2, "count":I
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 615
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v5}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$500(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    sub-long/2addr v5, v7

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    .line 616
    add-int/lit8 v2, v2, 0x1

    .line 618
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v4, 0x0

    array-length v5, v1

    invoke-static {v3, v1, v4, v5}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 622
    nop

    .line 625
    const/16 v3, 0x200

    :try_start_2
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 626
    .local v3, "reply":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    .line 629
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_1

    .line 630
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {p0, v5}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->responseCodeStr(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 631
    :cond_1
    const-string v4, ""

    :goto_1
    nop

    .line 632
    .local v4, "rcodeStr":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 633
    goto :goto_2

    .line 634
    .end local v3    # "reply":Ljava/nio/ByteBuffer;
    .end local v4    # "rcodeStr":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 635
    .local v3, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 619
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 620
    .restart local v3    # "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 638
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v3, v3, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 639
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 642
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->close()V

    .line 643
    return-void

    .line 601
    .end local v0    # "sixRandomDigits":Ljava/lang/String;
    .end local v1    # "dnsPacket":[B
    .end local v2    # "count":I
    :catch_2
    move-exception v0

    .line 602
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 603
    return-void
.end method
