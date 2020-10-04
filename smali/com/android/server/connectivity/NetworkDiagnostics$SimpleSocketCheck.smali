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

    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 380
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 3
    .param p2, "source"    # Ljava/net/InetAddress;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 353
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p4, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 356
    instance-of v0, p3, Ljava/net/Inet6Address;

    if-eqz v0, :cond_2

    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, "targetWithScopeId":Ljava/net/Inet6Address;
    invoke-virtual {p3}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$200(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 360
    const/4 v1, 0x0

    .line 361
    :try_start_0
    invoke-virtual {p3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$200(Lcom/android/server/connectivity/NetworkDiagnostics;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 360
    invoke-static {v1, v2, p1}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    .end local v0    # "targetWithScopeId":Ljava/net/Inet6Address;
    .local p1, "targetWithScopeId":Ljava/net/Inet6Address;
    goto :goto_0

    .line 362
    .end local p1    # "targetWithScopeId":Ljava/net/Inet6Address;
    .restart local v0    # "targetWithScopeId":Ljava/net/Inet6Address;
    :catch_0
    move-exception p1

    .line 363
    .local p1, "e":Ljava/net/UnknownHostException;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {p1}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 366
    .end local p1    # "e":Ljava/net/UnknownHostException;
    :cond_0
    move-object p1, v0

    .end local v0    # "targetWithScopeId":Ljava/net/Inet6Address;
    .local p1, "targetWithScopeId":Ljava/net/Inet6Address;
    :goto_0
    if-eqz p1, :cond_1

    move-object v0, p1

    goto :goto_1

    :cond_1
    move-object v0, p3

    :goto_1
    iput-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 367
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    iput v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    .line 368
    .end local p1    # "targetWithScopeId":Ljava/net/Inet6Address;
    goto :goto_2

    .line 369
    :cond_2
    iput-object p3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    .line 370
    sget p1, Landroid/system/OsConstants;->AF_INET:I

    iput p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    .line 375
    :goto_2
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    .line 376
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 417
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 418
    return-void
.end method

.method protected getSocketAddressString()Ljava/lang/String;
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    check-cast v0, Ljava/net/InetSocketAddress;

    .line 409
    .local v0, "inetSockAddr":Ljava/net/InetSocketAddress;
    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 411
    .local v1, "localAddr":Ljava/net/InetAddress;
    instance-of v2, v1, Ljava/net/Inet6Address;

    if-eqz v2, :cond_0

    const-string v2, "[%s]:%d"

    goto :goto_0

    :cond_0
    const-string v2, "%s:%d"

    :goto_0
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 412
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 410
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
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

    .line 385
    const/16 v0, -0x7f

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v0

    .line 388
    .local v0, "oldTag":I
    :try_start_0
    iget v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mAddressFamily:I

    invoke-static {v1, p1, p2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 391
    nop

    .line 393
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    .line 394
    invoke-static {p3, p4}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    .line 393
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 395
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    sget v2, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v3, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    .line 396
    invoke-static {p5, p6}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v4

    .line 395
    invoke-static {v1, v2, v3, v4}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 398
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$300(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-virtual {v1, v2}, Landroid/net/Network;->bindSocket(Ljava/io/FileDescriptor;)V

    .line 399
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSource:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 400
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 402
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mTarget:Ljava/net/InetAddress;

    invoke-static {v1, v2, p7}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    .line 403
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mFileDescriptor:Ljava/io/FileDescriptor;

    invoke-static {v1}, Landroid/system/Os;->getsockname(Ljava/io/FileDescriptor;)Ljava/net/SocketAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$SimpleSocketCheck;->mSocketAddress:Ljava/net/SocketAddress;

    .line 404
    return-void

    .line 390
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v1
.end method
