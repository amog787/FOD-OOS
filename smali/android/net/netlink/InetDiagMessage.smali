.class public Landroid/net/netlink/InetDiagMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "InetDiagMessage.java"


# static fields
.field private static final FAMILY:[I

.field public static final TAG:Ljava/lang/String; = "InetDiagMessage"

.field private static final TIMEOUT_MS:I = 0x1f4


# instance fields
.field public mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 134
    const/4 v0, 0x2

    new-array v0, v0, [I

    sget v1, Landroid/system/OsConstants;->AF_INET6:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sput-object v0, Landroid/net/netlink/InetDiagMessage;->FAMILY:[I

    return-void
.end method

.method private constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 1
    .param p1, "header"    # Landroid/net/netlink/StructNlMsgHdr;

    .line 105
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 106
    new-instance v0, Landroid/net/netlink/StructInetDiagMsg;

    invoke-direct {v0}, Landroid/net/netlink/StructInetDiagMsg;-><init>()V

    iput-object v0, p0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    .line 107
    return-void
.end method

.method public static InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IS)[B
    .locals 8
    .param p0, "protocol"    # I
    .param p1, "local"    # Ljava/net/InetSocketAddress;
    .param p2, "remote"    # Ljava/net/InetSocketAddress;
    .param p3, "family"    # I
    .param p4, "flags"    # S

    .line 58
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v7}, Landroid/net/netlink/InetDiagMessage;->InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISIII)[B

    move-result-object v0

    return-object v0
.end method

.method public static InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISIII)[B
    .locals 13
    .param p0, "protocol"    # I
    .param p1, "local"    # Ljava/net/InetSocketAddress;
    .param p2, "remote"    # Ljava/net/InetSocketAddress;
    .param p3, "family"    # I
    .param p4, "flags"    # S
    .param p5, "pad"    # I
    .param p6, "idiagExt"    # I
    .param p7, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 86
    const/16 v0, 0x48

    new-array v0, v0, [B

    .line 87
    .local v0, "bytes":[B
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 88
    .local v1, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 90
    new-instance v2, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v2}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 91
    .local v2, "nlMsgHdr":Landroid/net/netlink/StructNlMsgHdr;
    array-length v3, v0

    iput v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 92
    const/16 v3, 0x14

    iput-short v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 93
    move/from16 v3, p4

    iput-short v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 94
    invoke-virtual {v2, v1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 95
    new-instance v12, Landroid/net/netlink/StructInetDiagReqV2;

    move-object v4, v12

    move v5, p0

    move-object v6, p1

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v4 .. v11}, Landroid/net/netlink/StructInetDiagReqV2;-><init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IIII)V

    .line 98
    .local v4, "inetDiagReqV2":Landroid/net/netlink/StructInetDiagReqV2;
    invoke-virtual {v4, v1}, Landroid/net/netlink/StructInetDiagReqV2;->pack(Ljava/nio/ByteBuffer;)V

    .line 99
    return-object v0
.end method

.method public static getConnectionOwnerUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)I
    .locals 6
    .param p0, "protocol"    # I
    .param p1, "local"    # Ljava/net/InetSocketAddress;
    .param p2, "remote"    # Ljava/net/InetSocketAddress;

    .line 192
    const-string v0, "InetDiagMessage"

    const/4 v1, -0x1

    .line 193
    .local v1, "uid":I
    const/4 v2, 0x0

    .line 195
    .local v2, "fd":Ljava/io/FileDescriptor;
    :try_start_0
    sget v3, Landroid/system/OsConstants;->NETLINK_INET_DIAG:I

    invoke-static {v3}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v3

    move-object v2, v3

    .line 196
    invoke-static {v2}, Landroid/net/netlink/NetlinkSocket;->connectToKernel(Ljava/io/FileDescriptor;)V

    .line 197
    invoke-static {p0, p1, p2, v2}, Landroid/net/netlink/InetDiagMessage;->lookupUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/io/FileDescriptor;)I

    move-result v3
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v3

    .line 202
    if-eqz v2, :cond_0

    .line 204
    :try_start_1
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 207
    :goto_0
    goto :goto_1

    .line 205
    :catch_0
    move-exception v3

    .line 206
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 202
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 198
    :catch_1
    move-exception v3

    .line 200
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 202
    nop

    .end local v3    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_0

    .line 204
    :try_start_3
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 210
    :cond_0
    :goto_1
    return v1

    .line 202
    :goto_2
    if-eqz v2, :cond_1

    .line 204
    :try_start_4
    invoke-static {v2}, Landroid/net/util/SocketUtils;->closeSocket(Ljava/io/FileDescriptor;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 207
    goto :goto_3

    .line 205
    :catch_2
    move-exception v4

    .line 206
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v3
.end method

.method private static lookupUid(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Ljava/io/FileDescriptor;)I
    .locals 13
    .param p0, "protocol"    # I
    .param p1, "local"    # Ljava/net/InetSocketAddress;
    .param p2, "remote"    # Ljava/net/InetSocketAddress;
    .param p3, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 141
    move v7, p0

    sget-object v0, Landroid/net/netlink/InetDiagMessage;->FAMILY:[I

    array-length v8, v0

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const/4 v11, -0x1

    if-ge v10, v8, :cond_2

    aget v12, v0, v10

    .line 147
    .local v12, "family":I
    sget v1, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v7, v1, :cond_0

    .line 148
    const/4 v5, 0x1

    move v1, p0

    move-object v2, p2

    move-object v3, p1

    move v4, v12

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v1

    .local v1, "uid":I
    goto :goto_1

    .line 150
    .end local v1    # "uid":I
    :cond_0
    const/4 v5, 0x1

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v12

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v1

    .line 152
    .restart local v1    # "uid":I
    :goto_1
    if-eq v1, v11, :cond_1

    .line 153
    return v1

    .line 141
    .end local v12    # "family":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "uid":I
    :cond_2
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne v7, v0, :cond_5

    .line 166
    :try_start_0
    new-instance v3, Ljava/net/InetSocketAddress;

    const-string v0, "::"

    .line 167
    invoke-static {v0}, Ljava/net/Inet6Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-direct {v3, v0, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 168
    .local v3, "wildcard":Ljava/net/InetSocketAddress;
    sget v4, Landroid/system/OsConstants;->AF_INET6:I

    const/16 v5, 0x301

    move v1, p0

    move-object v2, p1

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v0

    .line 170
    .local v0, "uid":I
    if-eq v0, v11, :cond_3

    .line 171
    return v0

    .line 173
    :cond_3
    new-instance v1, Ljava/net/InetSocketAddress;

    const-string v2, "0.0.0.0"

    invoke-static {v2}, Ljava/net/Inet4Address;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-direct {v1, v2, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object v3, v1

    .line 174
    sget v4, Landroid/system/OsConstants;->AF_INET:I

    const/16 v5, 0x301

    move v1, p0

    move-object v2, p1

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Landroid/net/netlink/InetDiagMessage;->lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I

    move-result v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 176
    if-eq v0, v11, :cond_4

    .line 177
    return v0

    .line 181
    .end local v3    # "wildcard":Ljava/net/InetSocketAddress;
    :cond_4
    goto :goto_2

    .line 179
    .end local v0    # "uid":I
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/net/UnknownHostException;
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InetDiagMessage"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_5
    :goto_2
    return v11
.end method

.method private static lookupUidByFamily(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;ISLjava/io/FileDescriptor;)I
    .locals 7
    .param p0, "protocol"    # I
    .param p1, "local"    # Ljava/net/InetSocketAddress;
    .param p2, "remote"    # Ljava/net/InetSocketAddress;
    .param p3, "family"    # I
    .param p4, "flags"    # S
    .param p5, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 119
    invoke-static {p0, p1, p2, p3, p4}, Landroid/net/netlink/InetDiagMessage;->InetDiagReqV2(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IS)[B

    move-result-object v6

    .line 120
    .local v6, "msg":[B
    array-length v3, v6

    const/4 v2, 0x0

    const-wide/16 v4, 0x1f4

    move-object v0, p5

    move-object v1, v6

    invoke-static/range {v0 .. v5}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    .line 121
    const/16 v0, 0x2000

    const-wide/16 v1, 0x1f4

    invoke-static {p5, v0, v1, v2}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 123
    .local v0, "response":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Landroid/net/netlink/NetlinkMessage;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkMessage;

    move-result-object v1

    .line 124
    .local v1, "nlMsg":Landroid/net/netlink/NetlinkMessage;
    invoke-virtual {v1}, Landroid/net/netlink/NetlinkMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v2

    .line 125
    .local v2, "hdr":Landroid/net/netlink/StructNlMsgHdr;
    iget-short v3, v2, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 v4, -0x1

    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    .line 126
    return v4

    .line 128
    :cond_0
    instance-of v3, v1, Landroid/net/netlink/InetDiagMessage;

    if-eqz v3, :cond_1

    .line 129
    move-object v3, v1

    check-cast v3, Landroid/net/netlink/InetDiagMessage;

    iget-object v3, v3, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    iget v3, v3, Landroid/net/netlink/StructInetDiagMsg;->idiag_uid:I

    return v3

    .line 131
    :cond_1
    return v4
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/InetDiagMessage;
    .locals 2
    .param p0, "header"    # Landroid/net/netlink/StructNlMsgHdr;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 110
    new-instance v0, Landroid/net/netlink/InetDiagMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/InetDiagMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 111
    .local v0, "msg":Landroid/net/netlink/InetDiagMessage;
    invoke-static {p1}, Landroid/net/netlink/StructInetDiagMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructInetDiagMsg;

    move-result-object v1

    iput-object v1, v0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    .line 112
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InetDiagMessage{ nlmsghdr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-object v1, p0, Landroid/net/netlink/InetDiagMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/netlink/InetDiagMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, inet_diag_msg{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v1, p0, Landroid/net/netlink/InetDiagMessage;->mStructInetDiagMsg:Landroid/net/netlink/StructInetDiagMsg;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/net/netlink/StructInetDiagMsg;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    return-object v0
.end method
