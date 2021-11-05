.class Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;
.super Ljava/lang/Object;
.source "NetworkDiagnostics.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleSocketCheck"
.end annotation


# instance fields
.field protected final mAddressFamily:I

.field protected mFileDescriptor:Ljava/io/FileDescriptor;

.field protected final mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

.field protected mSocketAddress:Ljava/net/SocketAddress;

.field protected final mSource:Ljava/net/InetAddress;

.field protected final mTarget:Ljava/net/InetAddress;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method protected constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 1
    .param p2, "target"    # Ljava/net/InetAddress;
    .param p3, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 442
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 443
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 3
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 416
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 419
    instance-of v0, p3, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    .line 420
    const/4 v0, 0x0

    .line 421
    .local v0, "targetWithScopeId":Ljava/net/Inet6Address;
    invoke-virtual {p3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$200(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 423
    const/4 v1, 0x0

    .line 424
    :try_start_0
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$200(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 423
    invoke-static {v1, v2, p1}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    .line 427
    goto :goto_0

    .line 425
    :catch_0
    move-exception p1

    .line 426
    .local p1, "e":Ljava/net/UnknownHostException;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 429
    .end local p1    # "e":Ljava/net/UnknownHostException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object p1, v0

    goto :goto_1

    :cond_1
    move-object p1, p3

    :goto_1
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 430
    sget p1, Landroid/system/OsConstants;->AF_INET6:I

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    .line 431
    .end local v0    # "targetWithScopeId":Ljava/net/Inet6Address;
    goto :goto_2

    .line 432
    :cond_2
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 433
    sget p1, Landroid/system/OsConstants;->AF_INET:I

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    .line 438
    :goto_2
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    .line 439
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 482
    return-void
.end method

.method protected ensureMeasurementNecessary()Z
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    iget-wide v0, v0, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->finishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v0}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$000(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 476
    const/4 v0, 0x1

    return v0
.end method

.method protected setupSocket(IIJJI)V
    .locals 5
    .param p1, "sockType"    # I
    .param p2, "protocol"    # I
    .param p3, "writeTimeout"    # J
    .param p5, "readTimeout"    # J
    .param p7, "dstPort"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    const/16 v0, -0x7f

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    .line 451
    .local v0, "oldTag":I
    :try_start_0
    iget v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    invoke-static {v1, p1, p2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 456
    nop

    .line 458
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 459
    invoke-static {p3, p4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    .line 458
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 460
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 461
    invoke-static {p5, p6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    .line 460
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 463
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$300(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 464
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 465
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 467
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    invoke-static {v1, v2, p7}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 468
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    .line 469
    return-void

    .line 455
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 456
    throw v1
.end method
