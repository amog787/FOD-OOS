.class public Landroid/net/netlink/StructInetDiagReqV2;
.super Ljava/lang/Object;
.source "StructInetDiagReqV2.java"


# static fields
.field public static final INET_DIAG_REQ_V2_ALL_STATES:I = -0x1

.field public static final STRUCT_SIZE:I = 0x38


# instance fields
.field private final mId:Landroid/net/netlink/StructInetDiagSockId;

.field private final mIdiagExt:B

.field private final mPad:B

.field private final mSdiagFamily:B

.field private final mSdiagProtocol:B

.field private final mState:I


# direct methods
.method public constructor <init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;I)V
    .locals 8
    .param p1, "protocol"    # I
    .param p2, "local"    # Ljava/net/InetSocketAddress;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .param p4, "family"    # I

    .line 53
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Landroid/net/netlink/StructInetDiagReqV2;-><init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IIII)V

    .line 55
    return-void
.end method

.method public constructor <init>(ILjava/net/InetSocketAddress;Ljava/net/InetSocketAddress;IIII)V
    .locals 3
    .param p1, "protocol"    # I
    .param p2, "local"    # Ljava/net/InetSocketAddress;
    .param p3, "remote"    # Ljava/net/InetSocketAddress;
    .param p4, "family"    # I
    .param p5, "pad"    # I
    .param p6, "extension"    # I
    .param p7, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    int-to-byte v0, p4

    iput-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagFamily:B

    .line 61
    int-to-byte v0, p1

    iput-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagProtocol:B

    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-ne v2, v0, :cond_3

    .line 67
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    new-instance v0, Landroid/net/netlink/StructInetDiagSockId;

    invoke-direct {v0, p2, p3}, Landroid/net/netlink/StructInetDiagSockId;-><init>(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-object v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mId:Landroid/net/netlink/StructInetDiagSockId;

    .line 68
    int-to-byte v0, p5

    iput-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mPad:B

    .line 69
    int-to-byte v0, p6

    iput-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mIdiagExt:B

    .line 70
    iput p7, p0, Landroid/net/netlink/StructInetDiagReqV2;->mState:I

    .line 71
    return-void

    .line 65
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Local and remote must be both null or both non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 75
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagFamily:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 76
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagProtocol:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mIdiagExt:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mPad:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 79
    iget v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mState:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mId:Landroid/net/netlink/StructInetDiagSockId;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructInetDiagSockId;->pack(Ljava/nio/ByteBuffer;)V

    .line 81
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 85
    iget-byte v0, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagFamily:B

    invoke-static {v0}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "familyStr":Ljava/lang/String;
    iget-byte v1, p0, Landroid/net/netlink/StructInetDiagReqV2;->mSdiagProtocol:B

    invoke-static {v1}, Landroid/net/netlink/NetlinkConstants;->stringForAddressFamily(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "protocolStr":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StructInetDiagReqV2{ sdiag_family{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, sdiag_protocol{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, idiag_ext{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/net/netlink/StructInetDiagReqV2;->mIdiagExt:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")}, pad{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Landroid/net/netlink/StructInetDiagReqV2;->mPad:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, idiag_states{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/net/netlink/StructInetDiagReqV2;->mState:I

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v3, p0, Landroid/net/netlink/StructInetDiagReqV2;->mId:Landroid/net/netlink/StructInetDiagSockId;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/netlink/StructInetDiagSockId;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, "inet_diag_sockid=null"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    return-object v2
.end method
