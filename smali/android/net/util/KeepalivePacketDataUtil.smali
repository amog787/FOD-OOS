.class public final Landroid/net/util/KeepalivePacketDataUtil;
.super Ljava/lang/Object;
.source "KeepalivePacketDataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;
    .locals 2
    .param p0, "pkt"    # Landroid/net/NattKeepalivePacketData;

    .line 31
    new-instance v0, Landroid/net/NattKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/NattKeepalivePacketDataParcelable;-><init>()V

    .line 33
    .local v0, "parcel":Landroid/net/NattKeepalivePacketDataParcelable;
    iget-object v1, p0, Landroid/net/NattKeepalivePacketData;->srcAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcAddress:[B

    .line 34
    iget v1, p0, Landroid/net/NattKeepalivePacketData;->srcPort:I

    iput v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcPort:I

    .line 35
    iget-object v1, p0, Landroid/net/NattKeepalivePacketData;->dstAddress:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v1

    iput-object v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstAddress:[B

    .line 36
    iget v1, p0, Landroid/net/NattKeepalivePacketData;->dstPort:I

    iput v1, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstPort:I

    .line 37
    return-object v0
.end method
