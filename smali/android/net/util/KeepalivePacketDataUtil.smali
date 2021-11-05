.class public final Landroid/net/util/KeepalivePacketDataUtil;
.super Ljava/lang/Object;
.source "KeepalivePacketDataUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toStableParcelable(Landroid/net/NattKeepalivePacketData;)Landroid/net/NattKeepalivePacketDataParcelable;
    .locals 4
    .param p0, "pkt"    # Landroid/net/NattKeepalivePacketData;

    .line 33
    new-instance v0, Landroid/net/NattKeepalivePacketDataParcelable;

    invoke-direct {v0}, Landroid/net/NattKeepalivePacketDataParcelable;-><init>()V

    .line 34
    .local v0, "parcel":Landroid/net/NattKeepalivePacketDataParcelable;
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 35
    .local v1, "srcAddress":Ljava/net/InetAddress;
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 36
    .local v2, "dstAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcAddress:[B

    .line 37
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getSrcPort()I

    move-result v3

    iput v3, v0, Landroid/net/NattKeepalivePacketDataParcelable;->srcPort:I

    .line 38
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    iput-object v3, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstAddress:[B

    .line 39
    invoke-virtual {p0}, Landroid/net/NattKeepalivePacketData;->getDstPort()I

    move-result v3

    iput v3, v0, Landroid/net/NattKeepalivePacketDataParcelable;->dstPort:I

    .line 40
    return-object v0
.end method
