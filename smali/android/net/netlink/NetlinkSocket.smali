.class public Landroid/net/netlink/NetlinkSocket;
.super Ljava/lang/Object;
.source "NetlinkSocket.java"


# static fields
.field public static final DEFAULT_RECV_BUFSIZE:I = 0x2000

.field public static final SOCKET_RECV_BUFSIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "NetlinkSocket"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkTimeout(J)V
    .locals 2
    .param p0, "timeoutMs"    # J

    .line 117
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_0

    .line 120
    return-void

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Negative timeouts not permitted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static connectToKernel(Ljava/io/FileDescriptor;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/net/SocketException;
        }
    .end annotation

    .line 113
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/net/util/SocketUtils;->makeNetlinkSocketAddress(II)Ljava/net/SocketAddress;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 114
    return-void
.end method

.method public static forProto(I)Ljava/io/FileDescriptor;
    .locals 4
    .param p0, "nlProto"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 107
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    invoke-static {v0, v1, p0}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 108
    .local v0, "fd":Ljava/io/FileDescriptor;
    sget v1, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v2, Landroid/system/OsConstants;->SO_RCVBUF:I

    const/high16 v3, 0x10000

    invoke-static {v0, v1, v2, v3}, Landroid/system/Os;->setsockoptInt(Ljava/io/FileDescriptor;III)V

    .line 109
    return-object v0
.end method

.method public static recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;
    .locals 4
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bufsize"    # I
    .param p2, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 130
    invoke-static {p2, p3}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 132
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p2, p3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 134
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 135
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {p0, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 136
    .local v1, "length":I
    if-ne v1, p1, :cond_0

    .line 137
    const-string v2, "NetlinkSocket"

    const-string/jumbo v3, "maximum read"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 140
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 141
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 142
    return-object v0
.end method

.method public static sendMessage(Ljava/io/FileDescriptor;[BIIJ)I
    .locals 3
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "bytes"    # [B
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .param p4, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 154
    invoke-static {p4, p5}, Landroid/net/netlink/NetlinkSocket;->checkTimeout(J)V

    .line 155
    sget v0, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v1, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p4, p5}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 156
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    return v0
.end method

.method public static sendOneShotKernelMessage(I[B)V
    .locals 12
    .param p0, "nlProto"    # I
    .param p1, "msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 58
    const-string v0, "Error in NetlinkSocket.sendOneShotKernelMessage"

    const-string v1, "NetlinkSocket"

    const-string v2, "Error in NetlinkSocket.sendOneShotKernelMessage"

    .line 59
    .local v2, "errPrefix":Ljava/lang/String;
    const-wide/16 v3, 0x12c

    .line 61
    .local v3, "IO_TIMEOUT":J
    invoke-static {p0}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v11

    .line 64
    .local v11, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    invoke-static {v11}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 65
    const/4 v7, 0x0

    array-length v8, p1

    const-wide/16 v9, 0x12c

    move-object v5, v11

    move-object v6, p1

    invoke-static/range {v5 .. v10}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    .line 66
    const/16 v5, 0x2000

    const-wide/16 v6, 0x12c

    invoke-static {v11, v5, v6, v7}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 68
    .local v5, "bytes":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .local v6, "response":Landroid/net/netlink/NetlinkMessage;
    const-string v7, "Error in NetlinkSocket.sendOneShotKernelMessage, errmsg="

    if-eqz v6, :cond_1

    :try_start_1
    instance-of v8, v6, Landroid/net/netlink/NetlinkErrorMessage;

    if-eqz v8, :cond_1

    move-object v8, v6

    check-cast v8, Landroid/net/netlink/NetlinkErrorMessage;

    .line 70
    invoke-virtual {v8}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 71
    move-object v8, v6

    check-cast v8, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-virtual {v8}, Landroid/net/netlink/NetlinkErrorMessage;->getNlMsgError()Landroid/net/netlink/StructNlMsgErr;

    move-result-object v8

    iget v8, v8, Landroid/net/netlink/StructNlMsgErr;->error:I
    :try_end_1
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    .local v8, "errno":I
    if-nez v8, :cond_0

    .line 80
    .end local v8    # "errno":I
    nop

    .line 99
    .end local v5    # "bytes":Ljava/nio/ByteBuffer;
    .end local v6    # "response":Landroid/net/netlink/NetlinkMessage;
    :try_start_2
    invoke-static {v11}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 102
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 103
    nop

    .line 104
    :goto_0
    return-void

    .line 76
    .restart local v5    # "bytes":Ljava/nio/ByteBuffer;
    .restart local v6    # "response":Landroid/net/netlink/NetlinkMessage;
    .restart local v8    # "errno":I
    :cond_0
    :try_start_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    new-instance v7, Landroid/system/ErrnoException;

    invoke-virtual {v6}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-direct {v7, v9, v10}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .end local v2    # "errPrefix":Ljava/lang/String;
    .end local v3    # "IO_TIMEOUT":J
    .end local v11    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "nlProto":I
    .end local p1    # "msg":[B
    throw v7

    .line 82
    .end local v8    # "errno":I
    .restart local v2    # "errPrefix":Ljava/lang/String;
    .restart local v3    # "IO_TIMEOUT":J
    .restart local v11    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "nlProto":I
    .restart local p1    # "msg":[B
    :cond_1
    if-nez v6, :cond_2

    .line 83
    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "raw bytes: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Landroid/net/netlink/NetlinkConstants;->hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .local v8, "errmsg":Ljava/lang/String;
    goto :goto_1

    .line 86
    .end local v8    # "errmsg":Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Landroid/net/netlink/NetlinkMessage;->toString()Ljava/lang/String;

    move-result-object v8

    .line 88
    .restart local v8    # "errmsg":Ljava/lang/String;
    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v7, Landroid/system/ErrnoException;

    sget v9, Landroid/system/OsConstants;->EPROTO:I

    invoke-direct {v7, v8, v9}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    .end local v2    # "errPrefix":Ljava/lang/String;
    .end local v3    # "IO_TIMEOUT":J
    .end local v11    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "nlProto":I
    .end local p1    # "msg":[B
    throw v7
    :try_end_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    .end local v5    # "bytes":Ljava/nio/ByteBuffer;
    .end local v6    # "response":Landroid/net/netlink/NetlinkMessage;
    .end local v8    # "errmsg":Ljava/lang/String;
    .restart local v2    # "errPrefix":Ljava/lang/String;
    .restart local v3    # "IO_TIMEOUT":J
    .restart local v11    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "nlProto":I
    .restart local p1    # "msg":[B
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 94
    :catch_1
    move-exception v5

    .line 95
    .local v5, "e":Ljava/net/SocketException;
    :try_start_4
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    new-instance v1, Landroid/system/ErrnoException;

    sget v6, Landroid/system/OsConstants;->EIO:I

    invoke-direct {v1, v0, v6, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .end local v2    # "errPrefix":Ljava/lang/String;
    .end local v3    # "IO_TIMEOUT":J
    .end local v11    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "nlProto":I
    .end local p1    # "msg":[B
    throw v1

    .line 91
    .end local v5    # "e":Ljava/net/SocketException;
    .restart local v2    # "errPrefix":Ljava/lang/String;
    .restart local v3    # "IO_TIMEOUT":J
    .restart local v11    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "nlProto":I
    .restart local p1    # "msg":[B
    :catch_2
    move-exception v5

    .line 92
    .local v5, "e":Ljava/io/InterruptedIOException;
    invoke-static {v1, v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    new-instance v1, Landroid/system/ErrnoException;

    sget v6, Landroid/system/OsConstants;->ETIMEDOUT:I

    invoke-direct {v1, v0, v6, v5}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    .end local v2    # "errPrefix":Ljava/lang/String;
    .end local v3    # "IO_TIMEOUT":J
    .end local v11    # "fd":Ljava/io/FileDescriptor;
    .end local p0    # "nlProto":I
    .end local p1    # "msg":[B
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 99
    .end local v5    # "e":Ljava/io/InterruptedIOException;
    .restart local v2    # "errPrefix":Ljava/lang/String;
    .restart local v3    # "IO_TIMEOUT":J
    .restart local v11    # "fd":Ljava/io/FileDescriptor;
    .restart local p0    # "nlProto":I
    .restart local p1    # "msg":[B
    :goto_2
    :try_start_5
    invoke-static {v11}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 102
    goto :goto_3

    .line 100
    :catch_3
    move-exception v1

    .line 103
    :goto_3
    throw v0
.end method
