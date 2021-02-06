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

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteOrder;)V
    .locals 1
    .param p1, "byteOrder"    # Ljava/nio/ByteOrder;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 101
    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 102
    return-void
.end method

.method public constructor <init>(SB)V
    .locals 2
    .param p1, "type"    # S
    .param p2, "value"    # B

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 105
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 106
    const/4 v0, 0x1

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 107
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    .line 108
    return-void
.end method

.method public constructor <init>(SI)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "value"    # I

    .line 122
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    .line 123
    return-void
.end method

.method public constructor <init>(SILjava/nio/ByteOrder;)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "value"    # I
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 126
    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 127
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 128
    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 129
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 130
    return-void
.end method

.method public constructor <init>(SLjava/net/InetAddress;)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "ip"    # Ljava/net/InetAddress;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x4

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 96
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    .line 133
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 134
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 135
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "value"    # S

    .line 111
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    .line 112
    return-void
.end method

.method public constructor <init>(SSLjava/nio/ByteOrder;)V
    .locals 1
    .param p1, "type"    # S
    .param p2, "value"    # S
    .param p3, "order"    # Ljava/nio/ByteOrder;

    .line 115
    invoke-direct {p0, p3}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 116
    iput-short p1, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [B

    invoke-direct {p0, v0}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 118
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 119
    return-void
.end method

.method public varargs constructor <init>(S[Landroid/net/netlink/StructNlAttr;)V
    .locals 6
    .param p1, "type"    # S
    .param p2, "nested"    # [Landroid/net/netlink/StructNlAttr;

    .line 138
    invoke-direct {p0}, Landroid/net/netlink/StructNlAttr;-><init>()V

    .line 139
    invoke-static {p1}, Landroid/net/netlink/StructNlAttr;->makeNestedType(S)S

    move-result v0

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "payloadLength":I
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    .local v4, "nla":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {v4}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v5

    add-int/2addr v0, v5

    .end local v4    # "nla":Landroid/net/netlink/StructNlAttr;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 143
    :cond_0
    new-array v1, v0, [B

    invoke-direct {p0, v1}, Landroid/net/netlink/StructNlAttr;->setValue([B)V

    .line 145
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 146
    .local v1, "buf":Ljava/nio/ByteBuffer;
    array-length v3, p2

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, p2, v2

    .line 147
    .restart local v4    # "nla":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {v4, v1}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    .line 146
    .end local v4    # "nla":Landroid/net/netlink/StructNlAttr;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 149
    :cond_1
    return-void
.end method

.method public static makeNestedType(S)S
    .locals 1
    .param p0, "type"    # S

    .line 38
    const v0, 0x8000

    or-int/2addr v0, p0

    int-to-short v0, v0

    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;
    .locals 5
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 72
    invoke-static {p0}, Landroid/net/netlink/StructNlAttr;->peek(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlAttr;

    move-result-object v0

    .line 73
    .local v0, "struct":Landroid/net/netlink/StructNlAttr;
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 78
    .local v1, "baseOffset":I
    add-int/lit8 v2, v1, 0x4

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 80
    iget-short v2, v0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    const v3, 0xffff

    and-int/2addr v2, v3

    .line 81
    .local v2, "valueLen":I
    add-int/lit8 v2, v2, -0x4

    .line 82
    if-lez v2, :cond_1

    .line 83
    new-array v3, v2, [B

    iput-object v3, v0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 84
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 85
    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 87
    :cond_1
    return-object v0

    .line 74
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

    .line 46
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 52
    .local v1, "baseOffset":I
    new-instance v3, Landroid/net/netlink/StructNlAttr;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/netlink/StructNlAttr;-><init>(Ljava/nio/ByteOrder;)V

    .line 54
    .local v3, "struct":Landroid/net/netlink/StructNlAttr;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v4

    .line 55
    .local v4, "originalOrder":Ljava/nio/ByteOrder;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    :try_start_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 58
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v5

    iput-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_type:S
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    nop

    .line 63
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 64
    iget-short v5, v3, Landroid/net/netlink/StructNlAttr;->nla_len:S

    if-ge v5, v2, :cond_1

    .line 66
    return-object v0

    .line 68
    :cond_1
    return-object v3

    .line 60
    :catchall_0
    move-exception v0

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 61
    throw v0

    .line 47
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

    .line 196
    iput-object p1, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    .line 197
    if-eqz p1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    .line 198
    return-void
.end method


# virtual methods
.method public getAlignedLength()I
    .locals 1

    .line 152
    iget-short v0, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(S)I

    move-result v0

    return v0
.end method

.method public getValueAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .line 156
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 158
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Landroid/net/netlink/StructNlAttr;->mByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 159
    return-object v0
.end method

.method public getValueAsInetAddress()Ljava/net/InetAddress;
    .locals 2

    .line 171
    iget-object v0, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 174
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    .local v0, "ignored":Ljava/net/UnknownHostException;
    return-object v1
.end method

.method public getValueAsInt(I)I
    .locals 3
    .param p1, "defaultValue"    # I

    .line 163
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 164
    .local v0, "byteBuffer":Ljava/nio/ByteBuffer;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getValueAsByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    return v1

    .line 165
    :cond_1
    :goto_0
    return p1
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 181
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    .line 182
    .local v0, "originalOrder":Ljava/nio/ByteOrder;
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 184
    .local v1, "originalPosition":I
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 186
    :try_start_0
    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_len:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 187
    iget-short v2, p0, Landroid/net/netlink/StructNlAttr;->nla_type:S

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 188
    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/net/netlink/StructNlAttr;->nla_value:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_0
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 191
    nop

    .line 192
    invoke-virtual {p0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    return-void

    .line 190
    :catchall_0
    move-exception v2

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 191
    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 202
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

    .line 205
    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->hexify([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    return-object v0
.end method
