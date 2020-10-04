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

    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 447
    return-void
.end method

.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 2
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 429
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 430
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 432
    iget p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mAddressFamily:I

    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p1, v0, :cond_0

    .line 433
    sget p1, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 434
    const/16 p1, 0x80

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 435
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string v0, "ICMPv6"

    iput-object v0, p1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    goto :goto_0

    .line 437
    :cond_0
    sget p1, Landroid/system/OsConstants;->IPPROTO_ICMP:I

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    .line 438
    const/16 p1, 0x8

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    .line 439
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    const-string v0, "ICMPv4"

    iput-object v0, p1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 442
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

    .line 443
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 452
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v0, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 456
    return-void

    .line 460
    :cond_0
    :try_start_0
    sget v5, Landroid/system/OsConstants;->SOCK_DGRAM:I

    iget v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mProtocol:I

    const-wide/16 v7, 0x64

    const-wide/16 v9, 0x12c

    const/4 v11, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->setupSocket(IIJJI)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 464
    nop

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-object v4, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " src{"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->getSocketAddressString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 468
    const/16 v0, 0x8

    new-array v0, v0, [B

    iget v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mIcmpType:I

    int-to-byte v1, v1

    const/4 v4, 0x0

    aput-byte v1, v0, v4

    const/4 v1, 0x1

    aput-byte v4, v0, v1

    const/4 v5, 0x2

    aput-byte v4, v0, v5

    const/4 v5, 0x3

    aput-byte v4, v0, v5

    const/4 v5, 0x4

    aput-byte v4, v0, v5

    const/4 v5, 0x5

    aput-byte v4, v0, v5

    const/4 v5, 0x6

    aput-byte v4, v0, v5

    const/4 v5, 0x7

    aput-byte v4, v0, v5

    .line 472
    .local v0, "icmpPacket":[B
    const/4 v5, 0x0

    .line 473
    .local v5, "count":I
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v7

    iput-wide v7, v6, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 474
    :goto_0
    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v8}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$400(Lcom/android/server/connectivity/NetworkDiagnostics;)J

    move-result-wide v8

    const-wide/16 v10, 0x190

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    .line 475
    add-int/lit8 v5, v5, 0x1

    .line 476
    array-length v6, v0

    sub-int/2addr v6, v1

    int-to-byte v7, v5

    aput-byte v7, v0, v6

    .line 478
    :try_start_1
    iget-object v6, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    array-length v7, v0

    invoke-static {v6, v0, v4, v7}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 482
    nop

    .line 485
    const/16 v6, 0x200

    :try_start_2
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 486
    .local v6, "reply":Ljava/nio/ByteBuffer;
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v7, v6}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    .line 488
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 489
    goto :goto_1

    .line 490
    .end local v6    # "reply":Ljava/nio/ByteBuffer;
    :catch_0
    move-exception v6

    .line 491
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 479
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 480
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 494
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v6, v1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    cmp-long v1, v6, v2

    if-nez v1, :cond_2

    .line 495
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 498
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->close()V

    .line 499
    return-void

    .line 461
    .end local v0    # "icmpPacket":[B
    .end local v5    # "count":I
    :catch_2
    move-exception v0

    .line 462
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$IcmpCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 463
    return-void
.end method
