.class public Landroid/net/netlink/NetlinkErrorMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "NetlinkErrorMessage.java"


# instance fields
.field private mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;


# direct methods
.method constructor <init>(Landroid/net/netlink/StructNlMsgHdr;)V
    .locals 1
    .param p1, "header"    # Landroid/net/netlink/StructNlMsgHdr;

    .line 43
    invoke-direct {p0, p1}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    .line 45
    return-void
.end method

.method public static parse(Landroid/net/netlink/StructNlMsgHdr;Ljava/nio/ByteBuffer;)Landroid/net/netlink/NetlinkErrorMessage;
    .locals 2
    .param p0, "header"    # Landroid/net/netlink/StructNlMsgHdr;
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 30
    new-instance v0, Landroid/net/netlink/NetlinkErrorMessage;

    invoke-direct {v0, p0}, Landroid/net/netlink/NetlinkErrorMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    .line 32
    .local v0, "errorMsg":Landroid/net/netlink/NetlinkErrorMessage;
    invoke-static {p1}, Landroid/net/netlink/StructNlMsgErr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgErr;

    move-result-object v1

    iput-object v1, v0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    .line 33
    if-nez v1, :cond_0

    .line 34
    const/4 v1, 0x0

    return-object v1

    .line 37
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getNlMsgError()Landroid/net/netlink/StructNlMsgErr;
    .locals 1

    .line 48
    iget-object v0, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetlinkErrorMessage{ nlmsghdr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Landroid/net/netlink/NetlinkErrorMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const-string v2, ""

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/netlink/NetlinkErrorMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgHdr;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, nlmsgerr{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget-object v1, p0, Landroid/net/netlink/NetlinkErrorMessage;->mNlMsgErr:Landroid/net/netlink/StructNlMsgErr;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Landroid/net/netlink/StructNlMsgErr;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "} }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    return-object v0
.end method
