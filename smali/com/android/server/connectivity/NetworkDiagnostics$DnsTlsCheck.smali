.class Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;
.super Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;
.source "NetworkDiagnostics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkDiagnostics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsTlsCheck"
.end annotation


# static fields
.field private static final DNS_HEADER_SIZE:I = 0xc

.field private static final DNS_TLS_PORT:I = 0x355

.field private static final TCP_CONNECT_TIMEOUT_MS:I = 0x9c4

.field private static final TCP_TIMEOUT_MS:I = 0x7d0


# instance fields
.field private final mHostname:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/NetworkDiagnostics;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/lang/String;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V
    .locals 2
    .param p2, "hostname"    # Ljava/lang/String;
    .param p3, "target"    # Ljava/net/InetAddress;
    .param p4, "measurement"    # Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    .line 684
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    .line 685
    invoke-direct {p0, p1, p3, p4}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsUdpCheck;-><init>(Lcom/android/server/connectivity/NetworkDiagnostics;Ljava/net/InetAddress;Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;)V

    .line 687
    iput-object p2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mHostname:Ljava/lang/String;

    .line 688
    iget-object p1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DNS TLS dst{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mTarget:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} hostname{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mHostname:Ljava/lang/String;

    .line 689
    invoke-static {v1}, Landroid/text/TextUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->description:Ljava/lang/String;

    .line 690
    return-void
.end method

.method private sendDoTProbe(Ljavax/net/ssl/SSLSocket;)V
    .locals 10
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 713
    iget-object v0, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mRandom:Ljava/util/Random;

    const v1, 0xdbba0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    const v1, 0x186a0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 714
    .local v0, "sixRandomDigits":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->getDnsQueryPacket(Ljava/lang/String;)[B

    move-result-object v1

    .line 716
    .local v1, "dnsPacket":[B
    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-static {}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$100()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->startTime:J

    .line 717
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mTarget:Ljava/net/InetAddress;

    const/16 v4, 0x355

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const/16 v3, 0x9c4

    invoke-virtual {p1, v2, v3}, Ljavax/net/ssl/SSLSocket;->connect(Ljava/net/SocketAddress;I)V

    .line 720
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 721
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->appendDnsToMeasurementDescription(Ljava/lang/String;Ljava/net/SocketAddress;)V

    .line 723
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 724
    .local v2, "output":Ljava/io/DataOutputStream;
    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 725
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 727
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 728
    .local v3, "input":Ljava/io/DataInputStream;
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readShort()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v4

    .line 729
    .local v4, "replyLength":I
    new-array v5, v4, [B

    .line 730
    .local v5, "reply":[B
    const/4 v6, 0x0

    .line 731
    .local v6, "bytesRead":I
    :goto_0
    if-ge v6, v4, :cond_0

    .line 732
    sub-int v7, v4, v6

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/DataInputStream;->read([BII)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_0

    .line 735
    :cond_0
    const/16 v7, 0xc

    if-le v6, v7, :cond_1

    if-ne v6, v4, :cond_1

    .line 736
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1/1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x3

    aget-byte v9, v5, v9

    and-int/lit8 v9, v9, 0xf

    invoke-virtual {p0, v9}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->responseCodeStr(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordSuccess(Ljava/lang/String;)V

    goto :goto_1

    .line 738
    :cond_1
    iget-object v7, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "1/1 Read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes while expected to be "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 741
    :goto_1
    return-void
.end method

.method private setupSSLSocket()Ljavax/net/ssl/SSLSocket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 696
    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 697
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLSocket;->setSoTimeout(I)V

    .line 699
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mHostname:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 701
    new-instance v1, Ljavax/net/ssl/SNIHostName;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mHostname:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljavax/net/ssl/SNIHostName;-><init>(Ljava/lang/String;)V

    .line 702
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 703
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v2

    .line 704
    .local v2, "params":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {v2, v1}, Ljavax/net/ssl/SSLParameters;->setServerNames(Ljava/util/List;)V

    .line 705
    invoke-virtual {v0, v2}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 708
    .end local v1    # "names":Ljava/util/List;, "Ljava/util/List<Ljavax/net/ssl/SNIServerName;>;"
    .end local v2    # "params":Ljavax/net/ssl/SSLParameters;
    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->this$0:Lcom/android/server/connectivity/NetworkDiagnostics;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkDiagnostics;->access$300(Lcom/android/server/connectivity/NetworkDiagnostics;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Network;->bindSocket(Ljava/net/Socket;)V

    .line 709
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 745
    invoke-virtual {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->ensureMeasurementNecessary()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 748
    :cond_0
    const/16 v0, -0x7f

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    .line 750
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->setupSSLSocket()Ljavax/net/ssl/SSLSocket;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 751
    .local v0, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->sendDoTProbe(Ljavax/net/ssl/SSLSocket;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 752
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 754
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_1
    goto :goto_1

    .line 750
    .restart local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;
    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 752
    .end local v0    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p0    # "this":Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;
    :catch_0
    move-exception v0

    .line 753
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/server/connectivity/NetworkDiagnostics$DnsTlsCheck;->mMeasurement:Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/connectivity/NetworkDiagnostics$Measurement;->recordFailure(Ljava/lang/String;)V

    .line 755
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method
