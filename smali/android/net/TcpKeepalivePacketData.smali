.class public Landroid/net/TcpKeepalivePacketData;
.super Landroid/net/KeepalivePacketData;
.source "TcpKeepalivePacketData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/TcpKeepalivePacketData;",
            ">;"
        }
    .end annotation
.end field

.field private static final IPV4_HEADER_LENGTH:I = 0x14

.field private static final IPV6_HEADER_LENGTH:I = 0x28

.field private static final TAG:Ljava/lang/String; = "TcpKeepalivePacketData"

.field private static final TCP_HEADER_LENGTH:I = 0x14


# instance fields
.field public final ipTos:I

.field public final ipTtl:I

.field public final tcpAck:I

.field public final tcpSeq:I

.field public final tcpWnd:I

.field public final tcpWndScale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Landroid/net/TcpKeepalivePacketData$1;

    invoke-direct {v0}, Landroid/net/TcpKeepalivePacketData$1;-><init>()V

    sput-object v0, Landroid/net/TcpKeepalivePacketData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/net/TcpKeepalivePacketDataParcelable;[B)V
    .locals 7
    .param p1, "tcpDetails"    # Landroid/net/TcpKeepalivePacketDataParcelable;
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidPacketException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 67
    iget-object v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iget v3, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    iget-object v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 68
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    iget v5, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 67
    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Landroid/net/KeepalivePacketData;-><init>(Ljava/net/InetAddress;ILjava/net/InetAddress;I[B)V

    .line 69
    iget v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    .line 70
    iget v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    .line 72
    iget v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    .line 73
    iget v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    .line 74
    iget v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    .line 75
    iget v0, p1, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    .line 76
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 183
    invoke-direct {p0, p1}, Landroid/net/KeepalivePacketData;-><init>(Landroid/os/Parcel;)V

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    .line 190
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/net/TcpKeepalivePacketData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/net/TcpKeepalivePacketData$1;

    .line 38
    invoke-direct {p0, p1}, Landroid/net/TcpKeepalivePacketData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static buildV4Packet(Landroid/net/TcpKeepalivePacketDataParcelable;)[B
    .locals 6
    .param p0, "tcpDetails"    # Landroid/net/TcpKeepalivePacketDataParcelable;

    .line 106
    const/16 v0, 0x28

    .line 107
    .local v0, "length":I
    const/16 v1, 0x28

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 108
    .local v2, "buf":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 109
    const/16 v3, 0x45

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 110
    iget v3, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 112
    const/16 v1, 0x4000

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 113
    iget v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 114
    sget v1, Landroid/system/OsConstants;->IPPROTO_TCP:I

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 115
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 116
    .local v1, "ipChecksumOffset":I
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 117
    iget-object v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 118
    iget-object v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 119
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 120
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 121
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    const/16 v4, 0x5010

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 124
    iget v4, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    iget v5, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    shr-int/2addr v4, v5

    int-to-short v4, v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 125
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 126
    .local v4, "tcpChecksumOffset":I
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 128
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 130
    invoke-static {v2, v3}, Landroid/net/util/IpUtils;->ipChecksum(Ljava/nio/ByteBuffer;I)S

    move-result v5

    invoke-virtual {v2, v1, v5}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 131
    const/16 v5, 0x14

    invoke-static {v2, v3, v5, v5}, Landroid/net/util/IpUtils;->tcpChecksum(Ljava/nio/ByteBuffer;III)S

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public static tcpKeepalivePacket(Landroid/net/TcpKeepalivePacketDataParcelable;)Landroid/net/TcpKeepalivePacketData;
    .locals 3
    .param p0, "tcpDetails"    # Landroid/net/TcpKeepalivePacketDataParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SocketKeepalive$InvalidPacketException;
        }
    .end annotation

    .line 85
    const/16 v0, -0x15

    :try_start_0
    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    array-length v1, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    array-length v1, v1

    if-ne v1, v2, :cond_0

    .line 88
    invoke-static {p0}, Landroid/net/TcpKeepalivePacketData;->buildV4Packet(Landroid/net/TcpKeepalivePacketDataParcelable;)[B

    move-result-object v1

    .line 93
    .local v1, "packet":[B
    new-instance v2, Landroid/net/TcpKeepalivePacketData;

    invoke-direct {v2, p0, v1}, Landroid/net/TcpKeepalivePacketData;-><init>(Landroid/net/TcpKeepalivePacketDataParcelable;[B)V

    return-object v2

    .line 91
    .end local v1    # "packet":[B
    :cond_0
    new-instance v1, Landroid/net/SocketKeepalive$InvalidPacketException;

    invoke-direct {v1, v0}, Landroid/net/SocketKeepalive$InvalidPacketException;-><init>(I)V

    .end local p0    # "tcpDetails":Landroid/net/TcpKeepalivePacketDataParcelable;
    throw v1
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .restart local p0    # "tcpDetails":Landroid/net/TcpKeepalivePacketDataParcelable;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/net/UnknownHostException;
    new-instance v2, Landroid/net/SocketKeepalive$InvalidPacketException;

    invoke-direct {v2, v0}, Landroid/net/SocketKeepalive$InvalidPacketException;-><init>(I)V

    throw v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 141
    instance-of v0, p1, Landroid/net/TcpKeepalivePacketData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 142
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/net/TcpKeepalivePacketData;

    .line 143
    .local v0, "other":Landroid/net/TcpKeepalivePacketData;
    iget-object v2, p0, Landroid/net/TcpKeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/net/TcpKeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/net/TcpKeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    iget-object v3, v0, Landroid/net/TcpKeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    .line 144
    invoke-virtual {v2, v3}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/net/TcpKeepalivePacketData;->srcPort:I

    iget v3, v0, Landroid/net/TcpKeepalivePacketData;->srcPort:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/TcpKeepalivePacketData;->dstPort:I

    iget v3, v0, Landroid/net/TcpKeepalivePacketData;->dstPort:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    iget v3, v0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    iget v3, v0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    iget v3, v0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    iget v3, v0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    iget v3, v0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    iget v3, v0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 143
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 157
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->srcPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->dstPort:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 157
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toStableParcelable()Landroid/net/TcpKeepalivePacketDataParcelable;
    .locals 2

    .line 209
    new-instance v0, Landroid/net/TcpKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/TcpKeepalivePacketDataParcelable;-><init>()V

    .line 210
    .local v0, "parcel":Landroid/net/TcpKeepalivePacketDataParcelable;
    iget-object v1, p0, Landroid/net/TcpKeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcAddress:[B

    .line 211
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->srcPort:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->srcPort:I

    .line 212
    iget-object v1, p0, Landroid/net/TcpKeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstAddress:[B

    .line 213
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->dstPort:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->dstPort:I

    .line 214
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->seq:I

    .line 215
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->ack:I

    .line 216
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWnd:I

    .line 217
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->rcvWndScale:I

    .line 218
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->tos:I

    .line 219
    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    iput v1, v0, Landroid/net/TcpKeepalivePacketDataParcelable;->ttl:I

    .line 220
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "saddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " daddr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/TcpKeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " sport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->srcPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dport: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->dstPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wnd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " wndScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tos: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ttl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    invoke-super {p0, p1, p2}, Landroid/net/KeepalivePacketData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 174
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpSeq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpAck:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->tcpWndScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Landroid/net/TcpKeepalivePacketData;->ipTtl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    return-void
.end method
