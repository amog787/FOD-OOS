.class public Landroid/net/netlink/RtNetlinkNeighborMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "RtNetlinkNeighborMessage.java"


# static fields
.field public static final NDA_CACHEINFO:S = 0x3s

.field public static final NDA_DST:S = 0x1s

.field public static final NDA_IFINDEX:S = 0x8s

.field public static final NDA_LLADDR:S = 0x2s

.field public static final NDA_MASTER:S = 0x9s

.field public static final NDA_PORT:S = 0x6s

.field public static final NDA_PROBES:S = 0x4s

.field public static final NDA_UNSPEC:S = 0x0s

.field public static final NDA_VLAN:S = 0x5s

.field public static final NDA_VNI:S = 0x7s


# instance fields
.field private mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

.field private mDestination:Ljava/net/InetAddress;

.field private mLinkLayerAddr:[B

.field private mNdmsg:Landroid/net/netlink/StructNdMsg;

.field private mNumProbes:I


# direct methods
.method private constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 2
    .param p1, "header"    # Landroid/net/netlink/StructNlMsgHdr;

    .line 170
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 171
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 172
    iput-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    .line 173
    iput-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 174
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    .line 175
    iput-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    .line 176
    return-void
.end method

.method private static findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 3
    .param p0, "attrType"    # S
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 52
    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_3

    .line 53
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    .line 54
    .local v0, "nlAttr":Landroid/net/netlink/StructNlAttr;
    if-nez v0, :cond_0

    .line 55
    goto :goto_1

    .line 57
    :cond_0
    iget-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    if-ne v1, p0, :cond_1

    .line 58
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v1

    return-object v1

    .line 60
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 61
    goto :goto_1

    .line 63
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    .end local v0    # "nlAttr":Landroid/net/netlink/StructNlAttr;
    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static newGetNeighborsRequest(I)[B
    .locals 5
    .param p0, "seqNo"    # I

    .line 117
    const/16 v0, 0x1c

    .line 118
    .local v0, "length":I
    const/16 v1, 0x1c

    new-array v2, v1, [B

    .line 119
    .local v2, "bytes":[B
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 120
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 122
    new-instance v4, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v4}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 123
    .local v4, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    iput v1, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 124
    const/16 v1, 0x1e

    iput-short v1, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 125
    const/16 v1, 0x301

    iput-short v1, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 126
    iput p0, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 127
    invoke-virtual {v4, v3}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 129
    new-instance v1, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v1}, Landroid/net/netlink/StructNdMsg;-><init>()V

    .line 130
    .local v1, "ndmsg":Landroid/net/netlink/StructNdMsg;
    invoke-virtual {v1, v3}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    .line 132
    return-object v2
.end method

.method public static newNewNeighborMessage(ILjava/net/InetAddress;SI[B)[B
    .locals 5
    .param p0, "seqNo"    # I
    .param p1, "ip"    # Ljava/net/InetAddress;
    .param p2, "nudState"    # S
    .param p3, "ifIndex"    # I
    .param p4, "llAddr"    # [B

    .line 141
    new-instance v0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 142
    .local v0, "nlmsghdr":Landroid/net/netlink/StructNlMsgHdr;
    const/16 v1, 0x1c

    iput-short v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 143
    const/16 v1, 0x105

    iput-short v1, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 144
    iput p0, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 146
    new-instance v1, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {v1, v0}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 147
    .local v1, "msg":Landroid/net/netlink/RtNetlinkNeighborMessage;
    new-instance v2, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v2}, Landroid/net/netlink/StructNdMsg;-><init>()V

    iput-object v2, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 148
    nop

    .line 149
    instance-of v3, p1, Ljava/net/Inet6Address;

    if-eqz v3, :cond_0

    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    goto :goto_0

    :cond_0
    sget v3, Landroid/system/OsConstants;->AF_INET:I

    :goto_0
    int-to-byte v3, v3

    iput-byte v3, v2, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    .line 150
    iget-object v2, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iput p3, v2, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    .line 151
    iget-object v2, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    iput-short p2, v2, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    .line 152
    iput-object p1, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    .line 153
    iput-object p4, v1, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 155
    invoke-virtual {v1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getRequiredSpace()I

    move-result v2

    new-array v2, v2, [B

    .line 156
    .local v2, "bytes":[B
    array-length v3, v2

    iput v3, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 157
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 158
    .local v3, "byteBuffer":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 159
    invoke-virtual {v1, v3}, Landroid/net/netlink/RtNetlinkNeighborMessage;->pack(Ljava/nio/ByteBuffer;)V

    .line 160
    return-object v2
.end method

.method private static packNlAttr(S[BLjava/nio/ByteBuffer;)V
    .locals 2
    .param p0, "nlType"    # S
    .param p1, "nlValue"    # [B
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 214
    new-instance v0, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    .line 215
    .local v0, "nlAttr":Landroid/net/netlink/StructNlAttr;
    iput-short p0, v0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 216
    iput-object p1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 217
    iget-object v1, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    int-to-short v1, v1

    iput-short v1, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 218
    invoke-virtual {v0, p2}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 219
    return-void
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/RtNetlinkNeighborMessage;
    .locals 6
    .param p0, "header"    # Landroid/net/netlink/StructNlMsgHdr;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 69
    new-instance v0, Landroid/net/netlink/RtNetlinkNeighborMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 71
    .local v0, "neighMsg":Landroid/net/netlink/RtNetlinkNeighborMessage;
    invoke-static {p1}, Landroid/net/netlink/StructNdMsg;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;

    move-result-object v1

    iput-object v1, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    .line 72
    if-nez v1, :cond_0

    .line 73
    const/4 v1, 0x0

    return-object v1

    .line 77
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 78
    .local v1, "baseOffset":I
    const/4 v2, 0x1

    invoke-static {v2, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    .line 79
    .local v2, "nlAttr":Landroid/net/netlink/StructNlAttr;
    if-eqz v2, :cond_1

    .line 80
    invoke-virtual {v2}, Landroid/net/netlink/StructNlAttr;->getValueAsInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    iput-object v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    .line 83
    :cond_1
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 84
    const/4 v3, 0x2

    invoke-static {v3, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    .line 85
    if-eqz v2, :cond_2

    .line 86
    iget-object v3, v2, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    iput-object v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 89
    :cond_2
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 90
    const/4 v3, 0x4

    invoke-static {v3, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_3

    .line 92
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/netlink/StructNlAttr;->getValueAsInt(I)I

    move-result v3

    iput v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    .line 95
    :cond_3
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 96
    const/4 v3, 0x3

    invoke-static {v3, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->findNextAttrOfType(SLjava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v2

    .line 97
    if-eqz v2, :cond_4

    .line 98
    invoke-virtual {v2}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v3}, Landroid/net/netlink/StructNdaCacheInfo;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdaCacheInfo;

    move-result-object v3

    iput-object v3, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    .line 101
    :cond_4
    const/16 v3, 0x1c

    .line 102
    .local v3, "kMinConsumed":I
    iget-object v4, v0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    iget v4, v4, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    add-int/lit8 v4, v4, -0x1c

    invoke-static {v4}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v4

    .line 104
    .local v4, "kAdditionalSpace":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-ge v5, v4, :cond_5

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 107
    :cond_5
    add-int v5, v1, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 110
    :goto_0
    return-object v0
.end method


# virtual methods
.method public getCacheInfo()Landroid/net/netlink/StructNdaCacheInfo;
    .locals 1

    .line 195
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    return-object v0
.end method

.method public getDestination()Ljava/net/InetAddress;
    .locals 1

    .line 183
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    return-object v0
.end method

.method public getLinkLayerAddress()[B
    .locals 1

    .line 187
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    return-object v0
.end method

.method public getNdHeader()Landroid/net/netlink/StructNdMsg;
    .locals 1

    .line 179
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    return-object v0
.end method

.method public getProbes()I
    .locals 1

    .line 191
    iget v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    return v0
.end method

.method public getRequiredSpace()I
    .locals 2

    .line 199
    const/16 v0, 0x1c

    .line 200
    .local v0, "spaceRequired":I
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-eqz v1, :cond_0

    .line 201
    nop

    .line 202
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    .line 201
    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 204
    :cond_0
    iget-object v1, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    if-eqz v1, :cond_1

    .line 205
    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 210
    :cond_1
    return v0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 222
    invoke-virtual {p0}, Landroid/net/netlink/RtNetlinkNeighborMessage;->getHeader()Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    .line 223
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNdMsg;->pack(Ljava/nio/ByteBuffer;)V

    .line 225
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 226
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    .line 228
    :cond_0
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    if-eqz v0, :cond_1

    .line 229
    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Landroid/net/netlink/RtNetlinkNeighborMessage;->packNlAttr(S[BLjava/nio/ByteBuffer;)V

    .line 231
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 235
    iget-object v0, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mDestination:Ljava/net/InetAddress;

    const-string v1, ""

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "ipLiteral":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RtNetlinkNeighborMessage{ nlmsghdr{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    iget-object v3, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    if-nez v3, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v3}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, ndmsg{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    iget-object v3, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNdmsg:Landroid/net/netlink/StructNdMsg;

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Landroid/net/netlink/StructNdMsg;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, destination{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} linklayeraddr{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mLinkLayerAddr:[B

    .line 240
    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} probes{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mNumProbes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} cacheinfo{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-object v3, p0, Landroid/net/netlink/RtNetlinkNeighborMessage;->mCacheInfo:Landroid/net/netlink/StructNdaCacheInfo;

    if-nez v3, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Landroid/net/netlink/StructNdaCacheInfo;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 236
    return-object v1
.end method
