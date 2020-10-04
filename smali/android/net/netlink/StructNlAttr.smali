.class public Landroid/net/netlink/StructNlAttr;
.super Ljava/lang/Object;
.source "StructNlAttr.java"


# static fields
.field public static final NLA_F_NESTED:I = 0x8000

.field public static final NLA_HEADERLEN:I = 0x4


# instance fields
.field private mByteOrder:Ljava/nio/ByteOrder;

.field public nla_len:S

.field public nla_type:S

.field public nla_value:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 98
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 98
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 103
    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 104
    return-void
.end method

.method public constructor <init>(SB)V
    .locals 2
    .param p1, "type"    # S
    .param p2, "value"    # B

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 98
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 107
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 109
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 110
    return-void
.end method

.method public constructor <init>(SI)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "value"    # I

    .line 124
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    .line 125
    return-void
.end method

.method public constructor <init>(SILjava/nio/ByteOrder;)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 128
    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 129
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 130
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 131
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 132
    return-void
.end method

.method public constructor <init>(SLjava/net/InetAddress;)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "ip"    # Ljava/net/InetAddress;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 98
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 135
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 136
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 137
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "value"    # S

    .line 113
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    .line 114
    return-void
.end method

.method public constructor <init>(SSLjava/nio/ByteOrder;)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 117
    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 118
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 120
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 121
    return-void
.end method

.method public varargs constructor <init>(S[Landroid/net/netlink/StructNlAttr;)V
    .locals 6
    .param p1, "type"    # S
    .param p2, "nested"    # [Landroid/net/netlink/StructNlAttr;

    .line 140
    invoke-direct {p0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    .line 141
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->makeNestedType(S)S

    move-result v0

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 143
    const/4 v0, 0x0

    .line 144
    .local v0, "payloadLength":I
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v0

    move v0, v2

    .end local v0    # "payloadLength":I
    .local v3, "payloadLength":I
    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v4, p2, v0

    .local v4, "nla":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v5

    add-int/2addr v3, v5

    .end local v4    # "nla":Landroid/net/netlink/StructNlAttr;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_0
    new-array v0, v3, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 147
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 148
    .local v0, "buf":Ljava/nio/ByteBuffer;
    array-length v1, p2

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, p2, v2

    .line 149
    .restart local v4    # "nla":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {v4, v0}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 148
    .end local v4    # "nla":Landroid/net/netlink/StructNlAttr;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 151
    :cond_1
    return-void
.end method

.method public static makeNestedType(S)S
    .locals 1
    .param p0, "type"    # S

    .line 40
    const v0, 0x8000

    or-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 74
    invoke-static {p0}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    .line 75
    .local v0, "struct":Landroid/net/netlink/StructNlAttr;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 80
    .local v1, "baseOffset":I
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 82
    iget-short v2, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 83
    .local v2, "valueLen":I
    add-int/lit8 v2, v2, -0x4

    .line 84
    if-lez v2, :cond_1

    .line 85
    new-array v3, v2, [B

    iput-object v3, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 86
    iget-object v3, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 87
    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 89
    :cond_1
    return-object v0

    .line 76
    .end local v1    # "baseOffset":I
    .end local v2    # "valueLen":I
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 6
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 48
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 54
    .local v1, "baseOffset":I
    new-instance v3, Landroid/net/netlink/StructNlAttr;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 56
    .local v3, "struct":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    .line 57
    .local v4, "originalOrder":Ljava/nio/ByteOrder;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 59
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 60
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_type:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    nop

    .line 65
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 66
    iget-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    if-ge v5, v2, :cond_1

    .line 68
    return-object v0

    .line 70
    :cond_1
    return-object v3

    .line 62
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v0

    .line 49
    .end local v1    # "baseOffset":I
    .end local v3    # "struct":Landroid/net/netlink/StructNlAttr;
    .end local v4    # "originalOrder":Ljava/nio/ByteOrder;
    :cond_2
    :goto_0
    return-object v0
.end method

.method private setValue([B)V
    .locals 1
    .param p1, "value"    # [B

    .line 198
    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 199
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz v0, :cond_0

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 200
    return-void
.end method


# virtual methods
.method public getAlignedLength()I
    .locals 1

    .line 154
    iget-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(S)I

    move-result v0

    return v0
.end method

.method public getValueAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 158
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 159
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 160
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 161
    return-object v0
.end method

.method public getValueAsInetAddress()Ljava/net/InetAddress;
    .locals 2

    .line 173
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 176
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "ignored":Ljava/net/UnknownHostException;
    return-object v1
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 165
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 166
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1

    .line 167
    :cond_1
    :goto_0
    return p1
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 183
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 184
    .local v0, "originalOrder":Ljava/nio/ByteOrder;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 186
    .local v1, "originalPosition":I
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 188
    :try_start_0
    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 189
    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 190
    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 193
    nop

    .line 194
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    return-void

    .line 192
    :catchall_0
    move-exception v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StructNlAttr{ nla_len{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nla_type{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nla_value{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 207
    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    return-object v0
.end method
