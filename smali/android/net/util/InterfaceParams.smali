.class public Landroid/net/util/InterfaceParams;
.super Ljava/lang/Object;
.source "InterfaceParams.java"


# static fields
.field private static final ETHER_MTU:I = 0x5dc

.field private static final IPV6_MIN_MTU:I = 0x500


# instance fields
.field public final defaultMtu:I

.field public final hasMacAddress:Z

.field public final index:I

.field public final macAddr:Landroid/net/MacAddress;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILandroid/net/MacAddress;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "macAddr"    # Landroid/net/MacAddress;

    .line 63
    const/16 v0, 0x5dc

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "macAddr"    # Landroid/net/MacAddress;
    .param p4, "defaultMtu"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 71
    if-lez p2, :cond_3

    .line 73
    iput-object p1, p0, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    .line 74
    iput p2, p0, Landroid/net/util/InterfaceParams;->index:I

    .line 75
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/net/util/InterfaceParams;->hasMacAddress:Z

    .line 76
    if-eqz v0, :cond_1

    move-object v0, p3

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    .line 78
    const/16 v0, 0x500

    if-le p4, v0, :cond_2

    move v0, p4

    :cond_2
    iput v0, p0, Landroid/net/util/InterfaceParams;->defaultMtu:I

    .line 79
    return-void

    .line 71
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid interface index"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "impossible interface name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :array_0
    .array-data 1
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public static getByName(Ljava/lang/String;)Landroid/net/util/InterfaceParams;
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .line 49
    invoke-static {p0}, Landroid/net/util/InterfaceParams;->getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    .line 50
    .local v0, "netif":Ljava/net/NetworkInterface;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 53
    :cond_0
    invoke-static {v0}, Landroid/net/util/InterfaceParams;->getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;

    move-result-object v2

    .line 56
    .local v2, "macAddr":Landroid/net/MacAddress;
    :try_start_0
    new-instance v3, Landroid/net/util/InterfaceParams;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getIndex()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getMTU()I

    move-result v5

    invoke-direct {v3, p0, v4, v2, v5}, Landroid/net/util/InterfaceParams;-><init>(Ljava/lang/String;ILandroid/net/MacAddress;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 57
    :catch_0
    move-exception v3

    .line 58
    .local v3, "e":Ljava/lang/Exception;
    return-object v1
.end method

.method private static getMacAddress(Ljava/net/NetworkInterface;)Landroid/net/MacAddress;
    .locals 2
    .param p0, "netif"    # Ljava/net/NetworkInterface;

    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    invoke-static {v0}, Landroid/net/MacAddress;->fromBytes([B)Landroid/net/MacAddress;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static getNetworkInterfaceByName(Ljava/lang/String;)Ljava/net/NetworkInterface;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 88
    :try_start_0
    invoke-static {p0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/util/InterfaceParams;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/util/InterfaceParams;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/util/InterfaceParams;->macAddr:Landroid/net/MacAddress;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/util/InterfaceParams;->defaultMtu:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%s/%d/%s/%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
