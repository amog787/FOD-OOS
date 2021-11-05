.class Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;
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
    name = "IcmpCheck"
.end annotation


# static fields
.field private static final PACKET_BUFSIZE:I = 0x200

.field private static final TIMEOUT_RECV:I = 0x12c

.field private static final TIMEOUT_SEND:I = 0x64


# instance fields
.field private final mIcmpType:I

.field private final mProtocol:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 1
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 510
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 511
    return-void
.end method

.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 2
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 493
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 494
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 496
    iget p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mAddressFamily:I

    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_0

    .line 497
    sget p1, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 498
    const/16 p1, 0x80

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 499
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string v0, "ICMPv6"

    iput-object v0, p1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    goto :goto_0

    .line 501
    :cond_0
    sget p1, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 502
    const/16 p1, 0x8

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 503
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string v0, "ICMPv4"

    iput-object v0, p1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 506
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " dst{"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mTarget:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 507
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 515
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->ensureMeasurementNecessary()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 518
    :cond_0
    :try_start_0
    sget v2, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    const-wide/16 v4, 0x64

    const-wide/16 v6, 0x12c

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 522
    nop

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-object v2, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " src{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mSocketAddress:Ljava/net/SocketAddress;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$400(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 526
    const/16 v0, 0x8

    new-array v0, v0, [B

    iget v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/4 v1, 0x1

    aput-byte v2, v0, v1

    const/4 v3, 0x2

    aput-byte v2, v0, v3

    const/4 v3, 0x3

    aput-byte v2, v0, v3

    const/4 v3, 0x4

    aput-byte v2, v0, v3

    const/4 v3, 0x5

    aput-byte v2, v0, v3

    const/4 v3, 0x6

    aput-byte v2, v0, v3

    const/4 v3, 0x7

    aput-byte v2, v0, v3

    .line 530
    .local v0, "icmpPacket":[B
    const/4 v3, 0x0

    .line 531
    .local v3, "count":I
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 532
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v6}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$500(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    move-result-wide v6

    const-wide/16 v8, 0x190

    sub-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 533
    add-int/lit8 v3, v3, 0x1

    .line 534
    array-length v4, v0

    sub-int/2addr v4, v1

    int-to-byte v5, v3

    aput-byte v5, v0, v4

    .line 536
    :try_start_1
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v5, v0

    invoke-static {v4, v0, v2, v5}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 540
    nop

    .line 543
    const/16 v4, 0x200

    :try_start_2
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 544
    .local v4, "reply":Ljava/nio/ByteBuffer;
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v5, v4}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    .line 546
    iget-object v5, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "1/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 547
    goto :goto_1

    .line 548
    .end local v4    # "reply":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v4

    .line 549
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 537
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 552
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v1, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v1, v4

    if-nez v1, :cond_2

    .line 553
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 556
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->close()V

    .line 557
    return-void

    .line 519
    .end local v0    # "icmpPacket":[B
    .end local v3    # "count":I
    :catch_2
    move-exception v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 521
    return-void
.end method
