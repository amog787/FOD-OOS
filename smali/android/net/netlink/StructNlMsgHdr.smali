.class public Landroid/net/netlink/StructNlMsgHdr;
.super Ljava/lang/Object;
.source "StructNlMsgHdr.java"


# static fields
.field public static final NLM_F_ACK:S = 0x4s

.field public static final NLM_F_APPEND:S = 0x800s

.field public static final NLM_F_CREATE:S = 0x400s

.field public static final NLM_F_DUMP:S = 0x300s

.field public static final NLM_F_ECHO:S = 0x8s

.field public static final NLM_F_EXCL:S = 0x200s

.field public static final NLM_F_MATCH:S = 0x200s

.field public static final NLM_F_MULTI:S = 0x2s

.field public static final NLM_F_REPLACE:S = 0x100s

.field public static final NLM_F_REQUEST:S = 0x1s

.field public static final NLM_F_ROOT:S = 0x100s

.field public static final STRUCT_SIZE:I = 0x10


# instance fields
.field public nlmsg_flags:S

.field public nlmsg_len:I

.field public nlmsg_pid:I

.field public nlmsg_seq:I

.field public nlmsg_type:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 108
    iput-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 109
    iput-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 110
    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 111
    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .line 112
    return-void
.end method

.method public static hasAvailableSpace(Ljava/nio/ByteBuffer;)Z
    .locals 2
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 77
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;
    .locals 4
    .param p0, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 81
    invoke-static {p0}, Landroid/net/netlink/StructNlMsgHdr;->hasAvailableSpace(Ljava/nio/ByteBuffer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 86
    :cond_0
    new-instance v0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    .line 87
    .local v0, "struct":Landroid/net/netlink/StructNlMsgHdr;
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    .line 88
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 89
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput-short v2, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 90
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    .line 91
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    iput v2, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    .line 93
    iget v2, v0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 95
    return-object v1

    .line 97
    :cond_1
    return-object v0
.end method

.method public static stringForNlMsgFlags(S)Ljava/lang/String;
    .locals 3
    .param p0, "flags"    # S

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "NLM_F_REQUEST"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    :cond_0
    and-int/lit8 v1, p0, 0x2

    const-string/jumbo v2, "|"

    if-eqz v1, :cond_2

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_1
    const-string v1, "NLM_F_MULTI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_4

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    :cond_3
    const-string v1, "NLM_F_ACK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_4
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_6

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :cond_5
    const-string v1, "NLM_F_ECHO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    :cond_6
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_7
    const-string v1, "NLM_F_ROOT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_a

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_9

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_9
    const-string v1, "NLM_F_MATCH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 118
    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 119
    iget-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 120
    iget-short v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 121
    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 122
    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 123
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    .line 128
    invoke-static {v3}, Landroid/net/netlink/NetlinkConstants;->stringForNlMsgType(S)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "typeStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    .line 130
    invoke-static {v1}, Landroid/net/netlink/StructNlMsgHdr;->stringForNlMsgFlags(S)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "flagsStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StructNlMsgHdr{ nlmsg_len{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, nlmsg_type{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, nlmsg_flags{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")}, nlmsg_seq{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, nlmsg_pid{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "} }"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
