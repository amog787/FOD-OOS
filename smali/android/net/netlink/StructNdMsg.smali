.class public Landroid/net/netlink/StructNdMsg;
.super Ljava/lang/Object;
.source "StructNdMsg.java"


# static fields
.field public static NTF_MASTER:B = 0x0t

.field public static NTF_PROXY:B = 0x0t

.field public static NTF_ROUTER:B = 0x0t

.field public static NTF_SELF:B = 0x0t

.field public static NTF_USE:B = 0x0t

.field public static final NUD_DELAY:S = 0x8s

.field public static final NUD_FAILED:S = 0x20s

.field public static final NUD_INCOMPLETE:S = 0x1s

.field public static final NUD_NOARP:S = 0x40s

.field public static final NUD_NONE:S = 0x0s

.field public static final NUD_PERMANENT:S = 0x80s

.field public static final NUD_PROBE:S = 0x10s

.field public static final NUD_REACHABLE:S = 0x2s

.field public static final NUD_STALE:S = 0x4s

.field public static final STRUCT_SIZE:I = 0xc


# instance fields
.field public ndm_family:B

.field public ndm_flags:B

.field public ndm_ifindex:I

.field public ndm_state:S

.field public ndm_type:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const/4 v0, 0x1

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    .line 73
    const/4 v0, 0x2

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    .line 74
    const/4 v0, 0x4

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    .line 75
    const/16 v0, 0x8

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    .line 76
    const/16 v0, -0x80

    sput-byte v0, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    sget v0, Landroid/system/OsConstants;->AF_UNSPEC:I

    int-to-byte v0, v0

    iput-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    .line 131
    return-void
.end method

.method private static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 103
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNudStateConnected(S)Z
    .locals 1
    .param p0, "nudState"    # S

    .line 63
    and-int/lit16 v0, p0, 0xc2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNudStateValid(S)Z
    .locals 1
    .param p0, "nudState"    # S

    .line 67
    invoke-static {p0}, Landroid/net/netlink/StructNdMsg;->isNudStateConnected(S)Z

    move-result v0

    if-nez v0, :cond_1

    and-int/lit8 v0, p0, 0x1c

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNdMsg;
    .locals 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 107
    invoke-static {p0}, Landroid/net/netlink/StructNdMsg;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 112
    :cond_0
    new-instance v0, Landroid/net/netlink/StructNdMsg;

    invoke-direct {v0}, Landroid/net/netlink/StructNdMsg;-><init>()V

    .line 113
    .local v0, "struct":Landroid/net/netlink/StructNdMsg;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    iput-byte v1, v0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    .line 114
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 115
    .local v1, "pad1":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    .line 116
    .local v2, "pad2":S
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    iput v3, v0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    .line 117
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput-short v3, v0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    .line 118
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    .line 119
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    .line 120
    return-object v0
.end method

.method public static stringForNudFlags(B)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # B

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_USE:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    .line 81
    const-string v1, "NTF_USE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    :cond_0
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_SELF:B

    and-int/2addr v1, p0

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    const-string v1, "NTF_SELF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_2
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_MASTER:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_3
    const-string v1, "NTF_MASTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_4
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_PROXY:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    :cond_5
    const-string v1, "NTF_PROXY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_6
    sget-byte v1, Landroid/net/netlink/StructNdMsg;->NTF_ROUTER:B

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    :cond_7
    const-string v1, "NTF_ROUTER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static stringForNudState(S)Ljava/lang/String;
    .locals 2
    .param p0, "nudState"    # S

    .line 47
    if-eqz p0, :cond_8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p0, v0, :cond_5

    const/16 v0, 0x8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x10

    if-eq p0, v0, :cond_3

    const/16 v0, 0x20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x40

    if-eq p0, v0, :cond_1

    const/16 v0, 0x80

    if-eq p0, v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown NUD state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    const-string v0, "NUD_PERMANENT"

    return-object v0

    .line 55
    :cond_1
    const-string v0, "NUD_NOARP"

    return-object v0

    .line 54
    :cond_2
    const-string v0, "NUD_FAILED"

    return-object v0

    .line 53
    :cond_3
    const-string v0, "NUD_PROBE"

    return-object v0

    .line 52
    :cond_4
    const-string v0, "NUD_DELAY"

    return-object v0

    .line 51
    :cond_5
    const-string v0, "NUD_STALE"

    return-object v0

    .line 50
    :cond_6
    const-string v0, "NUD_REACHABLE"

    return-object v0

    .line 49
    :cond_7
    const-string v0, "NUD_INCOMPLETE"

    return-object v0

    .line 48
    :cond_8
    const-string v0, "NUD_NONE"

    return-object v0
.end method


# virtual methods
.method public nudConnected()Z
    .locals 1

    .line 147
    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateConnected(S)Z

    move-result v0

    return v0
.end method

.method public nudValid()Z
    .locals 1

    .line 151
    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v0}, Landroid/net/netlink/StructNdMsg;->isNudStateValid(S)Z

    move-result v0

    return v0
.end method

.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 137
    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 138
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 139
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 140
    iget v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 141
    iget-short v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 142
    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 143
    iget-byte v0, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 144
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_state:S

    invoke-static {v3}, Landroid/net/netlink/StructNdMsg;->stringForNudState(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "stateStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Landroid/net/netlink/StructNdMsg;->ndm_flags:B

    invoke-static {v1}, Landroid/net/netlink/StructNdMsg;->stringForNudFlags(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "flagsStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StructNdMsg{ family{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_family:B

    .line 159
    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, ifindex{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_ifindex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, state{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, flags{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, type{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/net/netlink/StructNdMsg;->ndm_type:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 158
    return-object v2
.end method
