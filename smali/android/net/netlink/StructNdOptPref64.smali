.class public Landroid/net/netlink/StructNdOptPref64;
.super Landroid/net/netlink/NdOption;
.source "StructNdOptPref64.java"


# static fields
.field public static final LENGTH:B = 0x2t

.field public static final STRUCT_SIZE:I = 0x10

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE:I = 0x26


# instance fields
.field public final lifetime:I

.field public final prefix:Landroid/net/IpPrefix;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Landroid/net/netlink/StructNdOptPref64;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/netlink/StructNdOptPref64;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/IpPrefix;I)V
    .locals 3
    .param p1, "prefix"    # Landroid/net/IpPrefix;
    .param p2, "lifetime"    # I

    .line 95
    const/16 v0, 0x26

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/net/netlink/NdOption;-><init>(BI)V

    .line 97
    const-string/jumbo v0, "prefix must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/netlink/StructNdOptPref64;->prefixLengthToPlc(I)I

    .line 102
    iput-object p1, p0, Landroid/net/netlink/StructNdOptPref64;->prefix:Landroid/net/IpPrefix;

    .line 104
    if-ltz p2, :cond_0

    const v0, 0xfff8

    if-gt p2, v0, :cond_0

    .line 107
    and-int/2addr v0, p2

    iput v0, p0, Landroid/net/netlink/StructNdOptPref64;->lifetime:I

    .line 108
    return-void

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid lifetime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must be an IPv6 prefix: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/net/netlink/NdOption;-><init>(BI)V

    .line 112
    iget-byte v0, p0, Landroid/net/netlink/StructNdOptPref64;->type:B

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    .line 113
    iget v0, p0, Landroid/net/netlink/StructNdOptPref64;->length:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v0

    .line 116
    .local v0, "scaledLifetimePlc":I
    const v1, 0xfff8

    and-int/2addr v1, v0

    iput v1, p0, Landroid/net/netlink/StructNdOptPref64;->lifetime:I

    .line 118
    const/16 v1, 0x10

    new-array v1, v1, [B

    .line 119
    .local v1, "addressBytes":[B
    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 122
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .local v2, "addr":Ljava/net/InetAddress;
    nop

    .line 126
    new-instance v3, Landroid/net/IpPrefix;

    and-int/lit8 v4, v0, 0x7

    invoke-static {v4}, Landroid/net/netlink/StructNdOptPref64;->plcToPrefixLength(I)I

    move-result v4

    invoke-direct {v3, v2, v4}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    iput-object v3, p0, Landroid/net/netlink/StructNdOptPref64;->prefix:Landroid/net/IpPrefix;

    .line 127
    return-void

    .line 123
    .end local v2    # "addr":Ljava/net/InetAddress;
    :catch_0
    move-exception v2

    .line 124
    .local v2, "e":Ljava/net/UnknownHostException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "16-byte array not valid InetAddress?"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 113
    .end local v0    # "scaledLifetimePlc":I
    .end local v1    # "addressBytes":[B
    .end local v2    # "e":Ljava/net/UnknownHostException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/netlink/StructNdOptPref64;->length:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Landroid/net/netlink/StructNdOptPref64;->type:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getScaledLifetimePlc(II)S
    .locals 2
    .param p0, "lifetime"    # I
    .param p1, "prefixLengthCode"    # I

    .line 91
    const v0, 0xfff8

    and-int/2addr v0, p0

    and-int/lit8 v1, p1, 0x7

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdOptPref64;
    .locals 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .line 138
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/netlink/StructNdOptPref64;

    invoke-direct {v1, p0}, Landroid/net/netlink/StructNdOptPref64;-><init>(Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 141
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Landroid/net/netlink/StructNdOptPref64;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid PREF64 option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-object v0

    .line 138
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :goto_0
    return-object v0
.end method

.method static plcToPrefixLength(I)I
    .locals 3
    .param p0, "plc"    # I

    .line 62
    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 68
    const/16 v0, 0x20

    return v0

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid prefix length code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    const/16 v0, 0x28

    return v0

    .line 66
    :cond_2
    const/16 v0, 0x30

    return v0

    .line 65
    :cond_3
    const/16 v0, 0x38

    return v0

    .line 64
    :cond_4
    const/16 v0, 0x40

    return v0

    .line 63
    :cond_5
    const/16 v0, 0x60

    return v0
.end method

.method static prefixLengthToPlc(I)I
    .locals 3
    .param p0, "prefixLength"    # I

    .line 75
    const/16 v0, 0x20

    if-eq p0, v0, :cond_5

    const/16 v0, 0x28

    if-eq p0, v0, :cond_4

    const/16 v0, 0x30

    if-eq p0, v0, :cond_3

    const/16 v0, 0x38

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x60

    if-ne p0, v0, :cond_0

    .line 76
    const/4 v0, 0x0

    return v0

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid prefix length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    const/4 v0, 0x1

    return v0

    .line 78
    :cond_2
    const/4 v0, 0x2

    return v0

    .line 79
    :cond_3
    const/4 v0, 0x3

    return v0

    .line 80
    :cond_4
    const/4 v0, 0x4

    return v0

    .line 81
    :cond_5
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 158
    const/16 v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 159
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v0}, Landroid/net/netlink/StructNdOptPref64;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 160
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 161
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/netlink/StructNdOptPref64;->prefix:Landroid/net/IpPrefix;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/netlink/StructNdOptPref64;->lifetime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "NdOptPref64(%s, %d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected writeToByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 151
    invoke-super {p0, p1}, Landroid/net/netlink/NdOption;->writeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 152
    iget v0, p0, Landroid/net/netlink/StructNdOptPref64;->lifetime:I

    iget-object v1, p0, Landroid/net/netlink/StructNdOptPref64;->prefix:Landroid/net/IpPrefix;

    invoke-virtual {v1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v1

    invoke-static {v1}, Landroid/net/netlink/StructNdOptPref64;->prefixLengthToPlc(I)I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/netlink/StructNdOptPref64;->getScaledLifetimePlc(II)S

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 153
    iget-object v0, p0, Landroid/net/netlink/StructNdOptPref64;->prefix:Landroid/net/IpPrefix;

    invoke-virtual {v0}, Landroid/net/IpPrefix;->getRawAddress()[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 154
    return-void
.end method
