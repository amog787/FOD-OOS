.class public Landroid/net/netlink/NetlinkConstants;
.super Ljava/lang/Object;
.source "NetlinkConstants.java"


# static fields
.field private static final HEX_DIGITS:[C

.field public static final INET_DIAG_MEMINFO:I = 0x1

.field public static final NLA_ALIGNTO:I = 0x4

.field public static final NLMSG_DONE:S = 0x3s

.field public static final NLMSG_ERROR:S = 0x2s

.field public static final NLMSG_MAX_RESERVED:S = 0xfs

.field public static final NLMSG_NOOP:S = 0x1s

.field public static final NLMSG_OVERRUN:S = 0x4s

.field public static final RTMGRP_ND_USEROPT:I = 0x80000

.field public static final RTM_DELADDR:S = 0x15s

.field public static final RTM_DELLINK:S = 0x11s

.field public static final RTM_DELNEIGH:S = 0x1ds

.field public static final RTM_DELROUTE:S = 0x19s

.field public static final RTM_DELRULE:S = 0x21s

.field public static final RTM_GETADDR:S = 0x16s

.field public static final RTM_GETLINK:S = 0x12s

.field public static final RTM_GETNEIGH:S = 0x1es

.field public static final RTM_GETROUTE:S = 0x1as

.field public static final RTM_GETRULE:S = 0x22s

.field public static final RTM_NEWADDR:S = 0x14s

.field public static final RTM_NEWLINK:S = 0x10s

.field public static final RTM_NEWNDUSEROPT:S = 0x44s

.field public static final RTM_NEWNEIGH:S = 0x1cs

.field public static final RTM_NEWROUTE:S = 0x18s

.field public static final RTM_NEWRULE:S = 0x20s

.field public static final RTM_SETLINK:S = 0x13s

.field public static final RTNLGRP_ND_USEROPT:I = 0x14

.field public static final SOCKDIAG_MSG_HEADER_SIZE:I = 0x58

.field public static final SOCK_DIAG_BY_FAMILY:S = 0x14s


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 141
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/netlink/NetlinkConstants;->HEX_DIGITS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final alignedLengthOf(I)I
    .locals 1
    .param p0, "length"    # I

    .line 53
    if-gtz p0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 54
    :cond_0
    add-int/lit8 v0, p0, 0x4

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public static final alignedLengthOf(S)I
    .locals 2
    .param p0, "length"    # S

    .line 48
    const v0, 0xffff

    and-int/2addr v0, p0

    .line 49
    .local v0, "intLength":I
    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->alignedLengthOf(I)I

    move-result v1

    return v1
.end method

.method public static hexify(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .line 76
    if-nez p0, :cond_0

    const-string v0, "(null)"

    return-object v0

    .line 77
    :cond_0
    nop

    .line 78
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 77
    invoke-static {v0, v1, v2}, Landroid/net/netlink/NetlinkConstants;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hexify([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .line 71
    if-nez p0, :cond_0

    const-string v0, "(null)"

    return-object v0

    .line 72
    :cond_0
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/net/netlink/NetlinkConstants;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringForAddressFamily(I)Ljava/lang/String;
    .locals 1
    .param p0, "family"    # I

    .line 58
    sget v0, Landroid/system/OsConstants;->AF_INET:I

    if-ne p0, v0, :cond_0

    const-string v0, "AF_INET"

    return-object v0

    .line 59
    :cond_0
    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    if-ne p0, v0, :cond_1

    const-string v0, "AF_INET6"

    return-object v0

    .line 60
    :cond_1
    sget v0, Landroid/system/OsConstants;->AF_NETLINK:I

    if-ne p0, v0, :cond_2

    const-string v0, "AF_NETLINK"

    return-object v0

    .line 61
    :cond_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringForNlMsgType(S)Ljava/lang/String;
    .locals 2
    .param p0, "nlm_type"    # S

    .line 114
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x44

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    packed-switch p0, :pswitch_data_3

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown RTM type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :pswitch_0
    const-string v0, "RTM_GETRULE"

    return-object v0

    .line 133
    :pswitch_1
    const-string v0, "RTM_DELRULE"

    return-object v0

    .line 132
    :pswitch_2
    const-string v0, "RTM_NEWRULE"

    return-object v0

    .line 131
    :pswitch_3
    const-string v0, "RTM_GETNEIGH"

    return-object v0

    .line 130
    :pswitch_4
    const-string v0, "RTM_DELNEIGH"

    return-object v0

    .line 129
    :pswitch_5
    const-string v0, "RTM_NEWNEIGH"

    return-object v0

    .line 128
    :pswitch_6
    const-string v0, "RTM_GETROUTE"

    return-object v0

    .line 127
    :pswitch_7
    const-string v0, "RTM_DELROUTE"

    return-object v0

    .line 126
    :pswitch_8
    const-string v0, "RTM_NEWROUTE"

    return-object v0

    .line 125
    :pswitch_9
    const-string v0, "RTM_GETADDR"

    return-object v0

    .line 124
    :pswitch_a
    const-string v0, "RTM_DELADDR"

    return-object v0

    .line 123
    :pswitch_b
    const-string v0, "RTM_NEWADDR"

    return-object v0

    .line 122
    :pswitch_c
    const-string v0, "RTM_SETLINK"

    return-object v0

    .line 121
    :pswitch_d
    const-string v0, "RTM_GETLINK"

    return-object v0

    .line 120
    :pswitch_e
    const-string v0, "RTM_DELLINK"

    return-object v0

    .line 119
    :pswitch_f
    const-string v0, "RTM_NEWLINK"

    return-object v0

    .line 135
    :cond_0
    const-string v0, "RTM_NEWNDUSEROPT"

    return-object v0

    .line 118
    :cond_1
    const-string v0, "NLMSG_OVERRUN"

    return-object v0

    .line 117
    :cond_2
    const-string v0, "NLMSG_DONE"

    return-object v0

    .line 116
    :cond_3
    const-string v0, "NLMSG_ERROR"

    return-object v0

    .line 115
    :cond_4
    const-string v0, "NLMSG_NOOP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x18
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1c
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x20
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static stringForProtocol(I)Ljava/lang/String;
    .locals 1
    .param p0, "protocol"    # I

    .line 65
    sget v0, Landroid/system/OsConstants;->IPPROTO_TCP:I

    if-ne p0, v0, :cond_0

    const-string v0, "IPPROTO_TCP"

    return-object v0

    .line 66
    :cond_0
    sget v0, Landroid/system/OsConstants;->IPPROTO_UDP:I

    if-ne p0, v0, :cond_1

    const-string v0, "IPPROTO_UDP"

    return-object v0

    .line 67
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 7
    .param p0, "array"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .line 147
    mul-int/lit8 v0, p2, 0x2

    new-array v0, v0, [C

    .line 149
    .local v0, "buf":[C
    const/4 v1, 0x0

    .line 150
    .local v1, "bufIndex":I
    move v2, p1

    .local v2, "i":I
    :goto_0
    add-int v3, p1, p2

    if-ge v2, v3, :cond_0

    .line 151
    aget-byte v3, p0, v2

    .line 152
    .local v3, "b":B
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "bufIndex":I
    .local v4, "bufIndex":I
    sget-object v5, Landroid/net/netlink/NetlinkConstants;->HEX_DIGITS:[C

    ushr-int/lit8 v6, v3, 0x4

    and-int/lit8 v6, v6, 0xf

    aget-char v6, v5, v6

    aput-char v6, v0, v1

    .line 153
    add-int/lit8 v1, v4, 0x1

    .end local v4    # "bufIndex":I
    .restart local v1    # "bufIndex":I
    and-int/lit8 v6, v3, 0xf

    aget-char v5, v5, v6

    aput-char v5, v0, v4

    .line 150
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 156
    .end local v2    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    return-object v2
.end method
